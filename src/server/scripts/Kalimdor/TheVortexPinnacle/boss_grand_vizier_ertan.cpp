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
**********/

#include "ScriptPCH.h"
#include "vortex_pinnacle.h"

enum Spells
{
    SPELL_LIGHTNING_BOLT                          = 86331,
    SPELL_STROMS_EDGE                             = 86309,
};

enum events
{   
    EVENT_LIGHTNING_BOLT = 1,
    EVENT_VORTEX_MIDDLE,
    EVENT_VORTEX_HOME,
};

Position const summonPositions[4] =
{
    {-719.811f, -21.058f, 635.672f, 1.487f},
	{-719.903f, 28.695f, 635.672f, 4.649f},
	{-745.456f,  4.0896f, 635.672f, 6.235f},
    {-694.771f, 4.0653f, 635.672f, 3.249f},
};

Position const middelPositions[4] =
{
    {-719.946f, -1.585f, 635.672f, 1.487f},
	{-719.400f, 7.206f, 635.672f, 4.737f},
	{-723.172f, 3.654f, 635.672f, 6.255f},
    {-714.678f, 3.7029f, 635.672f, 3.198f},
};


class boss_grand_vizier_ertan : public CreatureScript
{
public:
    boss_grand_vizier_ertan() : CreatureScript("boss_grand_vizier_ertan") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_grand_vizier_ertanAI (creature);
    }

    struct boss_grand_vizier_ertanAI : public BossAI
    {
        boss_grand_vizier_ertanAI(Creature* creature) : BossAI(creature, DATA_GRAND_VIZIER_ERTAN_EVENT), summons(me)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;
        SummonList summons;
        Creature* ertanVortex[4];

        void Reset() 
        {
            events.Reset();
            summons.DespawnAll();
            // reset vortexs
            for(uint8 i = 0; i < 4; i++)
			{
				ertanVortex[i] = NULL;
			}
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_LIGHTNING_BOLT, 1550, 0, 0);
            events.ScheduleEvent(EVENT_VORTEX_MIDDLE, urand(16000, 20000), 0, 0);

            // Spawn vortexs
            for(uint8 i = 0; i < 4; i++)
			{
				ertanVortex[i] = me->SummonCreature(NPC_ERTAN_VORTEX, summonPositions[i], TEMPSUMMON_MANUAL_DESPAWN);
			}
        }

        void AttackStart(Unit* who)
        {
            if (!who)
                return;
            
            AttackStartNoMove(who);
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();
            instance->SetData(DATA_GRAND_VIZIER_ERTAN_EVENT, DONE);
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
                    case EVENT_LIGHTNING_BOLT:
                        me->CastSpell(me->getVictim(), SPELL_LIGHTNING_BOLT, true);
                        events.ScheduleEvent(EVENT_LIGHTNING_BOLT, 1550, 0, 0);
                        break;
                    case EVENT_VORTEX_MIDDLE:
                        // Vortex to middle
                        for(uint8 i = 0; i < 4; i++)
	                    {
                            if (ertanVortex[i])
                            {   
                                ertanVortex[i]->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
                                if(ertanVortex[i]->AttackStop()){
                                    if (ertanVortex[i]->GetMotionMaster()){
		                                ertanVortex[i]->GetMotionMaster()->MovePoint(1, middelPositions[i]);
                                    }
                                }
                            }
	                    }
                        events.ScheduleEvent(EVENT_VORTEX_HOME, 8000, 0, 0);
                        break;
                    case EVENT_VORTEX_HOME:
                        // Vortex to middle
                        for(uint8 i = 0; i < 4; i++)
	                    {
                            if (ertanVortex[i])
                            {
                                ertanVortex[i]->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
                                ertanVortex[i]->AttackStop();
		                        if (ertanVortex[i]->GetMotionMaster())
		                            ertanVortex[i]->GetMotionMaster()->MovePoint(1, summonPositions[i]);
                            }
	                    }
                        events.ScheduleEvent(EVENT_VORTEX_MIDDLE, urand(16000, 20000), 0, 0);
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);
        }
    };
};

void AddSC_boss_grand_vizier_ertan()
{
    new boss_grand_vizier_ertan();
}