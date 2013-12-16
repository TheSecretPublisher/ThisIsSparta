/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
 *
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

#include "throne_of_the_four_winds.h"

enum anshalEvents
{
    EVENT_NONE = 1,
};


class boss_alakir: public CreatureScript
{
    public:
        boss_alakir() : CreatureScript("boss_alakir") { }

    struct boss_alakirAI: public BossAI
    {
        boss_alakirAI(Creature* creature) : BossAI(creature, DATA_ALAKIR_EVENT), summons(me) { }

        SummonList summons;

        void Reset()
        {
            events.Reset();
        }   

        void EnterCombat(Unit* who)
        {
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();
        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);
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
                    case EVENT_NONE:
                        
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
     };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_alakirAI(creature);
    }
};

void AddSC_boss_alakir()
{
    new boss_alakir();
}