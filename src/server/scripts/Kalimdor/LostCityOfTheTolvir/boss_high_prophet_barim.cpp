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

enum Spells 
{
    SPELL_FIFTY_LASHING                           = 82506,
    SPELL_PLAGUE_OF_AGES                          = 82622,
    SPELL_REPENTANCE                              = 81947,
    SPELL_REPENTANCE_IMMUNE                       = 82320,
    SPELL_BLAZE_OF_HEAVENS                        = 95248, /* Blaze of Heavens ability */
    SPELL_SOUL_SEVER                              = 82255, /* Harbinger of Darkness ability */
    SPELL_HEAVENS_FURY                            = 81939,
    SPELL_HEAVENS_FURY_VISUAL                     = 81940,
    SPELL_HEAVENS_FURY_DMG                        = 81942,
    SPELL_HALLOWED_GROUND                         = 88814,
};

enum Events 
{
    EVENT_FIFTY_LASHING = 0,
    EVENT_PLAGUE_OF_AGES,
    EVENT_REPENTANCE,
    EVENT_BLAZE_OF_HEAVENS,
    EVENT_SOUL_SEVER,
    EVENT_HEAVENS_FURY,
    EVENT_HALLOWED_GROUND,
    EVENT_PHASE_1,
};

enum SummonIds
{
    NPC_BLAZE_OF_HEAVENS = 48906, 
    NPC_HARBINGER_OF_DARKNESS = 43927,
};

const Position SummonLocations[2] = 
{
    {-11009.54f, -1294.94f, 10.88f, 0.05f}, // Blaze of Heavens
    {-11015.45f, -1288.05f, 10.88f, 4.82f}, // Harbinger of Darkness
};

class boss_high_prophet_barim : public CreatureScript
{
public:
    boss_high_prophet_barim() : CreatureScript("boss_high_prophet_barim") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_high_prophet_barimAI (creature);
    }

    struct boss_high_prophet_barimAI : public BossAI
    {
        boss_high_prophet_barimAI(Creature* creature) : BossAI(creature, DATA_HIGH_PROPHET_BARIM_EVENT), summons(me)
        {
            pInstance = creature->GetInstanceScript();
        }

        InstanceScript *pInstance;
        SummonList summons;
        EventMap events;

        void Reset() 
        {
            events.Reset();
            summons.DespawnAll();

            if (pInstance)
                pInstance->SetData(DATA_HIGH_PROPHET_BARIM_EVENT, NOT_STARTED);
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();
            if (pInstance)
            {
                pInstance->SetData(DATA_HIGH_PROPHET_BARIM_EVENT, DONE);

                if (pInstance->GetData(DATA_LOCKMAW) == DONE)
                {
                    if (GameObject* platform = me->FindNearestGameObject(GO_SIAMAT_PLATFORM, 5000.0f))
                        platform->SetDestructibleState(GO_DESTRUCTIBLE_DESTROYED);
                }
            }
        }

        void EnterCombat(Unit* who) 
        {
            DoZoneInCombat();

            if (pInstance)
                pInstance->SetData(DATA_HIGH_PROPHET_BARIM_EVENT, IN_PROGRESS);

            events.ScheduleEvent(EVENT_FIFTY_LASHING, urand(10000, 15000));
            events.ScheduleEvent(EVENT_PLAGUE_OF_AGES, urand(6000, 9000));
            events.ScheduleEvent(EVENT_HEAVENS_FURY, urand(12000, 15000));
            if (me->GetMap()->IsHeroic())
                events.ScheduleEvent(EVENT_BLAZE_OF_HEAVENS, urand(3000, 8000));
        }

        void EnterPhase2()
        {
            DoCast(me, SPELL_HALLOWED_GROUND);
            events.ScheduleEvent(EVENT_HALLOWED_GROUND, 4000);

            DoCast(me, SPELL_REPENTANCE_IMMUNE);
            Creature* Harbinger = me->SummonCreature(NPC_HARBINGER_OF_DARKNESS, SummonLocations[1], TEMPSUMMON_CORPSE_DESPAWN);
            Harbinger->AddThreat(me->getVictim(), 0.0f);
            DoZoneInCombat(Harbinger);
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
                    case EVENT_FIFTY_LASHING:
                        DoCast(me, SPELL_FIFTY_LASHING);
                        events.ScheduleEvent(EVENT_FIFTY_LASHING, urand(10000, 15000));
                        return;
                    case EVENT_PLAGUE_OF_AGES:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            me->AddAura(SPELL_PLAGUE_OF_AGES, target);
                        events.ScheduleEvent(EVENT_PLAGUE_OF_AGES, urand(6000, 9000));
                        return;
                    case EVENT_HEAVENS_FURY:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_HEAVENS_FURY);

                        events.ScheduleEvent(EVENT_HEAVENS_FURY, urand(12000, 15000));
                        break;
                    case EVENT_BLAZE_OF_HEAVENS:
                        if (Creature* BlazeOfHeavens = me->SummonCreature(NPC_BLAZE_OF_HEAVENS, SummonLocations[0], TEMPSUMMON_CORPSE_DESPAWN))
                        {
                            BlazeOfHeavens->AddThreat(me->getVictim(), 0.0f);
                            DoZoneInCombat(BlazeOfHeavens);
                        }
                        events.ScheduleEvent(EVENT_BLAZE_OF_HEAVENS, urand(20000, 30000));
                        break;
                    default:
                        break;
                }
            }
            DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);

            switch (summoned->GetEntry())
            {
                case 43801:
                    summoned->AddAura(SPELL_HEAVENS_FURY_VISUAL, summoned);
                    summoned->AddAura(SPELL_HEAVENS_FURY_DMG, summoned);
                    break;
                case NPC_BLAZE_OF_HEAVENS:
                    summoned->AddAura(SPELL_BLAZE_OF_HEAVENS, summoned);
                    summoned->SetSpeed(MOVE_WALK, 0.5f, true);
                    summoned->SetSpeed(MOVE_RUN, 0.5f, true);
                    summoned->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
                    break;
            }
        }
    };
};

class npc_harbinger_of_darkness: public CreatureScript 
{
public:
    npc_harbinger_of_darkness() : CreatureScript("npc_harbinger_of_darkness") { }

    CreatureAI* GetAI(Creature* pCreature) const 
    {
        return new npc_harbinger_of_darknessAI(pCreature);
    }

    struct npc_harbinger_of_darknessAI: public ScriptedAI 
    {
        npc_harbinger_of_darknessAI(Creature* c) : ScriptedAI(c) 
        { }

        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            events.ScheduleEvent(EVENT_SOUL_SEVER, 1000);
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId) 
                {
                    case EVENT_SOUL_SEVER:
                        DoCast(me->getVictim(), SPELL_SOUL_SEVER);
                        events.RescheduleEvent(EVENT_SOUL_SEVER, 2000);
                        return;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_high_prophet_barim() 
{
    new boss_high_prophet_barim();
    new npc_harbinger_of_darkness();
}
