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
SDName: Boss_Janalai
SD%Complete: 100
SDComment:
SDCategory: Zul'Aman
EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "zulaman.h"
#include "GridNotifiers.h"
#include "CellImpl.h"

enum eEnums
{
    SAY_AGGRO                   = 0,
    SAY_FIRE_BOMBS              = 1,
    SAY_SUMMON_HATCHER          = 2,
    SAY_ALL_EGGS                = 3,
    SAY_BERSERK                 = 4,
    SAY_SLAY                    = 5,
    SAY_DEATH                   = 6,

// Jan'alai
    SPELL_SUMMON_FLAME_BREATH   = 80405,
    SPELL_FLAME_BREATH          = 102135,
    SPELL_FLAME_BREATH_GROUND   = 97497,
    SPELL_FIRE_WALL             = 43113,
    SPELL_FRENZY                = 44779,
    SPELL_TELE_TO_CENTER        = 43098, // coord
    SPELL_HATCH_ALL             = 43144,
    SPELL_BERSERK               = 45078,

// -- Fire Bob Spells
    SPELL_FIRE_BOMB_CHANNEL     = 42621, // last forever
    SPELL_FIRE_BOMB_THROW       = 42628, // throw visual
    SPELL_FIRE_BOMB_DUMMY       = 42629, // bomb visual
    SPELL_FIRE_BOMB_DAMAGE      = 42630,

// --Summons
    NPC_FLAME_BREATH            = 43037,
    NPC_AMANI_HATCHER           = 23818,
    NPC_HATCHLING               = 23598,   // 42493
    NPC_EGG                     = 23817,
    NPC_FIRE_BOMB               = 23920,

// -- Hatcher Spells
    SPELL_HATCH_EGG             = 42471,   // 43734
    SPELL_SUMMON_HATCHLING      = 42493,

// -- Hatchling Spells
    SPELL_FLAME_BUFFET           = 43299
};

enum Events
{
    EVENT_FLAME_BREATH = 1,
    EVENT_SUMMON_FLAME_BREATH,
    EVENT_HATCHER,
    EVENT_FIRE_BOMB,
    EVENT_FIRE_BOMB_SUMMON,
    EVENT_FIRE_BOMB_SUMMON_STOP,
    EVENT_FIRE_BOMB_EXPLOSION,
    EVENT_BERSERK,

    EVENT_HATCHER_MOVEMENT,
    EVENT_HATCHER_EGGS,

    EVENT_FLAME_BUFFET,
};

const int area_dx = 44;
const int area_dy = 51;

float JanalaiPos[1][3] =
{
    {-33.93f, 1149.27f, 19}
};

float FireWallCoords[4][4] =
{
    {-10.13f, 1149.27f, 19, 3.1415f},
    {-33.93f, 1123.90f, 19, 0.5f*3.1415f},
    {-54.80f, 1150.08f, 19, 0},
    {-33.93f, 1175.68f, 19, 1.5f*3.1415f}
};

float hatcherway[2][5][3] =
{
    {
        {-87.46f, 1170.09f, 6},
        {-74.41f, 1154.75f, 6},
        {-52.74f, 1153.32f, 19},
        {-33.37f, 1172.46f, 19},
        {-33.09f, 1203.87f, 19}
    },
    {
        {-86.57f, 1132.85f, 6},
        {-73.94f, 1146.00f, 6},
        {-52.29f, 1146.51f, 19},
        {-33.57f, 1125.72f, 19},
        {-34.29f, 1095.22f, 19}
    }
};
class boss_janalai : public CreatureScript
{
    public:
        boss_janalai() : CreatureScript("boss_janalai") { }

        struct boss_janalaiAI : public BossAI
        {
            boss_janalaiAI(Creature* creature) : BossAI(creature, DATA_JANALAIEVENT), summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;
            SummonList summons;

            float ownerOrientation;
            float dx, dy;
            int8 i;

            void Reset()
            {
                events.Reset();
                _Reset();

                summons.DespawnAll();

                std::list<Creature*> egg;
                me->GetCreatureListWithEntryInGrid(egg, NPC_EGG, 200.0f);
                for (std::list<Creature*>::iterator itr = egg.begin(); itr != egg.end(); ++itr)
                {
                    (*itr)->Respawn();
                }

                std::list<Creature*> hatchling;
                me->GetCreatureListWithEntryInGrid(hatchling, NPC_HATCHLING, 200.0f);
                for (std::list<Creature*>::iterator itr = hatchling.begin(); itr != hatchling.end(); ++itr)
                {
                    (*itr)->DespawnOrUnsummon();
                }
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();
                Talk(SAY_DEATH);
            }

