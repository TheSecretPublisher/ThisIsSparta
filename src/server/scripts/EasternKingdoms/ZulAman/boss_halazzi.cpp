/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
SDName: boss_Halazzi
SD%Complete: 80
SDComment:
SDCategory: Zul'Aman
EndScriptData */

#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "zulaman.h"
#include "SpellInfo.h"

#define YELL_AGGRO "Get on your knees and bow to da fang and claw!"
#define SOUND_AGGRO                    12020
#define YELL_SABER_ONE "You gonna leave in pieces!"
#define YELL_SABER_TWO "Me gonna carve ya now!"
#define YELL_SPLIT "Me gonna carve ya now!"
#define SOUND_SPLIT                    12021
#define YELL_MERGE "Spirit, come back to me!"
#define SOUND_MERGE                    12022
#define YELL_KILL_ONE "You cant fight the power!"
#define SOUND_KILL_ONE                12026
#define YELL_KILL_TWO "You gonna fail!"
#define SOUND_KILL_TWO                12027
#define YELL_DEATH "Chaga... choka'jinn."
#define SOUND_DEATH                    12028
#define YELL_BERSERK "Whatch you be doing? Pissin' yourselves..."
#define SOUND_BERSERK                12025

enum Spells
{
    // Merge
    SPELL_ENRAGE                    = 43139,
    SPELL_WATER_TOTEM               = 97500,
    SPELL_REFRESHING_STREAM         = 97502,
    SPELL_HALAZZI_TRANSFORM         = 43271,

    //Split
    SPELL_SUMMON_LYNX               = 43143,
    SPELL_TRANSFIGURE               = 97484,
    SPELL_TRANSFIGURE_FORM          = 43573,
    SPELL_LIGHTNING_TOTEM           = 97492,
    SPELL_FLAME_SHOCK               = 97490,
    
    // Lynx
    SPELL_FIXATE                    = 78617,
    SPELL_SHRED_ARMOR               = 43243,
    SPELL_LYNX_FLURRY               = 43290,

    SPELL_BERSERK                   = 45078
};

enum Hal_CreatureIds
{
    NPC_WATER_TOTEM                 = 52755,
    NPC_SPIRIT_LYNX                 = 24143,
    NPC_LIGHTNING_TOTEM             = 24224
};

enum Events
{
    EVENT_ENRAGE = 1,
    EVENT_WATER_TOTEM,
    EVENT_SPLIT,
    EVENT_MERGE,
    EVENT_LIGHTNING_TOTEM,
    EVENT_FLAME_SHOCK,
    EVENT_FIXATE,
    EVENT_SHRED_ARMOR,
    EVENT_LYNX_FLURRY,
    EVENT_BERSERK
};

class boss_halazzi : public CreatureScript
{
    public:
        boss_halazzi() : CreatureScript("boss_halazzi") { }

        struct boss_halazziAI : public BossAI
        {
            boss_halazziAI(Creature* creature) : BossAI(creature, DATA_HALAZZIEVENT), summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            uint64 lynxGUID;
            int8 split;
            uint32 health;
            SummonList summons;

            void Reset()
            {
                events.Reset();
                _Reset();
                summons.DespawnAll();
                
                split = 0;
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();
                DoZoneInCombat();

                me->MonsterYell(YELL_AGGRO, LANG_UNIVERSAL, 0);
                DoPlaySoundToSet(me, SOUND_AGGRO);

                events.ScheduleEvent(EVENT_WATER_TOTEM, 10000);
                events.ScheduleEvent(EVENT_ENRAGE, 15000);
                events.ScheduleEvent(EVENT_BERSERK, 600000);
            }

            void JustSummoned(Creature* summon)
            {
                if(summon->GetEntry() == NPC_WATER_TOTEM)
                {
                    summon->SetReactState(REACT_PASSIVE);
                    summon->Attack(me->getVictim(), true);
                    summon->AttackStop();
                    summon->StopMoving();
                    summon->CastSpell(summon, SPELL_REFRESHING_STREAM, true);
                }

                if (summon->GetEntry() == NPC_SPIRIT_LYNX)
                {
                    lynxGUID = summon->GetGUID();
                    summon->SetReactState(REACT_AGGRESSIVE);
                }

                summons.Summon(summon);
            }

            void SummonedCreatureDespawn(Creature* summon)
            {
                if (summon->GetEntry() == NPC_SPIRIT_LYNX)
                    events.ScheduleEvent(EVENT_MERGE, 1);
            }

            void DamageTaken(Unit* who, uint32 &damage)
            {
                if (damage > 0)
                {
                    if (me->HasAura(SPELL_TRANSFIGURE_FORM) && me->HealthBelowPct(20))
                        events.ScheduleEvent(EVENT_MERGE, 1);

                    if (!me->HasAura(SPELL_TRANSFIGURE_FORM))
                    {
                        if (me->HealthBelowPct(60) && split == 0)
                        {
                            split++;
                            events.ScheduleEvent(EVENT_SPLIT, 1);
                        }

                        if (me->HealthBelowPct(30) && split == 1)
                        {
                            split++;
                            events.ScheduleEvent(EVENT_SPLIT, 1);
                        }
                    
                        if (me->HealthBelowPct(25))
                            events.ScheduleEvent(EVENT_LIGHTNING_TOTEM, urand (13000, 15000));
                    }
                }
            }

