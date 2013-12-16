/*
 * Copyright (C) 2010 - 2012 ProjectSkyfire <http://www.projectskyfire.org/>
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

#include"ScriptPCH.h"
#include"WorldPacket.h"
#include"lost_city_of_the_tolvir.h"

enum Texts
{
    SAY_INTRO = 0,
    SAY_AGGRO = 1,
    SAY_EVENT_1 = 2,
    SAY_EVENT_2 = 2,
    SAY_EVENT_3 = 2,
    SAY_KILL = 3,
    SAY_DEATH = 4,
};

enum Spells 
{
    SPELL_DEFLECT_SHIELD                          = 84589,
    SPELL_STORM_BOLT                              = 73564,
    SPELL_ABSSORB_STORM                           = 83151,
    SPELL_SUMMON_CLOUD_BURST                      = 83790,

    // Ads
    SPELL_DEPLETION                               = 84550,
    SPELL_CHAIN_LIGHTNING                         = 83455,

    SPELL_LIGHTNING_NOVA                          = 84544,
    SPELL_THUNDER_CRASH                           = 84522,
    SPELL_LIGHTINING_CHARGE                       = 91871,

    SPELL_CLOUD_BURST_VISUAL                      = 83048,
    SPELL_CLOUD_BURST                             = 83051,
};

enum Events 
{
    EVENT_DEFLECT_SHIELD = 1,
    EVENT_STORM_BOLT,
    EVENT_ABSSORB_STORM,
    EVENT_SUMMON_CLOUD_BURST,
    EVENT_SUMMON_MINION,
    EVENT_SUMMON_SERVANT,
};

enum action
{
    ACTION_START_CAST = 1,
};

const Position SummonLocations[4] = 
{
    {-10929.73f, -1390.35f, 35.40f, 3.69f},
    {-10943.60f, -1378.61f, 35.40f, 4.55f}, 
    {-10963.89f, -1381.10f, 35.40f, 5.20f}, 
    {-10978.89f, -1404.78f, 35.22f, 6.22f},
};

class boss_siamat: public CreatureScript 
{
public:
    boss_siamat() : CreatureScript("boss_siamat") { }

    CreatureAI* GetAI(Creature* pCreature) const 
    {
        return new boss_siamatAI(pCreature);
    }

    struct boss_siamatAI: public BossAI 
    {
        boss_siamatAI(Creature* pCreature) : BossAI(pCreature, DATA_SIAMAT_EVENT), Summons(me)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;
        SummonList Summons;
        uint8 servantCount;
        uint8 servantDeaths;
        uint8 phase;

        void Reset() 
        {
            events.Reset();
            Summons.DespawnAll();
            servantCount = 0;
            servantDeaths = 0;
            phase = 1;

            if (pInstance)
                pInstance->SetData(DATA_SIAMAT_EVENT, NOT_STARTED);
        }

        void JustDied(Unit* /*Killer*/) 
        {
            Summons.DespawnAll();
            if (pInstance)
                pInstance->SetData(DATA_SIAMAT_EVENT, DONE);

				Talk(SAY_DEATH);
				
            if (me->GetMap()->IsHeroic())
                {
                   if (!me->GetMap()->GetPlayers().isEmpty())
                   {
                       for (Map::PlayerList::const_iterator i = me->GetMap()->GetPlayers().begin(); i != me->GetMap()->GetPlayers().end(); ++i)
                       {
                            if (!i->getSource())
                                continue;

                            i->getSource()->KilledMonsterCredit(51088);
                            i->getSource()->KilledMonsterCredit(51088);
                            i->getSource()->KilledMonsterCredit(51088);
                            i->getSource()->KilledMonsterCredit(51088);
                            i->getSource()->KilledMonsterCredit(51088);
                       }
                   }
                }
        }

        void JustSummoned(Creature* summoned)
        {
            Summons.Summon(summoned);

            switch (summoned->GetEntry())
            {
                case NPC_MINION_OF_SIAMAT:
					Talk(SAY_EVENT_1);
                    summoned->CastSpell(summoned, SPELL_DEPLETION, true);
                    break;
                case NPC_CLOUD_BURST:
                    summoned->CastSpell(summoned, SPELL_CLOUD_BURST_VISUAL, true);
                    summoned->AI()->DoAction(ACTION_START_CAST);
                    break;
            }
        }

        void SummonedCreatureDespawn(Creature* despawned)
        {
            if (despawned->GetEntry() == NPC_SERVANT_OF_SIAMAT)
            {
                ++servantDeaths;
                
                // Begin Phase 2
                if (servantDeaths == 3 && phase == 1)
                {
                    ++phase;
                    me->RemoveAura(SPELL_DEFLECT_SHIELD);
                    events.ScheduleEvent(EVENT_ABSSORB_STORM, urand(6000, 10000));
                }
            }
        }

        void EnterCombat(Unit* /*who*/) 
        {
            if (pInstance)
                pInstance->SetData(DATA_SIAMAT_EVENT, IN_PROGRESS);

            Talk(SAY_INTRO);
            Talk(SAY_AGGRO);

            if (pInstance->GetData(DATA_HIGH_PROPHET_BARIM_EVENT) != DONE)
            {
                me->MonsterYell("Cercate di non abusare di bug, grazie.", LANG_UNIVERSAL, 0);
                instance->DoCastSpellOnPlayers(45917); // sadistic kill
            }
            events.ScheduleEvent(EVENT_DEFLECT_SHIELD, 1000);
            events.ScheduleEvent(EVENT_STORM_BOLT, urand(3000, 4000));
            events.ScheduleEvent(EVENT_SUMMON_CLOUD_BURST, urand(8000, 15000));
            events.ScheduleEvent(EVENT_SUMMON_SERVANT, urand(2000, 4000));
            events.ScheduleEvent(EVENT_SUMMON_MINION, urand(5000, 8000));
            DoZoneInCombat();
        }

		void KilledUnit(Unit* /*victim*/)
        {
            Talk(SAY_KILL);
        }

        void UpdateAI( uint32 uiDiff) 
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent()) 
            {
                switch (eventId) 
                {
                    case EVENT_DEFLECT_SHIELD:
                        me->CastSpell(me, SPELL_DEFLECT_SHIELD, true);
                        break;
                    case EVENT_SUMMON_CLOUD_BURST:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0))
                            DoCast(target, SPELL_SUMMON_CLOUD_BURST);
                        events.ScheduleEvent(EVENT_SUMMON_CLOUD_BURST, urand(8000, 15000));
                        break;
                    case EVENT_SUMMON_SERVANT:
                        ++servantCount;
                        if (servantCount <= 3)
                        {
                            if (Creature* servant = me->SummonCreature(NPC_SERVANT_OF_SIAMAT, SummonLocations[servantCount], TEMPSUMMON_CORPSE_DESPAWN))
                            {
								Talk(SAY_EVENT_3);
                                servant->AddThreat(servant, 10.0f);
                                DoZoneInCombat(servant);
                            }
                        } else
                            servantCount = 0;

                        events.ScheduleEvent(EVENT_SUMMON_SERVANT, urand(20000, 30000));
                        break;
                    case EVENT_SUMMON_MINION:
                        if (Creature* minion = me->SummonCreature(NPC_MINION_OF_SIAMAT, SummonLocations[urand(0, 3)], TEMPSUMMON_CORPSE_DESPAWN))
                        {
                            minion->AddThreat(minion, 10.0f);
                            DoZoneInCombat(minion);
                        }
                        events.ScheduleEvent(EVENT_SUMMON_MINION, urand(10000, 15000));
                        break;
                    case EVENT_STORM_BOLT:
                        DoCastVictim(SPELL_STORM_BOLT);
                        events.ScheduleEvent(EVENT_STORM_BOLT, urand(3000, 4000));
                        break;
                    case EVENT_ABSSORB_STORM:
                        me->AddAura(SPELL_ABSSORB_STORM, me);
                        if (Creature* sacrificed = me->FindNearestCreature(NPC_MINION_OF_SIAMAT, 50.0f, true))
                            me->Kill(sacrificed);
                        
                        events.ScheduleEvent(EVENT_ABSSORB_STORM, urand(6000, 10000));
                        break;
                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

