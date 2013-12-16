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
#include"shadowfang_keep.h"

enum Spells
{
    SPELL_ASPHYXIATE                        = 93423,
    SPELL_PAIN_AND_SUFFERING                = 93581,
    SPELL_STAY_OF_EXECUTION                 = 93468,
    SPELL_WRACKING_PAIN                     = 93720,
    SPELL_DARK_ARCHANGEL_FORM               = 93757,
    SPELL_CALAMITY                          = 93812,
};

enum Events
{
    EVENT_ASPHYXIATE = 1,
    EVENT_PAIN_AND_SUFFERING,
    EVENT_WRACKING_PAIN,
    EVENT_STAY_OF_EXECUTION,
    EVENT_DARK_ARCHANGEL_FORM,
    EVENT_CALAMITY,
};

class boss_baron_ashbury: public CreatureScript
{
    public:
        boss_baron_ashbury() : CreatureScript("boss_baron_ashbury") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_baron_ashburyAI(creature);
    }

    struct boss_baron_ashburyAI: public BossAI
    {
        boss_baron_ashburyAI(Creature* creature) : BossAI(creature, DATA_BARON_ASHBURY) 
        { 
            instance = creature->GetInstanceScript();
        }
        
        InstanceScript* instance;
        EventMap events;
        bool transformed;

        void Reset()
        {
            events.Reset();
            transformed = false;
            _Reset();
        }

        void JustDied(Unit* killer)
        {
            _JustDied();
        }

        void EnterCombat(Unit* who)
        {
            _EnterCombat();
            instance->SetData(DATA_BARON_ASHBURY_EVENT, IN_PROGRESS);

            events.ScheduleEvent(EVENT_ASPHYXIATE, urand(10000, 15000));
            events.ScheduleEvent(EVENT_PAIN_AND_SUFFERING, urand(5000, 8000));
            if(me->GetMap()->IsHeroic())
                events.ScheduleEvent(EVENT_WRACKING_PAIN, urand(8000, 10000));
            
        }

        void DamageTaken(Unit* who, uint32 &damage)
        {
            if(me->GetMap()->IsHeroic())
            {
                if (damage > 0)
                {
                    if (me->HealthBelowPct(50) && !transformed)
                    {
                        events.ScheduleEvent(EVENT_DARK_ARCHANGEL_FORM, 1);
                        transformed = true;
                    }
                }
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            // bool melee;
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_ASPHYXIATE:
                        me->CastSpell(me, SPELL_ASPHYXIATE, false);
                        events.ScheduleEvent(EVENT_STAY_OF_EXECUTION, 1);
                        events.ScheduleEvent(EVENT_ASPHYXIATE, urand(35000, 40000));
                        break;
                    case EVENT_STAY_OF_EXECUTION:
                        me->CastSpell(me, 93705, false);
                        break;
                    case EVENT_PAIN_AND_SUFFERING:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            me->CastSpell(target, SPELL_PAIN_AND_SUFFERING, true);
                        events.ScheduleEvent(EVENT_PAIN_AND_SUFFERING, urand(12000, 17000));
                        break;
                    case EVENT_WRACKING_PAIN:
                        me->CastSpell(me, SPELL_WRACKING_PAIN, false);
                        events.ScheduleEvent(EVENT_WRACKING_PAIN, urand(25000, 27000));
                        break;
                    case EVENT_DARK_ARCHANGEL_FORM:
                        me->CastSpell(me, SPELL_DARK_ARCHANGEL_FORM, false);
                        events.ScheduleEvent(EVENT_CALAMITY, 3000);
                        break;
                    case EVENT_CALAMITY:
                        me->CastSpell(me, SPELL_CALAMITY, false);
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
     }; 
};

class spell_asphyxiate : public SpellScriptLoader
{
    public:
        spell_asphyxiate() : SpellScriptLoader("spell_asphyxiate") { }

        class spell_asphyxiate_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_asphyxiate_AuraScript);
                            
            void OnPeriodic(AuraEffect* aurEff)
            {
                int8 count;
                int32 health;

                if(Unit* caster = GetCaster())
                {
                    if(Unit* target = GetUnitOwner())
                    {
                        target->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED );
                        count = aurEff->GetAmount();
                        if(count == 1)
                        {
                            target->SetHealth(1);
                            aurEff->ChangeAmount(6);
                            target->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED );
                        }
                        else
                        {
                            health = target->GetHealth() - (target->GetHealth() / count);
                            count--;
                            aurEff->ChangeAmount(count);
                            target->SetHealth(health);
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectUpdatePeriodic += AuraEffectUpdatePeriodicFn(spell_asphyxiate_AuraScript::OnPeriodic, EFFECT_2, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_asphyxiate_AuraScript();
        }
};

void AddSC_boss_baron_ashbury()
{
    new boss_baron_ashbury();
    new spell_asphyxiate();
}