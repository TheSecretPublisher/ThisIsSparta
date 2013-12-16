/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
 *
 * Copyright (C) 2011 - 2012 Forgotten Lands <http://www.forgottenlands.eu>
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

/* 
##### Script Info #####
Author: Dimiandre (Zotac, Mythos)
Progress: 100%
Website: www.forgottenlands.eu
*/

#include"ScriptPCH.h"
#include"baradin_hold.h"

enum Spells
{
    SPELL_BERSERK                                 = 47008,
    SPELL_CONSUMING_DARKNESS                      = 88954,
    SPELL_METEOR_SLASH                            = 88942,
    SPELL_FEL_FIRESTORM                           = 88972,
};

enum Events
{
    EVENT_BERSERK = 1,
    EVENT_CONSUMING_DARKNESS,
    EVENT_METEOR_SLASH,
    EVENT_FLAME_DESPAWN,
};

class boss_argaloth: public CreatureScript
{
    public:
        boss_argaloth() : CreatureScript("boss_argaloth") { }

    struct boss_argalothAI: public BossAI
    {
        boss_argalothAI(Creature* creature) : BossAI(creature, DATA_ARGALOTH_EVENT), summons(me) 
        {
            instance = me->GetInstanceScript();
        }

        uint32 fel_firestorm_casted;
        SummonList summons;
        InstanceScript* instance;

        void Reset()
        {
            _Reset();
            me->RemoveAurasDueToSpell(SPELL_BERSERK);
            events.Reset();
            fel_firestorm_casted = 0;
            summons.DespawnAll();

            if (instance)
                instance->SetBossState(DATA_ARGALOTH_EVENT, NOT_STARTED);
        }

        void JustDied(Unit* killer)
        {
            if (instance)
                instance->SetBossState(DATA_ARGALOTH_EVENT, DONE);
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_BERSERK, 300000);
            events.ScheduleEvent(EVENT_CONSUMING_DARKNESS, urand(14000, 16000));
            events.ScheduleEvent(EVENT_METEOR_SLASH, urand(16000, 18000));

            if (instance)
                instance->SetBossState(DATA_ARGALOTH_EVENT, IN_PROGRESS);
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->GetHealthPct() < 66 && fel_firestorm_casted == 0)
            {
                DoCast(SPELL_FEL_FIRESTORM);
                events.DelayEvents(3000);
                fel_firestorm_casted = 1;
                events.ScheduleEvent(EVENT_FLAME_DESPAWN, 5000);
            }
            if (me->GetHealthPct() < 33 && fel_firestorm_casted == 1)
            {
                DoCast(SPELL_FEL_FIRESTORM);
                events.DelayEvents(3000);
                fel_firestorm_casted = 2;
                events.ScheduleEvent(EVENT_FLAME_DESPAWN, 5000);
            }

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_CONSUMING_DARKNESS:
                        for (uint8 i = 0; i < RAID_MODE(3, 8); i++)
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, -SPELL_CONSUMING_DARKNESS))
                                me->AddAura(SPELL_CONSUMING_DARKNESS, target);

                        events.RescheduleEvent(EVENT_CONSUMING_DARKNESS, urand(24000, 26000));
                        break;
                    case EVENT_METEOR_SLASH:
                        me->CastSpell(me, 88949, true);
                        DoCast(SPELL_METEOR_SLASH);
                        events.RescheduleEvent(EVENT_METEOR_SLASH, urand(16000, 18000));
                        break;
                    case EVENT_BERSERK:
                        DoCast(me, SPELL_BERSERK);
                        break;
                    case EVENT_FLAME_DESPAWN:
                        summons.DespawnAll();
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

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_argalothAI(creature);
    }
};

void AddSC_boss_argaloth()
{
    new boss_argaloth();
}