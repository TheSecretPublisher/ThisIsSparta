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

enum Spells
{
    SPELL_GROUND_SLAM                             = 95338,
    SPELL_ELEMENTIUM_BULWARK                      = 92659,
    SPELL_ELEMENTIUM_SPIKE_SHIELD                 = 92429,
    SPELL_PARALYZE_DAMAGE                         = 94661,
    SPELL_PARALYZE                                = 95341,
    SPELL_SHATTER                                 = 92662,
    SPELL_ENRAGE                                  = 80467,
};

enum Events
{
    EVENT_GROUND_SLAM = 1,
    EVENT_ELEMENTIUM_BULWARK,
    EVENT_ELEMENTIUM_SPIKE_SHIELD,
    EVENT_PARALYZE,
    EVENT_SHATTER,
    EVENT_ENRAGE
};

class boss_ozruk: public CreatureScript
{
    public:
        boss_ozruk() : CreatureScript("boss_ozruk") { }

    struct boss_ozrukAI: public BossAI
    {
        boss_ozrukAI(Creature* creature) : BossAI(creature, DATA_OZRUK) { }
    
        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_GROUND_SLAM, urand(8000, 10000), 0, 0);
            events.ScheduleEvent(EVENT_ELEMENTIUM_BULWARK, urand(10000, 15000), 0, 0); 
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
                    case EVENT_GROUND_SLAM:
                        Position pos;
                        me->getVictim()->GetPosition(&pos);
                        if (Creature* target = me->SummonCreature(42499, pos, TEMPSUMMON_MANUAL_DESPAWN, 0, 0))
                        {
                            target->SetDisplayId(11686);
                            target->setFaction(14);
                            target->SetReactState(REACT_PASSIVE);
                            target->SetSpeed(MOVE_RUN, 0.0f);
                            target->SetSpeed(MOVE_WALK, 0.0f);
                            target->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                            me->CastSpell(target, SPELL_GROUND_SLAM, false);
                        }

                        events.ScheduleEvent(EVENT_GROUND_SLAM, urand(16000, 22000), 0, 0);
                        break;
                    case EVENT_ELEMENTIUM_BULWARK:
                        me->AddAura(SPELL_ELEMENTIUM_BULWARK, me);
                        me->AddAura(SPELL_ELEMENTIUM_SPIKE_SHIELD, me);
                        events.ScheduleEvent(EVENT_PARALYZE, urand(6000, 8000), 0, 0); 
                        break;
                    case EVENT_PARALYZE:
                        me->AddAura(92427, me);
                        DoCastVictim(SPELL_PARALYZE);
                        events.ScheduleEvent(EVENT_SHATTER, 3000, 0, 0);
                        break;
                    case EVENT_SHATTER:
                        me->CastSpell(me, SPELL_SHATTER, false);
                        events.ScheduleEvent(EVENT_ELEMENTIUM_BULWARK, urand(13000, 16000), 0, 0); 
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
     };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_ozrukAI(creature);
    }
};

void AddSC_boss_ozruk()
{
    new boss_ozruk();
}