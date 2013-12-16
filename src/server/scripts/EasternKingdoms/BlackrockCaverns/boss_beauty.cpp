/*
* Copyright (C) 2011 - 2012 Forgotten Core <http://www.forgottenlands.eu/>
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

/**********
* ScriptAuthor: dimiandre
* ScriptComplete: 90%
* ToDo: Handle Magma Spit explosion
**********/

#include "ScriptPCH.h"
#include "blackrock_caverns.h"

enum Spells
{
	SPELL_BERSEK                                  = 82395,
    SPELL_CHARGE                                  = 76030,
    SPELL_FLAMEBREAK                              = 76032,
    SPELL_MAGMA_SPIT                              = 76031,
    SPELL_TERRIFYNG_ROAR                          = 76028,
};

enum events
{   
    EVENT_NONE,
    EVENT_BERSEK,
    EVENT_BERSEKER_CHARGE,
    EVENT_FLAMEBREAK,
    EVENT_MAGMA_SPIT,
    EVENT_TERRIFYNG_ROAR,
};

enum actions
{
    ACTION_BEAUTY_BERSEK,
};

class boss_beauty : public CreatureScript
{
public:
    boss_beauty() : CreatureScript("boss_beauty") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_beautyAI (creature);
    }

    struct boss_beautyAI : public BossAI
    {
        boss_beautyAI(Creature* creature) : BossAI(creature, DATA_BEAUTY_EVENT)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_BERSEKER_CHARGE, urand(15000, 24000), 0, 0);
            events.ScheduleEvent(EVENT_FLAMEBREAK, urand(10000, 21000), 0, 0);
            events.ScheduleEvent(EVENT_MAGMA_SPIT, urand(9000, 13000), 0, 0);
            events.ScheduleEvent(EVENT_TERRIFYNG_ROAR, urand(15000, 22000), 0, 0);
        }

        void DoAction(int32 action)
        {
            switch (action)
            {
                case ACTION_BEAUTY_BERSEK:
                    events.ScheduleEvent(EVENT_BERSEK, 1000, 0, 0);
                    break;
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
                    case EVENT_BERSEKER_CHARGE:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                        {
                            me->CastSpell(target, SPELL_CHARGE, true);
                            events.ScheduleEvent(EVENT_BERSEKER_CHARGE, urand(12000, 20000), 0, 0);
                        }
                        break;
                    case EVENT_FLAMEBREAK:
                        DoCastAOE(SPELL_FLAMEBREAK);
                        events.ScheduleEvent(EVENT_FLAMEBREAK, urand(5000, 9000), 0, 0);
                        break;
                    case EVENT_MAGMA_SPIT:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                        {
                            me->CastSpell(target, SPELL_MAGMA_SPIT, true);
                            events.ScheduleEvent(EVENT_MAGMA_SPIT, urand(9000, 13000), 0, 0);
                        }
                        break;
                    case SPELL_TERRIFYNG_ROAR:
                        DoCastAOE(SPELL_TERRIFYNG_ROAR);
                        events.ScheduleEvent(EVENT_TERRIFYNG_ROAR, urand(15000, 22000), 0, 0);
                        break;
                    case EVENT_BERSEK:
                        DoCast(me, SPELL_BERSEK);
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }

    };
};


class npc_runty : public CreatureScript
{
public:
	npc_runty() : CreatureScript("npc_runty") { }

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_runtyAI (creature);
	}

	struct npc_runtyAI : public ScriptedAI
	{
		npc_runtyAI(Creature* creature) : ScriptedAI(creature)
		{
            instance = me->GetInstanceScript();
        }

		InstanceScript* instance;

		void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
        }

		void JustDied(Unit* killer)
		{
            if (instance)
            {
                if (Creature* beauty = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_BEAUTY)))
                {
                    beauty->Attack(killer, true);
                    beauty->GetMotionMaster()->MoveChase(killer, 2.0f, 0.0f);
                    beauty->AddThreat(killer, 1000.0f, SPELL_SCHOOL_MASK_NORMAL, 0);
                    beauty->AI()->DoAction(ACTION_BEAUTY_BERSEK);
                }
            }
		}
	};
};

enum minionsEvents
{
    EVENT_LAVA_DROOL            = 1,
    EVENT_LITTLE_BREATH         = 2,
};

enum minionsSpell
{
    SPELL_LAVA_DROOL                              = 76628,
    SPELL_LITTLE_BREATH                           = 76665,
};

class npc_beauty_family : public CreatureScript
{
public:
	npc_beauty_family() : CreatureScript("npc_beauty_family") { }

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_beauty_familyAI (creature);
	}

	struct npc_beauty_familyAI : public ScriptedAI
	{
		npc_beauty_familyAI(Creature* creature) : ScriptedAI(creature)
		{
            instance = me->GetInstanceScript();
        }

		InstanceScript* instance;
        EventMap events;

		void Reset()
        {
            events.Reset();
        }

		void EnterCombat(Unit* who)
		{
            if (instance)
            {
                if (me->GetMap()->IsHeroic())
                {
                    if (Creature* beauty = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_BEAUTY)))
                    {
                        beauty->Attack(me->getVictim(), true);
                        beauty->GetMotionMaster()->MoveChase(me->getVictim(), 2.0f, 0.0f);
                    }
                }
            }

            events.ScheduleEvent(EVENT_LAVA_DROOL, urand(10000, 20000), 0, 0);
            events.ScheduleEvent(EVENT_LITTLE_BREATH, urand(6000, 12000), 0, 0);
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
                    case EVENT_LAVA_DROOL:
                        DoCast(me, SPELL_LAVA_DROOL);
                        events.ScheduleEvent(EVENT_LAVA_DROOL, urand(10000, 20000), 0, 0);
                        break;
                    case EVENT_LITTLE_BREATH:
                        DoCast(me->getVictim(), SPELL_LITTLE_BREATH);
                        events.ScheduleEvent(EVENT_LITTLE_BREATH, urand(6000, 12000), 0, 0);
                        break;
                }
            }
        }
	};
};

void AddSC_boss_beauty()
{
    new boss_beauty();
    new npc_runty();
    new npc_beauty_family();
}