enum cludEvent
{
    EVENT_KNOCK = 1,
    EVENT_DIE,
};

class npc_cloud_storm: public CreatureScript 
{
public:
    npc_cloud_storm() : CreatureScript("npc_cloud_storm") { }

    CreatureAI* GetAI(Creature* pCreature) const 
    {
        return new npc_cloud_stormAI(pCreature);
    }
    struct npc_cloud_stormAI: public ScriptedAI 
    {
        npc_cloud_stormAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        void EnterCombat(Unit* /*who*/) 
        {
        }

        void DoAction( int32 actionId)
        {
            switch (actionId)
            {
                case ACTION_START_CAST:
                    events.ScheduleEvent(EVENT_KNOCK, 3000, 0, 0);
                    break;
            }
        }

        void UpdateAI( uint32 uiDiff) 
        {
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent()) 
            {
                switch (eventId) 
                {
                    case EVENT_KNOCK:
                        me->CastSpell(me, SPELL_CLOUD_BURST, true);
                        events.ScheduleEvent(EVENT_DIE, 3000);
                        break;
                    case EVENT_DIE:
                        me->DisappearAndDie();
                        break;
                }
            }
        }
    };
};

enum minionEvents
{
    EVENT_CHAIN = 1,
};

class npc_minion_of_siamat: public CreatureScript 
{
public:
    npc_minion_of_siamat() : CreatureScript("npc_minion_of_siamat") { }

