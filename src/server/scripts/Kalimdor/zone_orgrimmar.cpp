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
SDName: Orgrimmar
SD%Complete: 0
SDComment: Quest support:
SDCategory: Orgrimmar
EndScriptData */

/* ContentData
EndContentData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Player.h"

enum Spells
{
    SPELL_CHARGE                                = 22120,
    SPELL_BATTLE_SHOUT                          = 32064,
    SPELL_BLADESTORM                            = 67541,
    SPELL_THROW                                 = 70309,
    SPELL_PUMMEL                                = 59344,
    SPELL_BERSERK                               = 26662,
    SPELL_CLEAVE                                = 85240,
};
enum Events
{
    EVENT_BLADESTORM                   = 1,
    EVENT_CLEAVE                       = 2,
    EVENT_THROW                        = 3,
    EVENT_BERSERK                      = 4,
};

class gamon : public CreatureScript
{
public:
    gamon() : CreatureScript("gamon"){}

    CreatureAI* GetAI(Creature* creature) const
    {
        return new gamonAI(creature);
    }

    struct gamonAI : public ScriptedAI
    {
        gamonAI(Creature *c) : ScriptedAI(c)
        {
            Reset();
        }

        EventMap events;
        Unit* shallTarget;
        uint32 pummel;

        void Reset()
        {
            pummel =0;
            me->MonsterYell("I will not fall again!", 0, 0);
            me->RemoveAllAuras();
            events.Reset();
        }

        void JustDied(Unit * /*victim*/)
        {
            me->MonsterYell("It cannot end... like... this.", 0, 0);
        }

        void EnterCombat(Unit *who)
        {
            me->MonsterYell("NO MORE!!!!", 0, 0);
            DoCast(who, SPELL_CHARGE);
            DoCast(SPELL_BATTLE_SHOUT);
            events.ScheduleEvent(EVENT_BLADESTORM, 1500);
            events.ScheduleEvent(EVENT_BERSERK, 60000);
            events.ScheduleEvent(EVENT_THROW, 10000);
            events.ScheduleEvent(EVENT_CLEAVE, urand(10000, 15000));
        }

        void UpdateAI(uint32 diff)
        {
            if (pummel>=diff)
                pummel -= diff;
            events.Update(diff);
            if (!UpdateVictim())
                return;
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;
            if (me->getVictim() && me->getVictim()->HasUnitState(UNIT_STATE_CASTING) && pummel <=diff)
            {
                me->MonsterYell("Don't even try!!", 0, 0);
                DoCastVictim(SPELL_PUMMEL);
                pummel = 10000;
            }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CLEAVE:
                        DoCastVictim(SPELL_CLEAVE); 
                        events.ScheduleEvent(EVENT_CLEAVE, urand(4000, 6000));
                    break;
                case EVENT_BLADESTORM:
                        me->MonsterYell("I am a storm of pain!", 0, 0);
                        DoCastVictim(SPELL_BLADESTORM); 
                        events.ScheduleEvent(EVENT_BLADESTORM, 30000);
                    break;
                case EVENT_THROW:
                    if (Unit* tempTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, -5, true))
                        DoCast(tempTarget, SPELL_THROW);
                    events.ScheduleEvent(EVENT_THROW, 5000);
                    break;
                case EVENT_BERSERK:
                    me->MonsterYell("This. Ends. HERE.", 0, 0);
                    DoCast(SPELL_BERSERK);
                    break;
                default:
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_orgrimmar()
{
    new gamon();
}
