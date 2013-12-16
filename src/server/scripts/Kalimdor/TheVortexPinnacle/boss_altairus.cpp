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
* Script Complete 0%
**********/

#include "ScriptPCH.h"
#include "vortex_pinnacle.h"

enum Spells
{
    SPELL_CALL_OF_WIND                            = 88772,
    SPELL_CHILLING_BREATH                         = 88308,
};

enum Events
{
    EVENT_CHILLING_BREATH = 1,      
    EVENT_SUMMON,
};

Position const summonPositions[4] =
{
    {-1208.316f, 74.2533f, 734.174f, 4.89f},
	{-1222.620f, 73.7265f, 734.174f, 4.89f},
	{-1224.178f, 60.8424f, 734.174f, 4.89f},
    {-1218.436f, 46.5356f, 734.174f, 4.89f},
};

class boss_altairus : public CreatureScript
{
public:
    boss_altairus() : CreatureScript("boss_altairus") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_altairusAI (creature);
    }

    struct boss_altairusAI : public BossAI
    {
        boss_altairusAI(Creature* creature) : BossAI(creature, DATA_ALTAIRUS_EVENT), summons(me)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;
        SummonList summons;

        void Reset()
        {
            events.Reset();
            summons.DespawnAll();
        }

        void EnterCombat(Unit* /*who*/)
        {   
            events.ScheduleEvent(EVENT_CHILLING_BREATH, urand(5000, 6000), 0, 0);
            events.ScheduleEvent(EVENT_SUMMON, urand(2000, 3000), 0, 0);
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
                    case EVENT_CHILLING_BREATH:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0))
                        {
                            me->CastSpell(target, SPELL_CHILLING_BREATH, true);
                            events.ScheduleEvent(EVENT_CHILLING_BREATH, urand(5000, 6000), 0, 0);
                        }
                        break;
                    case EVENT_SUMMON:
                        for (uint8 i = 0; i < 4; i++)
                        {
                            if (urand(0, 3) == 1)
                                me->SummonCreature(NPC_TWISTER, summonPositions[i], TEMPSUMMON_TIMED_DESPAWN, 7000);
                        }
                        events.ScheduleEvent(EVENT_SUMMON, urand(6000, 9000), 0, 0);
                        break;
                }
            }

            DoMeleeAttackIfReady();

        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);
            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0))
            {
                summoned->SetSpeed(MOVE_RUN, 0.4f, true);
                summoned->SetSpeed(MOVE_WALK, 0.4f, true);
                summoned->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                summoned->Attack(target, true);
                summoned->AddAura(88313, summoned);
                summoned->GetMotionMaster()->MoveChase(target, 1.0f, 1.0f);
                summoned->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
            }
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();
            instance->SetData(DATA_ALTAIRUS_EVENT, DONE);
        }
    };
};

void AddSC_boss_altairus()
{
    new boss_altairus();
}