    CreatureAI* GetAI(Creature* pCreature) const 
    {
        return new npc_minion_of_siamatAI(pCreature);
    }
    struct npc_minion_of_siamatAI: public ScriptedAI 
    {
        npc_minion_of_siamatAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
        }

        void EnterCombat(Unit* /*who*/) 
        {
            events.ScheduleEvent(EVENT_CHAIN, 3000);
        }

        void UpdateAI( uint32 uiDiff) 
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent()) 
            {
                switch (eventId) 
                {
                    case EVENT_CHAIN:
                        me->CastSpell(me->getVictim(), SPELL_CHAIN_LIGHTNING, true);
                        events.ScheduleEvent(EVENT_CHAIN, 3000);
                        break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};


enum servantEvents
{
    EVENT_LIGHTNING_NOVA = 1,
    EVENT_THUNDER_CRASH,
};

class npc_servant_of_siamat: public CreatureScript 
{
public:
    npc_servant_of_siamat() : CreatureScript("npc_servant_of_siamat") { }

    CreatureAI* GetAI(Creature* pCreature) const 
    {
        return new nnpc_servant_of_siamatAI(pCreature);
    }
    struct nnpc_servant_of_siamatAI: public ScriptedAI 
    {
        nnpc_servant_of_siamatAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
        }

        void EnterCombat(Unit* /*who*/) 
        {
            events.ScheduleEvent(EVENT_LIGHTNING_NOVA, urand(3000, 7000));
            events.ScheduleEvent(EVENT_THUNDER_CRASH, urand(3000, 10000));
        }

        void UpdateAI( uint32 uiDiff) 
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent()) 
            {
                switch (eventId) 
                {
                    case EVENT_LIGHTNING_NOVA:
                        me->CastSpell(me->getVictim(), SPELL_LIGHTNING_NOVA, true);
                        events.ScheduleEvent(EVENT_CHAIN, urand(3000, 9000));
                        break;
                    case EVENT_THUNDER_CRASH:
                        me->CastSpell(me->getVictim(), SPELL_THUNDER_CRASH, true);
                        events.ScheduleEvent(EVENT_THUNDER_CRASH, urand(3000, 10000));
                        break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_siamat() 
{
    new boss_siamat();
    new npc_cloud_storm();
    new npc_minion_of_siamat();
    new npc_servant_of_siamat();
}
