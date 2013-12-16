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
#include"lost_city_of_the_tolvir.h"

enum Spells 
{
    SPELL_HAMMER_FIST                             = 83655,
    SPELL_SHOCKWAVE                               = 83499,
    SPELL_BAD_INTENTION                           = 83113,
    SPELL_DETONATE_TRAPS                          = 91263, // Dont work :|
    SPELL_MYSTIC_TRAP                             = 91259, // Dont work 
};

enum Events 
{
    EVENT_HAMMER_FIST = 0,
    EVENT_BAD_INTENTION = 1,
    EVENT_SHOCKWAVE = 2,
};


class boss_general_husam : public CreatureScript
{
public:
    boss_general_husam() : CreatureScript("boss_general_husam") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_general_husamAI (creature);
    }

    struct boss_general_husamAI : public BossAI
    {
        boss_general_husamAI(Creature* creature) : BossAI(creature, DATA_GENERAL_HUSAM_EVENT)
        {
            pInstance = creature->GetInstanceScript();
        }

        InstanceScript *pInstance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
        }

        void JustDied(Unit* /*Kill*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_GENERAL_HUSAM_EVENT, DONE);
        }

        void EnterCombat(Unit* /*Ent*/)
        {
            DoZoneInCombat();

            events.ScheduleEvent(EVENT_HAMMER_FIST, urand(2000, 4000), 0, 0);
            events.ScheduleEvent(EVENT_BAD_INTENTION, urand(10000, 12000), 0, 0);
            events.ScheduleEvent(EVENT_SHOCKWAVE, urand(8000, 15000), 0, 0);

            DoCast(me->getVictim(), SPELL_BAD_INTENTION);

            if (pInstance)
                pInstance->SetData(DATA_GENERAL_HUSAM_EVENT, IN_PROGRESS);
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
                    case EVENT_HAMMER_FIST:
                        DoCast(me->getVictim(), SPELL_HAMMER_FIST);
                        events.ScheduleEvent(EVENT_HAMMER_FIST, urand(2000, 4000), 0, 0);
                        return;
                    case EVENT_BAD_INTENTION:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_BAD_INTENTION);

                        events.ScheduleEvent(EVENT_BAD_INTENTION, urand(6000, 12000), 0, 0);
                        return;
                    case EVENT_SHOCKWAVE:
                         if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_SHOCKWAVE);

                        events.ScheduleEvent(EVENT_SHOCKWAVE, urand(12000, 19000), 0, 0);
                        break;
                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_general_husam() 
{
    new boss_general_husam();
}