             void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_ENRAGE:
                            me->CastSpell(me, SPELL_ENRAGE, true);
                            events.ScheduleEvent(EVENT_ENRAGE, urand(18000, 20000));
                            break;
                        case EVENT_WATER_TOTEM:
                            me->CastSpell(me, SPELL_WATER_TOTEM, true);
                            events.ScheduleEvent(EVENT_WATER_TOTEM, urand(15000, 17000));
                            break;
                        case EVENT_SPLIT:
                            me->RemoveAura(SPELL_HALAZZI_TRANSFORM);
                            me->CastSpell(me, SPELL_TRANSFIGURE, true);
                            me->CastSpell(me, SPELL_TRANSFIGURE_FORM, true);
                            me->CastSpell(me, SPELL_SUMMON_LYNX, true);
                            me->SetMaxHealth(2074850);

                            events.ScheduleEvent(EVENT_LIGHTNING_TOTEM, urand (13000, 15000));
                            events.ScheduleEvent(EVENT_FLAME_SHOCK, 10000);

                            events.CancelEvent(EVENT_ENRAGE);
                            events.CancelEvent(EVENT_WATER_TOTEM);
                            break;
                        case EVENT_LIGHTNING_TOTEM:
                            me->CastSpell(me, SPELL_LIGHTNING_TOTEM, false);
                            events.ScheduleEvent(EVENT_LIGHTNING_TOTEM, urand(10000, 15000));
                            break;
                        case EVENT_FLAME_SHOCK:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                me->CastSpell(target, SPELL_FLAME_SHOCK, false);
                            events.ScheduleEvent(EVENT_FLAME_SHOCK, 3000);
                            break;
                        case EVENT_MERGE:
                            me->RemoveAura(SPELL_TRANSFIGURE_FORM);
                            me->CastSpell(me, SPELL_HALAZZI_TRANSFORM, true);
                            me->SetMaxHealth(4149700);

                            if(Creature* lynx = me->GetCreature(*me, lynxGUID))
                                lynx->DespawnOrUnsummon();

                            if(split == 1)
                                health = me->CountPctFromMaxHealth(60);
                            else
                                health = me->CountPctFromMaxHealth(30);
                            me->SetHealth(health);

                            events.RescheduleEvent(EVENT_WATER_TOTEM, 10000);
                            events.RescheduleEvent(EVENT_ENRAGE, 15000);
                            
                            events.CancelEvent(EVENT_LIGHTNING_TOTEM);
                            events.CancelEvent(EVENT_FLAME_SHOCK);
                            break;
                        case EVENT_BERSERK:
                            me->CastSpell(me, SPELL_BERSERK, true);
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

            void KilledUnit(Unit* /*victim*/)
            {
                switch (urand(0, 1))
                {
                    case 0:
                        me->MonsterYell(YELL_KILL_ONE, LANG_UNIVERSAL, 0);
                        DoPlaySoundToSet(me, SOUND_KILL_ONE);
                        break;

                    case 1:
                        me->MonsterYell(YELL_KILL_TWO, LANG_UNIVERSAL, 0);
                        DoPlaySoundToSet(me, SOUND_KILL_TWO);
                        break;
                }
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();

                me->MonsterYell(YELL_DEATH, LANG_UNIVERSAL, 0);
                DoPlaySoundToSet(me, SOUND_DEATH);
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_halazziAI(creature);
        }
};

// Spirits Lynx
class mob_halazzi_lynx : public CreatureScript
{
    public:
        mob_halazzi_lynx() : CreatureScript("mob_halazzi_lynx") { }

        struct mob_halazzi_lynxAI : public ScriptedAI
        {
            mob_halazzi_lynxAI(Creature* creature) : ScriptedAI(creature) 
            {
				pInstance = (InstanceScript*)creature->GetInstanceScript();
			}

            InstanceScript* pInstance;
            EventMap events;

            void Reset()
            {
                events.Reset();
            }

            void DamageTaken(Unit* /*done_by*/, uint32 &damage)
            {
                if (damage > 0 && me->HealthBelowPct(20))
                    me->DespawnOrUnsummon();
            }

            void EnterCombat(Unit* /*who*/) 
            {
                DoZoneInCombat();

                events.ScheduleEvent(EVENT_FIXATE, 1);
                events.ScheduleEvent(EVENT_SHRED_ARMOR, 4000);
                events.ScheduleEvent(EVENT_LYNX_FLURRY, 7000);
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_FIXATE:
                            me->getVictim()->RemoveAura(SPELL_FIXATE);

                            if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            {
                                DoResetThreat();
                                me->CastSpell(target, SPELL_FIXATE, true); 
                            }
                            events.ScheduleEvent(EVENT_FIXATE, urand(5000, 10000));
                            break;
                        case EVENT_SHRED_ARMOR:
                            me->CastSpell(me->getVictim(), SPELL_SHRED_ARMOR, true);
                            events.ScheduleEvent(EVENT_SHRED_ARMOR, 4000);
                            break;
                        case EVENT_LYNX_FLURRY:
                            me->CastSpell(me, SPELL_LYNX_FLURRY, true);
                            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_SNARE, true);
                            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_ROOT, true);
                            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_FEAR, true);
                            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_STUN, true);
                            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_SLEEP, true);
                            events.ScheduleEvent(EVENT_LYNX_FLURRY, 18000);
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_halazzi_lynxAI(creature);
        }
};

void AddSC_boss_halazzi()
{
    new boss_halazzi();
    new mob_halazzi_lynx();
}