            void KilledUnit(Unit* /*victim*/)
            {
                Talk(SAY_SLAY);
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();
                //DoZoneInCombat();
                Talk(SAY_AGGRO);

                events.ScheduleEvent(EVENT_FLAME_BREATH, urand(8000, 10000));
                events.ScheduleEvent(EVENT_HATCHER, 12000);
                events.ScheduleEvent(EVENT_FIRE_BOMB, 55000);
                events.ScheduleEvent(EVENT_BERSERK, 600000);
            }

             void DamageTaken(Unit* /*done_by*/, uint32 &damage)
            {
                if (damage > 0)
                {
                    if(me->HealthBelowPct(35))
                        me->CastSpell(me, SPELL_HATCH_ALL, true);

                    if(me->HealthBelowPct(20))
                        me->CastSpell(me, SPELL_FRENZY, true);
                }
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
                        case EVENT_FLAME_BREATH:
                        {
                            Position pos;

                            if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                me->CastSpell(target, SPELL_FLAME_BREATH, true);
                            ownerOrientation = me->GetOrientation();
                            me->GetPosition(&pos);

                            Creature* summon = me->SummonCreature(NPC_FLAME_BREATH, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), ownerOrientation, TEMPSUMMON_TIMED_DESPAWN, 3000);
                            if(summon)
                            {
                                summon->GetMotionMaster()->MovePoint(0, summon->GetPositionX() + 120 / 2 * cos(ownerOrientation), summon->GetPositionY() + 120 / 2 * sin(ownerOrientation), (summon->GetPositionZ() +2.0f));
                            }
                            events.ScheduleEvent(EVENT_FLAME_BREATH, urand(8000, 10000));
                            break;
                        }
                        case EVENT_HATCHER:
                            Talk(SAY_SUMMON_HATCHER);
                            me->SummonCreature(NPC_AMANI_HATCHER, hatcherway[0][0][0], hatcherway[0][0][1], hatcherway[0][0][2], 0, TEMPSUMMON_CORPSE_DESPAWN, 0);
                            me->SummonCreature(NPC_AMANI_HATCHER, hatcherway[1][0][0], hatcherway[1][0][1], hatcherway[1][0][2], 0, TEMPSUMMON_CORPSE_DESPAWN, 0);
                            break;
                        case EVENT_FIRE_BOMB:
                        {

                            for (uint8 j = 0; j < 4; j++)
                            {
                                Creature* fireWall = me->SummonCreature(NPC_FIRE_BOMB, FireWallCoords[j][0], FireWallCoords[j][1], FireWallCoords[j][2], FireWallCoords[j][3], TEMPSUMMON_TIMED_DESPAWN, 15000);
                                if(fireWall)
                                    fireWall->CastSpell(fireWall, SPELL_FIRE_WALL, true);
                            }
                            me->NearTeleportTo(JanalaiPos[0][0], JanalaiPos[0][1], JanalaiPos[0][2], false);
                            me->CastSpell(me, SPELL_TELE_TO_CENTER, true);
                            me->CastSpell(me, SPELL_FIRE_BOMB_CHANNEL, false);
                            Talk(SAY_FIRE_BOMBS);

                            events.CancelEvent(EVENT_FLAME_BREATH);
                            events.ScheduleEvent(EVENT_FIRE_BOMB_SUMMON, 50);
                            events.ScheduleEvent(EVENT_FIRE_BOMB_SUMMON_STOP, 5000);
                            events.ScheduleEvent(EVENT_FIRE_BOMB_EXPLOSION, 10000);
                            break;
                        }
                        case EVENT_FIRE_BOMB_SUMMON:
                            if(i < 20)
                            {
                                dx = float(irand(-area_dx/2, area_dx/2));
                                dy = float(irand(-area_dy/2, area_dy/2));

                                Creature* bomb = DoSpawnCreature(NPC_FIRE_BOMB, dx, dy, 0, 0, TEMPSUMMON_TIMED_DESPAWN, 15000);
                                if (bomb)
                                    me->CastSpell(bomb, SPELL_FIRE_BOMB_THROW, false);
                                i++;
                            }
                            events.ScheduleEvent(EVENT_FIRE_BOMB_SUMMON, 10);
                            break;
                        case EVENT_FIRE_BOMB_SUMMON_STOP:
                            me->RemoveAurasDueToSpell(SPELL_FIRE_BOMB_CHANNEL);
                            i = 0;

