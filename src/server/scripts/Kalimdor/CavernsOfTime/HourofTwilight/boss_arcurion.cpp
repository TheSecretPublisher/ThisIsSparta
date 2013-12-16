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
#include"hour_of_twilight.h"

enum Spells 
{

};

enum Events 
{

};


class boss_arcurion : public CreatureScript
{
public:
    boss_arcurion() : CreatureScript("boss_arcurion") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_arcurionAI (creature);
    }

    struct boss_arcurionAI : public BossAI
    {
        boss_arcurionAI(Creature* creature) : BossAI(creature, DATA_ARCURION_EVENT)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript *instance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
        }

        void JustDied(Unit* /*Kill*/)
        {
            if (instance)
                instance->SetData(DATA_ARCURION_EVENT, DONE);
        }

        void EnterCombat(Unit* /*Ent*/)
        {
            DoZoneInCombat();

            if (instance)
                instance->SetData(DATA_ARCURION_EVENT, IN_PROGRESS);
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
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_arcurion() 
{
    new boss_arcurion();
}
