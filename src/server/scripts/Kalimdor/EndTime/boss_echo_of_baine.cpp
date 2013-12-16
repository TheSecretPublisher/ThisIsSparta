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
SDName: boss_echo_of_baine
SD%Complete: 
SDComment:
EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "end_time.h"
#include "SpellInfo.h"

enum Spells
{
    SPELL_THROW_TOTEM = 101615

};

enum Events
{
    EVENT_THROW_TOTEM = 1,
    EVENT_PULVERIZE,
};

enum Misc
{
    NPC_ROCK_ISLAND = 54496
};

class boss_echo_of_baine : public CreatureScript
{
    public:
        boss_echo_of_baine() : CreatureScript("boss_echo_of_baine") { }

        struct boss_echo_of_baineAI : public BossAI
        {
            boss_echo_of_baineAI(Creature* creature) : BossAI(creature, DATA_BAINE), Summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;
            SummonList Summons;


            void Reset()
            {
                _Reset();
                events.Reset();

                Summons.DespawnAll();              
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();

                DoZoneInCombat();

                events.ScheduleEvent(EVENT_PULVERIZE, 15000);
            }

            void KilledUnit(Unit* /*victim*/)
            {
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();
            }

            void JustSummoned(Creature* summon)
            {
                Summons.Summon(summon);
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
                        case EVENT_THROW_TOTEM:
                            if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            {
                                me->CastSpell(target, SPELL_THROW_TOTEM, false);
                            }
                            break;
                        case EVENT_PULVERIZE:
                            std::list<Creature*> unitList;
                            me->GetCreatureListWithEntryInGrid(unitList, NPC_ROCK_ISLAND, 100.0f);
                            Trinity::Containers::SelectRandomContainerElement(unitList)->MonsterYell("rock island", LANG_UNIVERSAL, 0);
                            break;

                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_echo_of_baineAI(creature);
        }
};

void AddSC_boss_echo_of_baine()
{
    new boss_echo_of_baine();
}