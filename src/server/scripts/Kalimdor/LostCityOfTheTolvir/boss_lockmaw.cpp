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
#include"WorldPacket.h"
#include"lost_city_of_the_tolvir.h"

enum Spells 
{
    SPELL_DUST_FLAIL = 81642,
    SPELL_SCENT_OF_BLOOD = 81690,
    SPELL_VENOMOUS_RAGE = 81706,
    SPELL_VISCOUS_POISON = 81630,
};

enum Events 
{
    EVENT_DUST_FLAIL = 1,
    EVENT_SCENT_OF_BLOOD = 2,
    EVENT_VENOMOUS_RAGE = 3,
    EVENT_VISCOUS_POISON = 4,
};

enum SummonIds 
{
    NPC_FRENZIED_CROCOLISK = 43658,
};

const Position SummonLocations[4] = 
{
    //Frenzied Crocolisks
    {-11033.29f, -1674.57f, -0.56f, 1.09f},
    {-11003.77f, -1668.24f, -0.35f, 2.41f}, 
    {-11056.49f, -1606.93f, -0.31f, 5.35f}, 
    {-11084.05f, -1630.60f, -0.50f, 5.98f},
};

class boss_lockmaw: public CreatureScript 
{
public:
    boss_lockmaw() : CreatureScript("boss_lockmaw") { }

    CreatureAI* GetAI(Creature* pCreature) const 
    {
        return new boss_lockmawAI(pCreature);
    }

    struct boss_lockmawAI: public BossAI 
    {
        boss_lockmawAI(Creature* pCreature) : BossAI(pCreature, DATA_LOCKMAW_EVENT), Summons(me)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;
        SummonList Summons;

        void Reset() 
        {
            events.Reset();
            Summons.DespawnAll();

            if (pInstance)
                pInstance->SetData(DATA_LOCKMAW_EVENT, NOT_STARTED);
        }

        void JustDied(Unit* /*Killer*/) 
        {
            Summons.DespawnAll();
            if (pInstance)
                pInstance->SetData(DATA_LOCKMAW_EVENT, DONE);

            if (me->GetMap()->IsHeroic())
            {
                if (Creature* augh = me->FindNearestCreature(BOSS_AUGH, 5000.0f, true))
                {
                    augh->AI()->DoAction(ACTION_START_COMBAT);  
                }
            }
        }

        void JustSummoned(Creature* summoned)
        {
            Summons.Summon(summoned);
        }

        void EnterCombat(Unit* /*who*/) 
        {
            if (pInstance)
                pInstance->SetData(DATA_LOCKMAW_EVENT, IN_PROGRESS);

            events.ScheduleEvent(EVENT_DUST_FLAIL, urand(6000, 10000));
            events.ScheduleEvent(EVENT_VISCOUS_POISON, urand(6000, 10000));
            events.ScheduleEvent(EVENT_SCENT_OF_BLOOD, urand(12000, 19000));

            DoZoneInCombat();
        }

        void UpdateAI( uint32 uiDiff) 
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (me->GetHealthPct() < 30)
            {
                if (!me->HasAura(SPELL_VENOMOUS_RAGE))
                    DoCast(me, SPELL_VENOMOUS_RAGE);
            }

            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent()) 
            {
                switch (eventId) 
                {
                    case EVENT_DUST_FLAIL:
                        me->CastSpell(me, SPELL_DUST_FLAIL, true);
                        events.ScheduleEvent(EVENT_DUST_FLAIL, urand(6000, 10000));
                        break;
                    case EVENT_VISCOUS_POISON:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0))
                            DoCast(target, SPELL_VISCOUS_POISON);
                        events.ScheduleEvent(EVENT_VISCOUS_POISON, urand(6000, 10000));
                        break;
                    case EVENT_SCENT_OF_BLOOD:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0))
                        {
                            DoCast(target, SPELL_SCENT_OF_BLOOD);
                            for (uint8 i = 0; i < 4; i++)
                            {
                                if (Creature* Crocolisk = me->SummonCreature(NPC_FRENZIED_CROCOLISK, SummonLocations[i], TEMPSUMMON_CORPSE_DESPAWN))
                                {
                                    Crocolisk->AddThreat(target, 10.0f);
                                    DoZoneInCombat(Crocolisk);
                                }
                            }
                        }
                        events.ScheduleEvent(EVENT_SCENT_OF_BLOOD, urand(12000, 19000));
                        break;
                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

enum aughSpells 
{
    SPELL_BLADESTORM                              = 91408,
    SPELL_PARALYTIC                               = 89989,
    SPELL_DRAGON_BREATH                           = 90026,
    SPELL_FRENZY                                  = 91415,
};

enum aughEvents 
{
    EVENT_BLADE = 1,
    EVENT_PARALYTIC_BLOW,
    EVENT_DRAGON_BREATH,
};

class boss_augh: public CreatureScript 
{
public:
    boss_augh() : CreatureScript("boss_augh") { }

    CreatureAI* GetAI(Creature* pCreature) const 
    {
        return new boss_aughAI(pCreature);
    }
    struct boss_aughAI: public ScriptedAI 
    {
        boss_aughAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;

        void Reset() 
        {
            events.Reset();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
            if (Creature* lockmaw = me->FindNearestCreature(BOSS_LOCKMAW, 5000.0f, false))
            {
                if (!lockmaw->isAlive())
                    lockmaw->Respawn(true);
            }
        }

        void EnterCombat(Unit* /*who*/) 
        {
            DoZoneInCombat();
        }

        void DoAction( int32 action)
        {
            switch (action)
            {
                case ACTION_START_COMBAT:
                    DoZoneInCombat(me);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    events.ScheduleEvent(EVENT_BLADE, urand(6000, 9000));
                    events.ScheduleEvent(EVENT_PARALYTIC_BLOW, urand(6000, 10000));
                    if (me->GetMap()->IsHeroic())
                        events.ScheduleEvent(EVENT_DRAGON_BREATH, urand(6000, 15000));
                    break;
            }
        }

        void UpdateAI( uint32 uiDiff) 
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (me->GetMap()->IsHeroic() && me->GetHealthPct() < 30 && !me->HasAura(SPELL_FRENZY))
                DoCast(me, SPELL_FRENZY);

            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent()) 
            {
                switch (eventId) 
                {
                    case EVENT_BLADE:
                        DoCastVictim(SPELL_BLADESTORM);
                        events.ScheduleEvent(EVENT_BLADE, urand(6000, 9000));
                        break;
                    case EVENT_PARALYTIC_BLOW:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true, 0))
                            me->AddAura(SPELL_PARALYTIC, target);

                        events.ScheduleEvent(EVENT_PARALYTIC_BLOW, urand(6000, 10000));
                        break;
                    case EVENT_DRAGON_BREATH:
                        DoCastVictim(SPELL_DRAGON_BREATH);
                        events.ScheduleEvent(EVENT_DRAGON_BREATH, urand(6000, 15000));
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_lockmaw() 
{
    new boss_lockmaw();
    new boss_augh();
}