                            events.CancelEvent(EVENT_FIRE_BOMB_SUMMON);
                            break;
                        case EVENT_FIRE_BOMB_EXPLOSION:
                        {
                            // Select Fire Bombs Triggers
                            std::list<Creature*> fireBomb;
                            me->GetCreatureListWithEntryInGrid(fireBomb, NPC_FIRE_BOMB, 200.0f);
                            for (std::list<Creature*>::iterator itr = fireBomb.begin(); itr != fireBomb.end(); ++itr)
                            {
                                (*itr)->CastSpell(*itr, SPELL_FIRE_BOMB_DAMAGE, false);
                                (*itr)->RemoveAura(SPELL_FIRE_BOMB_DUMMY);
                            }
                            
                            events.ScheduleEvent(EVENT_FIRE_BOMB, 30000);
                            events.RescheduleEvent(EVENT_FLAME_BREATH, urand(8000, 10000));
                            break;
                        }
                        case EVENT_BERSERK:
                            Talk(SAY_BERSERK);
                            me->CastSpell(me, SPELL_BERSERK, true);
                            break;
                    } 
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_janalaiAI(creature);
        }
};

class npc_flame_breath : public CreatureScript
{
    public:
        npc_flame_breath() : CreatureScript("npc_flame_breath") { }

        struct npc_flame_breathAI : public ScriptedAI
        {
            npc_flame_breathAI(Creature* creature) : ScriptedAI(creature), summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;
            SummonList summons;

            float z;

            void Reset()
            {
                events.Reset();
                summons.DespawnAll();
            }

            void IsSummonedBy(Unit* summoner)
            {
                if(summoner->GetEntry() == NPC_JANALAI)
                {
                    z= summoner->GetPositionZ();
                    events.ScheduleEvent(EVENT_SUMMON_FLAME_BREATH, 1);
                }
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
                        case EVENT_SUMMON_FLAME_BREATH:
                        {
                            Position pos;
                            me->GetPosition(&pos);
                            Creature* flameBreath = me->SummonCreature(NPC_FLAME_BREATH, me->GetPositionX(), me->GetPositionY(), z, me->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 6000);
                            if(flameBreath)
                            {
                                flameBreath->SetReactState(REACT_PASSIVE);
                                flameBreath->Attack(me->getVictim(), true);
                                flameBreath->AttackStop();
                                flameBreath->StopMoving();
                                flameBreath->CastSpell(flameBreath, SPELL_FLAME_BREATH_GROUND, true);
                            }
                            events.ScheduleEvent(EVENT_SUMMON_FLAME_BREATH, 500); 
                            break;
                        }
                    }
                }
            }

        
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_flame_breathAI(creature);
        }
};

class mob_janalai_firebomb : public CreatureScript
{
    public:
        mob_janalai_firebomb() : CreatureScript("mob_janalai_firebomb") { }

        struct mob_janalai_firebombAI : public ScriptedAI
        {
            mob_janalai_firebombAI(Creature* creature) : ScriptedAI(creature){}

            void Reset() {}

            void SpellHit(Unit* /*caster*/, const SpellInfo* spell)
            {
                if (spell->Id == SPELL_FIRE_BOMB_THROW)
                    DoCast(me, SPELL_FIRE_BOMB_DUMMY, true);
            }

            void EnterCombat(Unit* /*who*/) {}

            void AttackStart(Unit* /*who*/) {}

            void MoveInLineOfSight(Unit* /*who*/) {}

            void UpdateAI(uint32 /*diff*/) {}
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_janalai_firebombAI(creature);
        }
};

class mob_janalai_hatcher : public CreatureScript
{
    public:
        mob_janalai_hatcher() : CreatureScript("mob_janalai_hatcher") { }

