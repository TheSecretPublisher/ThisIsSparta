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
    SPELL_CRYSTAL_BARRAGE                        = 86881,
    SPELL_SUMMON_CRYSTAL_SHARD                   = 92012,
    SPELL_DAMPENING_WAVE                         = 92650,
    SPELL_TRASHING_CHARGE_TELE                   = 81839,
    SPELL_TRASHING_CHARGE_VISUAL                 = 81801,
    SPELL_BURROW                                 = 26381,
};

enum Events
{
    EVENT_CRYSTAL_BARRAGE = 1,
    EVENT_SUMMON_CRYSTAL_SHARD,
    EVENT_DAMPENING_WAVE,
    EVENT_TRASHING_CHARGE_TELE,
    EVENT_TRASHING_CHARGE_VISUAL,
    EVENT_BURROW
};

class boss_corborus: public CreatureScript
{
    public:
        boss_corborus() : CreatureScript("boss_corborus") { }

    struct boss_corborusAI: public BossAI
    {
        boss_corborusAI(Creature* creature) : BossAI(creature, DATA_CORBORUS_EVENT), summons(me) 
        { }

        uint8 teleCount;
        uint8 phase;
        SummonList summons;

        void Reset()
        {
            teleCount = 0;
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->RemoveAura(65981);
            phase = 0;
            events.Reset();
        }   

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_CRYSTAL_BARRAGE, urand(14000, 17000), 0, 0);
            events.ScheduleEvent(EVENT_DAMPENING_WAVE, urand(10000, 11000), 0, 0);
            events.ScheduleEvent(EVENT_BURROW, urand(30000, 40000), 0, 0);
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();

            if (GameObject* wall = me->FindNearestGameObject(207343, 100.0f))
                wall->SetGoState(GO_STATE_ACTIVE);
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
                    case EVENT_CRYSTAL_BARRAGE:
                        if (phase == 0)
                        {
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0))
                            {
                                DoCast(target, SPELL_CRYSTAL_BARRAGE, true);

                                if (me->GetMap()->IsHeroic())
                                    DoCast(target, SPELL_SUMMON_CRYSTAL_SHARD);
                            }
                            events.ScheduleEvent(EVENT_CRYSTAL_BARRAGE, urand(14000, 17000), 0, 0);
                        }
                        break;
                    case EVENT_DAMPENING_WAVE:
                        if (phase == 0)
                        {
                            me->CastSpell(me->getVictim(), SPELL_DAMPENING_WAVE, true);
                            events.ScheduleEvent(EVENT_DAMPENING_WAVE, urand(10000, 11000), 0, 0);
                        }
                        break;
                    case EVENT_BURROW:
                        ++teleCount;
                        phase = 1;
                        if (teleCount < 5)
                        {
                            me->CastSpell(me, 65981, true);
                            
                            /*if (!me->HasAura(65981))
                                me->AddAura(65981, me);*/

                            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

                            // Summon 1 borer per ogni pg
                            for (Map::PlayerList::const_iterator i = me->GetMap()->GetPlayers().begin(); i != me->GetMap()->GetPlayers().end(); ++i)
                            {
                                Position pos;
                                if (i->getSource()->isAlive())
                                {
                                    i ->getSource()->GetPosition(&pos);
                                    if (Creature* borer = me->SummonCreature(43917, pos, TEMPSUMMON_DEAD_DESPAWN, 10000, 0))
                                    {
                                        borer->CombatStart(SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0), true);
                                    }
                                }
                            }

                            events.ScheduleEvent(EVENT_BURROW, 6000, 0, 0);
                        } else
                        {
                            phase = 0;
                            teleCount = 0;
                            events.ScheduleEvent(EVENT_BURROW, urand(30000, 40000), 0, 0);
                            events.RescheduleEvent(EVENT_CRYSTAL_BARRAGE, urand(14000, 17000), 0, 0);
                            events.RescheduleEvent(EVENT_DAMPENING_WAVE, urand(10000, 11000), 0, 0);
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                            me->RemoveAura(65981);
                            me->GetMotionMaster()->MoveChase(me->getVictim(), 0.0f, 0.0f);
                        }
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
     };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_corborusAI(creature);
    }
};

void AddSC_boss_corborus()
{
    new boss_corborus();
}