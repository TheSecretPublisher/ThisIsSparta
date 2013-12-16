/*
 * Copyright (C) 2012 Forgotten Lands <http://www.forgottenlands.eu/>
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
#include"the_stonecore.h"

#include"ScriptPCH.h"
#include"the_stonecore.h"

enum Spells
{
    SPELL_ERUPTION                                = 80800,
    SPELL_SUMMON_LAVA_FISSURE                     = 80803,
    SPELL_LAVA_FISSURE_PREPARATION                = 80798,
    SPELL_STALACTITE_SUMMON_OBJ                   = 92309,
    SPELL_STALACTITE_SUMMON_TRIG                  = 80656,
    SPELL_STALACTITE_VISUAL                       = 80654,
    SPELL_SANDBLAST                               = 92656,
};

enum Events
{
    EVENT_LAVA_FISSURE = 1,
    EVENT_STALACTITE_P1,
    EVENT_STALACTITE_P2,
    EVENT_SANDBLAST,
    EVENT_STUN
};

enum MovementPoints
{
    POINT_CENTER  = 1,
    POINT_TAKEOFF = 2,
    POINT_LAND    = 3,
};

class boss_slabhide: public CreatureScript
{
    public:
        boss_slabhide() : CreatureScript("boss_slabhide") { }

    struct boss_slabhideAI: public BossAI
    {
        boss_slabhideAI(Creature* creature) : BossAI(creature, DATA_SLABHIDE), summons(me) { }

        SummonList summons;
        bool isFlyPhase;
        Position pos;

        void Reset()
        {
            summons.DespawnAll();
            events.Reset();
            isFlyPhase = false;
            me->SetReactState(REACT_AGGRESSIVE);
            me->SetHover(false);
            me->SetDisableGravity(false);
            me->SetCanFly(false);
        }

        void EnterCombat(Unit* attacker)
        {
            events.ScheduleEvent(EVENT_LAVA_FISSURE, urand(7000, 10000), 0, 0);
            events.ScheduleEvent(EVENT_SANDBLAST, urand(7000, 8000), 0, 0);
            events.ScheduleEvent(EVENT_STALACTITE_P1, urand(20000, 30000), 0, 0);
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);

            switch (summon->GetEntry())
            {
                case NPC_LAVA_FISSURE:
                    summon->CastSpell(summon, SPELL_LAVA_FISSURE_PREPARATION, true);
                    summon->AI()->DoAction(ACTION_START_LAVA_FISSURE);
                    break;
            }
        }

        void MovementInform(uint32 type, uint32 point)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (point)
            {
                case POINT_CENTER:
                    me->SetReactState(REACT_PASSIVE);
                    me->SetHover(true);
                    me->SetDisableGravity(true);
                    me->SetCanFly(true);
                    pos.Relocate(me);
                    pos.m_positionZ += 12.0f;
                    me->GetMotionMaster()->MoveTakeoff(POINT_TAKEOFF, pos);
                    events.ScheduleEvent(EVENT_STUN, 1500, 0, 0);
                    break;
                case POINT_TAKEOFF:
                    if (Creature* summoner = me->FindNearestCreature(200000, 30.0f, true))
                        summoner->AI()->DoAction(ACTION_CAST);
                    
                    events.ScheduleEvent(EVENT_STALACTITE_P2, urand(8000, 10000), 0, 0);
                    break;
                case POINT_LAND:
                    DoStartMovement(me->getVictim());
                    isFlyPhase = false;
                    me->SetHover(false);
                    me->SetDisableGravity(false);
                    me->SetCanFly(false);
                    events.ScheduleEvent(EVENT_LAVA_FISSURE, urand(7000, 10000), 0, 0);
                    events.ScheduleEvent(EVENT_SANDBLAST, urand(7000, 8000), 0, 0);
                    events.ScheduleEvent(EVENT_STALACTITE_P1, urand(20000, 30000), 0, 0);
                    break;
            }
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();
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
                    case EVENT_LAVA_FISSURE:
                        if (!isFlyPhase)
                        {
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true, 0))
                                DoCast(target, SPELL_SUMMON_LAVA_FISSURE, true);

                            events.ScheduleEvent(EVENT_LAVA_FISSURE, urand(7000, 11000), 0, 0);
                        }
                        break;
                    case EVENT_SANDBLAST:
                        if (!isFlyPhase)
                        {
                            DoCastVictim(SPELL_SANDBLAST);
                            events.ScheduleEvent(EVENT_SANDBLAST, urand(7000, 8000), 0, 0);
                        }
                        break;
                    case EVENT_STALACTITE_P1:
                        isFlyPhase = true;
                        me->SetReactState(REACT_PASSIVE);
                        me->GetMotionMaster()->MovePoint(POINT_CENTER, 1283.2111f, 1214.3529f, 247.118f);
                        break;
                    case EVENT_STALACTITE_P2:
                        isFlyPhase = false;
                        me->SetReactState(REACT_AGGRESSIVE);
                        me->RemoveUnitMovementFlag(MOVEMENTFLAG_DISABLE_GRAVITY);
                        me->GetMotionMaster()->MovePoint(POINT_LAND, 1283.2111f, 1214.3529f, 247.118f);
                        break;
                    case EVENT_STUN:
                        me->GetMotionMaster()->MovePoint(POINT_TAKEOFF, pos);
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
     };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_slabhideAI(creature);
    }
};

enum lavaFissureEvents
{
    EVENT_ERUPTION = 1,
    EVENT_DESPAWN
};

class npc_lava_fissure : public CreatureScript
{
public:
    npc_lava_fissure() : CreatureScript("npc_lava_fissure") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lava_fissureAI(creature);
    };

    struct npc_lava_fissureAI : public ScriptedAI
    {
        npc_lava_fissureAI(Creature* creature) : ScriptedAI(creature)
        {}

        EventMap events;

        void Reset()
        {
            events.Reset();
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        }

        void DoAction(int32 actionId)
        {
            switch (actionId)
            {
                case ACTION_START_LAVA_FISSURE:
                    events.ScheduleEvent(EVENT_ERUPTION, 5000, 0, 0);
                    break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_ERUPTION:
                        DoCast(me, SPELL_ERUPTION, true);
                        events.ScheduleEvent(EVENT_DESPAWN, 4000, 0, 0);
                        break;
                    case EVENT_DESPAWN:
                        me->DisappearAndDie();
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };							  
};


class npc_stalactite_summoner : public CreatureScript
{
public:
    npc_stalactite_summoner() : CreatureScript("npc_stalactite_summoner") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_stalactite_summonerAI(creature);
    };

    struct npc_stalactite_summonerAI : public ScriptedAI
    {
        npc_stalactite_summonerAI(Creature* creature) : ScriptedAI(creature), summons(me)
        {}

        SummonList summons;
        EventMap events;

        void Reset()
        {
            events.Reset();
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        }

        void JustSummoned(Creature* summon)
        {
            if (summon->GetEntry() == NPC_STALACTITE_TRIGGER)
            {
                summon->CastSpell(summon, SPELL_STALACTITE_VISUAL, true);
                summon->AI()->DoAction(ACTION_START_STALACTITE);
            }
        }

        void DoAction(int32 actionId)
        {
            switch (actionId)
            {
                case ACTION_CAST:
                    DoCast(me, SPELL_STALACTITE_SUMMON_TRIG, true);
                    break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            DoMeleeAttackIfReady();
        }
    };							  
};

enum stalactiteEvents
{
    EVENT_SUMMON_GOB = 1,
};

class npc_stalactite_base : public CreatureScript
{
public:
    npc_stalactite_base() : CreatureScript("npc_stalactite_base") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_stalactite_baseAI(creature);
    };

    struct npc_stalactite_baseAI : public ScriptedAI
    {
        npc_stalactite_baseAI(Creature* creature) : ScriptedAI(creature)
        {}

        EventMap events;

        void Reset()
        {
            events.Reset();
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        }

        void DoAction(int32 actionId)
        {
            switch (actionId)
            {
                case ACTION_START_STALACTITE:
                    events.ScheduleEvent(EVENT_SUMMON_GOB, urand(4000, 6000), 0, 0);
                    break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_SUMMON_GOB:
                        DoCast(me, SPELL_STALACTITE_SUMMON_OBJ, true);
                        me->DisappearAndDie();
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };							  
};


void AddSC_boss_slabhide()
{
    new boss_slabhide();
    new npc_lava_fissure();
    new npc_stalactite_summoner();
    new npc_stalactite_base();
}