        struct mob_janalai_hatcherAI : public ScriptedAI
        {
            mob_janalai_hatcherAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            uint32 waypoint;
            uint32 HatchNum;
            uint32 WaitTimer;

            bool side;;
            bool isHatching;

            void Reset()
            {
                side =(me->GetPositionY() < 1150);
                waypoint = 0;
                isHatching = false;
                WaitTimer = 1;
                HatchNum = 0;
            }

            void MovementInform(uint32, uint32)
            {
                if (waypoint == 5)
                {
                    isHatching = true;
                    events.ScheduleEvent(EVENT_HATCHER_EGGS, 1);
                }
                else
                    WaitTimer = 1;
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (!isHatching)
                {
                    if (WaitTimer)
                    {
                        me->GetMotionMaster()->Clear();
                        me->GetMotionMaster()->MovePoint(0, hatcherway[side][waypoint][0], hatcherway[side][waypoint][1], hatcherway[side][waypoint][2]);
                        ++waypoint;
                        WaitTimer = 0;
                    }
                }
                else WaitTimer -= diff;
                
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_HATCHER_EGGS:
                            if(HatchNum < 6)
                            {
                                std::list<Creature*> egg;
                                GetCreatureListWithEntryInGrid(egg, me, NPC_EGG, 200.0f);
                            
                                for (std::list<Creature*>::iterator itr = egg.begin(); itr != egg.end(); ++itr)
                                {
                                    me->CastSpell((*itr), SPELL_HATCH_EGG, false);
                                    
                                }
                                HatchNum++;
                                events.ScheduleEvent(EVENT_HATCHER_EGGS, 4000);
                            
                            }
                            else
                            {
                                // ToDo: Hatcher must attack the party when he finishes to summon Hatchlings
                                me->DespawnOrUnsummon();
                            }
                            break;
                    }
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_janalai_hatcherAI(creature);
        }
};

class mob_janalai_hatchling : public CreatureScript
{
    public:
        mob_janalai_hatchling() : CreatureScript("mob_janalai_hatchling") { }

        struct mob_janalai_hatchlingAI : public ScriptedAI
        {
            mob_janalai_hatchlingAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void Reset()
            {
                me->SetUnitMovementFlags(MOVEMENTFLAG_DISABLE_GRAVITY);
            }

            void IsSummonedBy(Unit* summoner)
            {
                if(me->GetEntry() == NPC_HATCHLING)
                {
                    if (me->GetPositionY() > 1150)
                        me->GetMotionMaster()->MovePoint(0, hatcherway[0][3][0]+rand()%4-2, 1150.0f+rand()%4-2, hatcherway[0][3][2]);
                    else
                        me->GetMotionMaster()->MovePoint(0, hatcherway[1][3][0]+rand()%4-2, 1150.0f+rand()%4-2, hatcherway[1][3][2]);
                }
            }

            void EnterCombat(Unit* /*who*/) 
            {
                events.ScheduleEvent(EVENT_FLAME_BUFFET, 10000);
            }

            void UpdateAI(uint32 diff)
            {

                if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_FLAME_BUFFET:
                            me->CastSpell(me->getVictim(), SPELL_FLAME_BUFFET, true);
                            events.ScheduleEvent(EVENT_FLAME_BUFFET, urand (10000, 15000));
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_janalai_hatchlingAI(creature);
        }
};

class mob_janalai_egg : public CreatureScript
{
    public:
        mob_janalai_egg(): CreatureScript("mob_janalai_egg") {}

        struct mob_janalai_eggAI : public ScriptedAI
        {
            mob_janalai_eggAI(Creature* creature) : ScriptedAI(creature) { }

            void Reset() {}

            void UpdateAI(uint32 /*diff*/) {}

            void SpellHit(Unit* /*caster*/, const SpellInfo* spell)
            {
                if (spell->Id == SPELL_HATCH_EGG || spell->Id == SPELL_HATCH_ALL)
                {
                    DoCast(SPELL_SUMMON_HATCHLING);
                    me->DespawnOrUnsummon();
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_janalai_eggAI(creature);
        }
};

void AddSC_boss_janalai()
{
    new boss_janalai();
    new npc_flame_breath();
    new mob_janalai_firebomb();
    new mob_janalai_hatcher();
    new mob_janalai_hatchling();
    new mob_janalai_egg();
}

