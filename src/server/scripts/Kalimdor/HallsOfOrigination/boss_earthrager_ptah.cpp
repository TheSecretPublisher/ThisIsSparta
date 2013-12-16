/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
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

 /*
Author: dimiandre
 */

#include "ScriptPCH.h"
#include "WorldPacket.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "halls_of_origination.h"

#define SAY_AGGRO "More carrion for the swarm..."
#define SAY_DIED "Ptah... is... no more..."
#define SAY_SPELL "Dust to dust."

enum ptahCreatureIds
{
    MOB_HORROR                  = 40810,
    MOB_SCARAB                  = 40458,
};

enum Spells
{
    SPELL_FLAME_BOLT                              = 77370,
    SPELL_RAGING_SMASH                            = 83650,
    SPELL_EARTH_POINT                             = 75339,
    SPELL_DUST_MOVE                               = 75546,
    SPELL_VORTEX_DUST                             = 93570,
    SPELL_SUMMON_DUSTBONE_HORROR                  = 75521,
    SPELL_SUMMON_JEWELED_SCARAB                   = 75462,
};

enum Events
{
    EVENT_FLAME_BOLT = 1,
    EVENT_RAGING_SMASH,
    EVENT_EARTH_POINT,
    EVENT_PHASE_2,
};

enum actions
{
    ACTION_NONE,
    ACTION_START_COUNT,
};

enum SummonIds
{
    NPC_HORROR   = 40810,
    NPC_SCARAB   = 40458,
    NPC_SPIKE    = 44765,
    NPC_STORM    = 40406,
    NPC_QUICKSAND = 40503,
};

class boss_ptah : public CreatureScript
{
    public:
        boss_ptah() : CreatureScript("boss_ptah") {}

        struct boss_ptahAI : public ScriptedAI
        {
            boss_ptahAI(Creature* creature) : ScriptedAI(creature), Summons(me)
            {
                pInstance = creature->GetInstanceScript();
            }

            InstanceScript* pInstance;
            EventMap events;
            SummonList Summons;
            uint8 uiPhase;

            void EnterCombat(Unit * /*who*/)
            {
                sLog->outError(LOG_FILTER_GENERAL, "Dentro");
                uiPhase = 0;
                EnterPhaseGround();
                me->MonsterYell(SAY_AGGRO, 0, 0);
            }

            void Reset()
            {
                Summons.DespawnAll();
                uiPhase = 0;
            }

            void JustDied(Unit* /*killer*/)
            {
                me->MonsterYell(SAY_DIED, 0, 0);

                if (pInstance)
                {
                    pInstance->HandleGameObject(pInstance->GetData64(DATA_BOSS_DOOR), false, 0);  
                }
            }

            void JustSummoned(Creature *pSummoned)
            {
                pSummoned->SetInCombatWithZone();
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    pSummoned->AI()->AttackStart(pTarget);
                Summons.Summon(pSummoned);
            }

            void SummonedCreatureDespawn(Creature *summon)
            {
                Summons.Despawn(summon);
            }

            void EnterPhaseGround()
            {
                events.ScheduleEvent(EVENT_FLAME_BOLT, urand(15000, 25000));
                events.ScheduleEvent(EVENT_RAGING_SMASH, urand(4000, 10000));
                events.ScheduleEvent(EVENT_EARTH_POINT, 8000);
            }

            void EnterPhaseUnderground()
            {
                uiPhase++;
                events.CancelEvent(EVENT_FLAME_BOLT);
                events.CancelEvent(EVENT_RAGING_SMASH);
                events.CancelEvent(EVENT_EARTH_POINT);

                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                {
                    Position pos;
                    target->GetPosition(&pos);
                    me->SummonCreature(NPC_STORM, pos, TEMPSUMMON_MANUAL_DESPAWN, 0, 0);
                }

                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                {
                    Position pos;
                    target->GetPosition(&pos);
                    if (Creature* sand = me->SummonCreature(NPC_QUICKSAND, pos, TEMPSUMMON_MANUAL_DESPAWN, 0, 0))
                    {
                        sand->AttackStop();
                        sand->StopMoving();
                        sand->SetReactState(REACT_PASSIVE);
                        sand->CastSpell(sand, SPELL_DUST_MOVE, true);
                    }
                }

                // Summon two horrors
                for (int i = 0; i < 2; i++)
                    me->CastSpell(me, SPELL_SUMMON_DUSTBONE_HORROR, true);

                // Summon height scarabs
                for (int i = 0; i < 4; i++)
                    me->CastSpell(me, SPELL_SUMMON_JEWELED_SCARAB, true);

                // Set deathstate
                me->SetReactState(REACT_PASSIVE);
                me->AttackStop();
                me->StopMoving();

                events.ScheduleEvent(EVENT_PHASE_2, urand(10000, 20000));
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);
                
                if (uiPhase == 0 && me->HealthBelowPct(51))
                    EnterPhaseUnderground();
                
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_FLAME_BOLT:
                            me->CastSpell(me, SPELL_FLAME_BOLT, false);
                            events.ScheduleEvent(EVENT_FLAME_BOLT, urand(28000, 45000));
                            return;
                        case EVENT_RAGING_SMASH:
                            DoCast(me->getVictim(), SPELL_RAGING_SMASH);
                            events.ScheduleEvent(EVENT_RAGING_SMASH, urand(7000, 15000));
                            return;
                        case EVENT_EARTH_POINT:
                            me->MonsterYell(SAY_SPELL, LANG_UNIVERSAL, NULL);
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                            {
                                me->CastSpell(target, 94974, true);
                            }
                            events.ScheduleEvent(EVENT_EARTH_POINT, urand(8000, 20000));
                            break;
                        case EVENT_PHASE_2:
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                            me->SetReactState(REACT_AGGRESSIVE);
                            me->Attack(me->getVictim(), true);
                           
                            EnterPhaseGround();
                            break;
                        }
                }
                DoMeleeAttackIfReady();
            }
        };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_ptahAI(creature);
    }
};

enum spikevents
{
    EVENT_0,
    EVENT_SPIKE,
    EVENT_DESPAWN,
};

class npc_earth_spike : public CreatureScript
{
    public:
        npc_earth_spike() : CreatureScript("npc_earth_spike") {}

        struct npc_earth_spikeAI : public ScriptedAI
        {
            npc_earth_spikeAI(Creature* creature) : ScriptedAI(creature)
            { }
            
            EventMap events;


            void DoAction(int32 actionId)
            {
                switch (actionId)
                {
                    case ACTION_START_COUNT:
                        events.ScheduleEvent(EVENT_SPIKE, 4000);
                        break;
                }
            }

            void UpdateAI(uint32 diff)
            {
                events.Update(diff);
                
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_SPIKE:
                            me->CastSpell(me, 75339, true);
                            events.ScheduleEvent(EVENT_DESPAWN, 2500);
                            break;
                        case EVENT_DESPAWN:
                            me->DisappearAndDie();
                            break;
                    }
                }
            }

         };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_earth_spikeAI(creature);
    }
};
            
void AddSC_boss_ptah()
{
    new boss_ptah();
    new npc_earth_spike();
}