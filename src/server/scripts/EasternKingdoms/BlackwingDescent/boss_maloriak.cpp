/*
* Copyright (C) 2012 - 2012 Forgotten Lands <https://www.forgottenlands.eu>
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

#include "ScriptPCH.h"
#include "blackwing_descent.h"

enum Spells
{
    // General
    SPELL_BERSERK                   = 64238,
    SPELL_RELEASE_ABBERATIONS       = 77569,
    SPELL_RELEASE_ALL_ABBERATIONS   = 77991,
    SPELL_REMEDY                    = 92967,
    SPELL_ARCANE_STORM              = 77896,

    // Red Phase
    SPELL_THROW_RED_BOTTLE          = 77925, // Or 77928?

    SPELL_SCORCHING_BLAST           = 92970,
    SPELL_CONSUMING_FLAMES          = 92973,

    // Blue Phase
    SPELL_THROW_BLUE_BOTTLE         = 77932, // Or 77934?

    SPELL_BITING_CHILL              = 77760,

    SPELL_FLASH_FREEZE              = 77699, // HC: 92980
    SPELL_FLASH_FREEZE_SUMMON       = 77711,
    SPELL_FLASH_FREEZE_VISUAL       = 77712,
    SPELL_SHATTER                   = 77715,

    // Green Phase
    SPELL_THROW_GREEN_BOTTLE        = 77937, // Or 77938?

    SPELL_DEBILITATING_SLIME        = 77602, // (Dummy Effect - or only visual?)
    SPELL_DEBILITATING_SLIME_DEBUFF = 77615, // 92910

    // Black Phase
    SPELL_THROW_BLACK_BOTTLE        = 92831, // Or 92828?
    SPELL_SHADOW_IMBUED             = 92716,

    SPELL_ENGULFING_DARKNESS        = 92982,

    // Final Phase
    SPELL_ACID_NOVA                 = 78225,
    SPELL_MAGMA_JET                 = 78194,
    SPELL_MAGMA_JET_AURA            = 78095,
};

enum Events
{
    // General
    EVENT_NEW_PHASE = 1,
    EVENT_DRINK_BOTTLE,
    EVENT_UNLOCK_SPELLS,
    EVENT_WAIT_SWITCH_PHASE,
    EVENT_BERSERK,
    EVENT_REMEDY,
    EVENT_ARCANE_STORM,

    // Red Phase
    EVENT_SCORCHING_BLAST,
    EVENT_CONSUMING_FLAMES,

    // Blue Phase
    EVENT_BITING_CHILL,
    EVENT_FLASH_FREEZE,

    // Green Phase
    EVENT_CAULDRON_EXPLODE,
    EVENT_RELEASE_ABBERATIONS,

    // Black Phase
    EVENT_SUMMON_VILE_SWILL,
    EVENT_ENGULFING_DARKNESS,

    // Final Phase
    EVENT_ACID_NOVA,
    EVENT_MAGMA_JETS,
    EVENT_ABSOLUTE_ZERO,

};

enum ScriptTexts
{
    SAY_AGGRO                       = -1851000,
    SAY_VIAL                        = -1851001,
    SAY_LOW_HEALTH                  = -1851004,
    SAY_SLAY                        = -1851005,
    SAY_DEATH                       = -1851007,
    SAY_NEFARIAN_ON_DEATH           = -1851040,
};

Position const MaloriakPositions[5] =
{
    {-106.148842f, -473.517365f, 73.454552f, 4.699424f}, // Cauldron Position
    {-75.459419f, -430.066071f, 73.274872f, 3.609182f}, // Add summon Positions
    {-77.055763f, -441.063354f, 73.489388f, 3.285442f},
    {-75.247200f, -499.593018f, 73.240547f, 2.064154f},
    {-143.885178f, -457.006409f, 73.369576f, 0.112437f},
};

enum Phases
{
    PHASE_RED,
    PHASE_BLUE,
    PHASE_GREEN,
    PHASE_BLACK,
    PHASE_NON,
    PHASE_FINAL,
};

#define TIMER_PHASE 45000

class boss_maloriak : public CreatureScript
{
public:
    boss_maloriak() : CreatureScript("boss_maloriak") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_maloriakAI (creature);
    }

    struct boss_maloriakAI : public BossAI
    {
        boss_maloriakAI(Creature* creature) : BossAI(creature, DATA_MALORIAK), summons(me)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;
        SummonList summons;
        uint8 phase;
        uint8 abberationsLeft;
        uint8 lastPhase;
        bool spellsLocked;
        bool wasInBlackPhase;
        uint8 withoutGreenPhase;

        void Reset()
        {   
            events.Reset();
            me->SetReactState(REACT_AGGRESSIVE);
            abberationsLeft = 18;
            withoutGreenPhase = 0;
            wasInBlackPhase = true;
            spellsLocked = false;
            UpdatePhase(PHASE_NON);
            instance->SetData(DATA_MALORIAK, NOT_STARTED);

            summons.DespawnAll();
            _Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            _EnterCombat();

            // DoScriptText(SAY_AGGRO, me);

            instance->SetData(DATA_MALORIAK, IN_PROGRESS);

            events.ScheduleEvent(EVENT_NEW_PHASE, urand(10000,12000));
            events.ScheduleEvent(EVENT_REMEDY, urand(15000,18000));
            events.ScheduleEvent(EVENT_ARCANE_STORM, urand(7000,8000));

            events.ScheduleEvent(EVENT_BERSERK, me->GetMap()->IsHeroic() ? 720000 : 420000);
        }

        const Position* GetLastJetflamePosition() const
        {
            return &FlameJetLastPos;
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            if(me->GetHealthPct() < 25 && phase != PHASE_FINAL)
            {   
                // Enter Final Phase
                uint32 uiBerserker = events.GetNextEventTime(EVENT_BERSERK);
                events.Reset();
                events.ScheduleEvent(EVENT_BERSERK, uiBerserker);
                events.ScheduleEvent(EVENT_MAGMA_JETS, urand(6000, 10000));
                events.ScheduleEvent(EVENT_ABSOLUTE_ZERO, urand(6000, 15000)); 
                events.ScheduleEvent(EVENT_ACID_NOVA, urand(15000, 28000));

                phase = PHASE_FINAL;
                me->InterruptNonMeleeSpells(true);
                
                DoCast(SPELL_RELEASE_ALL_ABBERATIONS);
            };

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_NEW_PHASE:
                        UpdatePhase(urand(PHASE_RED, PHASE_BLUE));
                        spellsLocked = true;
                        events.ScheduleEvent(EVENT_NEW_PHASE, TIMER_PHASE);
                        break;

                    case EVENT_DRINK_BOTTLE:

                        if(GameObject* cauldron = me->FindNearestGameObject(GOB_MALORIAKS_CAULDRON,100.f))
                        {
                            switch(phase)
                            {
                            case PHASE_RED:
                                DoCast(cauldron->ToCreature(), SPELL_THROW_RED_BOTTLE);
                                break;

                            case PHASE_BLUE:
                                DoCast(cauldron->ToCreature(), SPELL_THROW_BLUE_BOTTLE);
                                break;

                            case PHASE_GREEN:
                                DoCast(cauldron->ToCreature(), SPELL_THROW_GREEN_BOTTLE);
                                break;

                            case PHASE_BLACK:
                                DoCast(cauldron->ToCreature(), SPELL_THROW_BLACK_BOTTLE);
                                me->AddAura(SPELL_SHADOW_IMBUED, me);
                                break;
                            }
                        }

                        events.ScheduleEvent(EVENT_WAIT_SWITCH_PHASE, 1000);
                        break;

                    case EVENT_WAIT_SWITCH_PHASE:
                        me->SetReactState(REACT_AGGRESSIVE);
                        me->GetMotionMaster()->MoveChase(me->getVictim());

                        // Intialize Phase Events
                        switch(phase)
                        {
                        case PHASE_RED:
                            events.ScheduleEvent(EVENT_SCORCHING_BLAST, 7000);
                            events.ScheduleEvent(EVENT_CONSUMING_FLAMES, 3000);
                            break;

                        case PHASE_BLUE:
                            events.ScheduleEvent(EVENT_BITING_CHILL, 7000);
                            events.ScheduleEvent(EVENT_FLASH_FREEZE, 9000);
                            break;

                        case PHASE_GREEN:
                            events.ScheduleEvent(EVENT_CAULDRON_EXPLODE, 2000);
                            break;

                        case PHASE_BLACK:
                            events.ScheduleEvent(EVENT_SUMMON_VILE_SWILL, urand(4000,6000));
                            events.ScheduleEvent(EVENT_ENGULFING_DARKNESS, 9000);
                            break;
                        }

                        if(phase != PHASE_BLACK)
                        {
                            events.ScheduleEvent(EVENT_RELEASE_ABBERATIONS, urand(12000,17000));
                            // DoScriptText(SAY_VIAL-phase, me);
                        }

                        events.ScheduleEvent(EVENT_UNLOCK_SPELLS, 1500);
                        break;

                        // Misc
                    case EVENT_UNLOCK_SPELLS:
                        spellsLocked = false;
                        break;

                    case EVENT_BERSERK:
                        DoCast(me,SPELL_BERSERK);
                        break;

                    case EVENT_REMEDY:
                        if(spellsLocked)
                            events.ScheduleEvent(EVENT_REMEDY, 1500);
                        else
                        {
                            DoCast(me,SPELL_REMEDY);
                            events.ScheduleEvent(EVENT_REMEDY, urand(15000,18000));
                        }
                        break;

                    case EVENT_ARCANE_STORM:
                        if(spellsLocked)
                            events.ScheduleEvent(EVENT_ARCANE_STORM, 1500);
                        else
                        {
                            me->AttackStop();
                            DoCastAOE(SPELL_ARCANE_STORM);
                            events.ScheduleEvent(EVENT_ARCANE_STORM, urand(27000,29000));
                        }
                        break;

                        // Red Phase
                    case EVENT_SCORCHING_BLAST:
                        DoCastAOE(SPELL_SCORCHING_BLAST);
                        events.ScheduleEvent(EVENT_SCORCHING_BLAST, urand(15000, 17000));
                        break;

                    case EVENT_CONSUMING_FLAMES:
                        if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200.0f, true))
                            DoCast(target, SPELL_CONSUMING_FLAMES);

                        events.ScheduleEvent(EVENT_CONSUMING_FLAMES, urand(7000, 8500));
                        break;

                        // Blue Phase
                    case EVENT_BITING_CHILL:
                        if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200, true))
                            DoCast(target, SPELL_BITING_CHILL);

                        events.ScheduleEvent(EVENT_BITING_CHILL, urand(8000, 10000));
                        break;

                    case EVENT_FLASH_FREEZE:
                        if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200, true))
                            target->CastSpell(target, SPELL_FLASH_FREEZE_SUMMON, true);

                        events.ScheduleEvent(EVENT_FLASH_FREEZE, urand(11000, 13000));
                        break;

                        // Green Phase
                    case EVENT_CAULDRON_EXPLODE:
                        if (Creature* slime = me->FindNearestCreature(NPC_SLIME_TRIGGER, 100.f))
                        {
                            slime->CastSpell(slime, SPELL_DEBILITATING_SLIME, true);
                            slime->CastSpell(slime, 77615, true);
                            slime->CastSpell(slime, 77948, true);
                        }
                        break;

                    case EVENT_RELEASE_ABBERATIONS:
                        DoCast(SPELL_RELEASE_ABBERATIONS);
                        break;

                        // Black Phase
                    case EVENT_SUMMON_VILE_SWILL:
                        me->SummonCreature(NPC_VILE_SWILL, MaloriakPositions[urand(1,4)]);
                        events.ScheduleEvent(EVENT_SUMMON_VILE_SWILL, urand(4000,5000));
                        break;

                    case EVENT_ENGULFING_DARKNESS:
                        DoCastAOE(SPELL_ENGULFING_DARKNESS);
                        events.ScheduleEvent(EVENT_ENGULFING_DARKNESS, 16000);
                        break;

                        // Final Phase
                    case EVENT_MAGMA_JETS:
                        DoCastAOE(78194);
                        FlameJetLastPos.Relocate(me);
                        break;

                    case EVENT_ABSOLUTE_ZERO:
                        DoCast(SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true), 78223, true);
                        events.ScheduleEvent(EVENT_ABSOLUTE_ZERO, urand(20000, 35000)); 
                        break;

                    case EVENT_ACID_NOVA:
                        DoCastAOE(78225);
                        events.ScheduleEvent(EVENT_ACID_NOVA, urand(20000, 35000));
                        break;

                    default:
                        break;
                }
            }		

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            if (instance)
                instance->SetData(DATA_MALORIAK, DONE);
            
            _JustDied();
            summons.DespawnAll();
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);
            

            if (summon->GetEntry() == 50030)
            {
                summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                summon->AddAura(78095, summon);
                summon->SetReactState(REACT_PASSIVE);
                return;
            }
            
            DoZoneInCombat(summon);
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE || id != 1)
                return;

            if(GameObject* cauldron = me->FindNearestGameObject(GOB_MALORIAKS_CAULDRON,100.f))
            {
                cauldron->SendCustomAnim(phase);
                me->SetFacingToObject(cauldron);
            }

            events.ScheduleEvent(EVENT_DRINK_BOTTLE, 1500);
        }

        uint32 GetData(uint32 type) const
        {
            if(type == DATA_ABBERATIONS_LEFT)
                return abberationsLeft;
            else
                return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            if(type == DATA_ABBERATIONS_LEFT)
                abberationsLeft = data;
        }

    private:
        Position FlameJetLastPos;

        void UpdatePhase(uint8 newPhase)
        {
            // Cancel current Phase Events

            switch(phase)
            {
                case PHASE_RED:
                    events.CancelEvent(EVENT_SCORCHING_BLAST);
                    events.CancelEvent(EVENT_CONSUMING_FLAMES);
                    break;

                case PHASE_BLUE:
                    events.CancelEvent(EVENT_BITING_CHILL);
                    events.CancelEvent(EVENT_FLASH_FREEZE);
                    break;

                case PHASE_GREEN:
                    events.CancelEvent(EVENT_CAULDRON_EXPLODE);
                    break;

                case PHASE_BLACK:
                    me->RemoveAura(SPELL_SHADOW_IMBUED);
                    events.CancelEvent(EVENT_SUMMON_VILE_SWILL);
                    events.CancelEvent(EVENT_ENGULFING_DARKNESS);
                    break;
            }

            phase = newPhase;

            if(phase == PHASE_NON)
                return;

            // In Heroic Mode every 2. Phase is a Black Phase
            if((me->GetMap()->IsHeroic()) && (!wasInBlackPhase))
            {
                phase = PHASE_BLACK;
                wasInBlackPhase = true;
            } else
            {
                withoutGreenPhase++;
                wasInBlackPhase = false;

                if(lastPhase == phase )
                {
                    if(phase == PHASE_RED)
                        phase = PHASE_BLUE;
                    else if(phase == PHASE_BLUE)
                        phase = PHASE_RED;
                }

                lastPhase = phase;
            }

            // Every 3. Phase is a Green Phase
            if(withoutGreenPhase >= 3)
            {
                if(phase == PHASE_BLACK)
                    wasInBlackPhase = false;

                phase = PHASE_GREEN;
                withoutGreenPhase = 0;
            }              

            me->SetReactState(REACT_PASSIVE);
            me->AttackStop();
            me->GetMotionMaster()->MovePoint(1, MaloriakPositions[0]);
        }
    };
};

class mob_flash_freeze_maloriak : public CreatureScript
{
public:
    mob_flash_freeze_maloriak() : CreatureScript("mob_flash_freeze_maloriak") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_flash_freeze_maloriakAI (creature);
    }

    struct mob_flash_freeze_maloriakAI : public ScriptedAI
    {
        mob_flash_freeze_maloriakAI(Creature* creature) : ScriptedAI(creature) { }

        Unit* target;
        uint32 timerChecktarget;

        void IsSummonedBy(Unit* summoner)
        {
            target = summoner;
            timerChecktarget = 500;

            if(target)
            {
                me->NearTeleportTo(target->GetPositionX(),target->GetPositionY(),target->GetPositionZ(),target->GetOrientation());
                me->CastSpell(target, SPELL_FLASH_FREEZE, false);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                me->SetReactState(REACT_PASSIVE);
            }

            me->AddAura(SPELL_FLASH_FREEZE_VISUAL, me);
        }

        void UpdateAI(uint32 diff)
        {
            if (timerChecktarget <= diff)
            {
                // Check weather the Debuff on Target is Expired
                if(target && !target->HasAura(SPELL_FLASH_FREEZE))
                    me->DisappearAndDie();

                timerChecktarget = 500;

            } else timerChecktarget -= diff;
        }

        void JustDied(Unit* /*killer*/)
        {
            if(target)
            {
                me->CastSpell(me, SPELL_SHATTER, false);
                target->RemoveAura(SPELL_FLASH_FREEZE);
            }

            me->DisappearAndDie();
        }
    };
};


class EntryCheck : public std::unary_function<Unit*, bool>
{
    public:
        explicit EntryCheck(Unit* _caster) : caster(_caster) { }
        bool operator()(WorldObject* object)
        {
            return object->GetEntry() != 363353;
        }

    private:
        Unit* caster;
};

class spell_release_abberations : public SpellScriptLoader
{
public:
    spell_release_abberations() : SpellScriptLoader("spell_release_abberations") { }

    class spell_release_abberationsSpellScript : public SpellScript
    {
        PrepareSpellScript(spell_release_abberationsSpellScript);

        void HandleDummy(SpellEffIndex effIndex)
        {
            if(Unit* caster = GetCaster())
            {
                if (caster->ToCreature())
                {
                    if (caster->ToCreature()->IsAIEnabled)
                    {
                        uint8 abberationsLeft = caster->ToCreature()->AI()->GetData(DATA_ABBERATIONS_LEFT);

                        if(abberationsLeft >= 3)
                        {
                            for (uint8 i = 0; i < 3; i++)
                            {
                                if (Creature* aberration = caster->SummonCreature(NPC_ABBERATON, MaloriakPositions[urand(1,4)]))
                                    aberration->AddAura(77987, aberration);
                            }

                            caster->ToCreature()->AI()->SetData(DATA_ABBERATIONS_LEFT, abberationsLeft-3);
                        }
                    }
                }
            }
        }

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            targets.remove_if(EntryCheck(GetCaster()));
        }

        void Register()
        {
            OnEffectLaunch += SpellEffectFn(spell_release_abberationsSpellScript::HandleDummy, EFFECT_0,SPELL_EFFECT_DUMMY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_release_abberationsSpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_release_abberationsSpellScript();
    }
};

class spell_release_all_abberations : public SpellScriptLoader
{
public:
    spell_release_all_abberations() : SpellScriptLoader("spell_release_all_abberations") { }

    class spell_release_all_abberationsSpellScript : public SpellScript
    {
        PrepareSpellScript(spell_release_all_abberationsSpellScript);

        bool Load()
        {
            return true;
        }

        void HandleDummy(SpellEffIndex effIndex)
        {
            if(Unit* caster = GetCaster())
            {
                if (caster->ToCreature())
                {
                    if (caster->ToCreature()->IsAIEnabled)
                    {
                        uint8 abberationsLeft = caster->ToCreature()->AI()->GetData(DATA_ABBERATIONS_LEFT);

                        if(abberationsLeft > 0)
                        {
                            for (uint8 i = 0; i < abberationsLeft; i++)
                            {
                                if (Creature* aberration = caster->SummonCreature(NPC_ABBERATON, MaloriakPositions[urand(1,4)]))
                                    aberration->AddAura(77987, aberration);
                            }
                        }

                        for (uint8 i = 0; i < 2; i++)
                        {
                            if (Creature* prime = caster->SummonCreature(NPC_PRIME_SUBJECT, MaloriakPositions[urand(1,4)]))
                                prime->AddAura(77987, prime);
                                
                        }

                        caster->ToCreature()->AI()->SetData(DATA_ABBERATIONS_LEFT, 0);
                    }
                }
            }
        }

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            targets.remove_if(EntryCheck(GetCaster()));
        }

        void Register()
        {
            OnEffectLaunch += SpellEffectFn(spell_release_all_abberationsSpellScript::HandleDummy,EFFECT_0,SPELL_EFFECT_DUMMY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_release_all_abberationsSpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_release_all_abberationsSpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_release_all_abberationsSpellScript();
    }
};


class AddEntryCheck : public std::unary_function<Unit*, bool>
{
    public:
        explicit AddEntryCheck(Unit* _caster) : caster(_caster) { }
        bool operator()(WorldObject* object)
        {
            return object->GetEntry() != NPC_ABBERATON && object->GetEntry() != NPC_PRIME_SUBJECT ;
        }

    private:
        Unit* caster;
};

class spell_debilitating_slime : public SpellScriptLoader
{
public:
    spell_debilitating_slime() : SpellScriptLoader("spell_debilitating_slime") { }

    class spell_debilitating_slimeAuraScript : public AuraScript
    {
        PrepareAuraScript(spell_debilitating_slimeAuraScript);

        void OnRemove(AuraEffect const*, AuraEffectHandleModes)
        {
            if (!GetOwner() || !GetOwner()->ToUnit())
                return;

            if (GetOwner()->GetEntry() == NPC_ABBERATON || GetOwner()->GetEntry() == NPC_PRIME_SUBJECT)
                GetOwner()->ToUnit()->AddAura(77987, GetOwner()->ToUnit());
        }

        void Register()
        {
            OnEffectRemove += AuraEffectRemoveFn(spell_debilitating_slimeAuraScript::OnRemove, EFFECT_1, SPELL_AURA_MOD_DAMAGE_PERCENT_TAKEN, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_debilitating_slimeAuraScript();
    }

    class spell_debilitating_slimeSpellScript : public SpellScript
    {
        PrepareSpellScript(spell_debilitating_slimeSpellScript);

        bool Load()
        {
            return true;
        }

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            targets.remove_if(AddEntryCheck(GetCaster()));
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_debilitating_slimeSpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_SRC_AREA_ENTRY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_debilitating_slimeSpellScript::FilterTargets, EFFECT_2, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_debilitating_slimeSpellScript();
    }
};

enum flameEvents
{
    EVENT_JETFLAME_TRIGGER = 1,
};

typedef boss_maloriak::boss_maloriakAI MaloriakAI;

class npc_flame_jet : public CreatureScript
{
    public:
        npc_flame_jet() : CreatureScript("npc_flame_jet") { }
 
        struct npc_flame_jetAI : public ScriptedAI
        {
            npc_flame_jetAI(Creature* creature) : ScriptedAI(creature)
            {
            }

            uint8 count;

            void IsSummonedBy(Unit* owner)
            {
                if (owner->GetTypeId() != TYPEID_UNIT)
                    return;
 
                count = 0;

                Creature* creOwner = owner->ToCreature();
                Position pos;
               
                MaloriakAI* maloriakAI = CAST_AI(MaloriakAI, creOwner->AI());
                Position const* ownerPos = maloriakAI->GetLastJetflamePosition();
                float ang = me->GetAngle(ownerPos) - static_cast<float>(M_PI);
                Position::NormalizeOrientation(ang);
                me->SetOrientation(ang);
                owner->GetNearPosition(pos, 2.5f, 0.0f);
               
                me->NearTeleportTo(pos.GetPositionX(), pos.GetPositionY(), me->GetPositionZ(), me->GetOrientation());
                events.ScheduleEvent(EVENT_JETFLAME_TRIGGER, 200);
            }
 
            void UpdateAI(uint32 diff)
            {
                events.Update(diff);
 
                if (count == 15)
                {
                    me->DisappearAndDie();
                    return;
                }

                if (events.ExecuteEvent() == EVENT_JETFLAME_TRIGGER)
                {
                    Position newPos;
                    me->GetNearPosition(newPos, 5.5f, 0.0f);
                    me->NearTeleportTo(newPos.GetPositionX(), newPos.GetPositionY(), me->GetPositionZ(), me->GetOrientation());
                    DoCast(78094);
                    events.ScheduleEvent(EVENT_JETFLAME_TRIGGER, 200);
                    count++;
                }
            }

            void JustSummoned(Creature* summon)
            {
                summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                summon->AddAura(78095, summon);
                summon->SetReactState(REACT_PASSIVE);
            }
 
        private:
            EventMap events;
        };
 
        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_flame_jetAI(creature);
        }
};

enum absoluteZeroEvents
{
    EVENT_DISAPPEAR = 1,
    EVENT_ENABLE_EXPLOSION,
};

class npc_absolute_zero : public CreatureScript
{
    public:
        npc_absolute_zero() : CreatureScript("npc_absolute_zero") { }
 
        struct npc_absolute_zeroAI : public ScriptedAI
        {
            npc_absolute_zeroAI(Creature* creature) : ScriptedAI(creature)
            {
            }

            EventMap events;
            bool canExplode;

            void Reset()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            }
           
            void MoveInLineOfSight(Unit* who)
            {
                if (me->GetDistance(who) < 5.0f && canExplode)
                {
                    DoCastAOE(78208);
                    canExplode = false;
                    events.ScheduleEvent(EVENT_DISAPPEAR, 1500);
                }
            }

            void IsSummonedBy(Unit* owner)
            {   
                me->AddAura(78201, me);
                events.Reset();
                canExplode = false;
                events.ScheduleEvent(EVENT_ENABLE_EXPLOSION, 3000);
            }

            void UpdateAI(uint32 diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_DISAPPEAR:
                            me->DisappearAndDie();
                            break;
                        case EVENT_ENABLE_EXPLOSION:
                            canExplode = true;
                            break;
                    }
                    
                }
            }

        };
 
        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_absolute_zeroAI(creature);
        }
};

void AddSC_boss_maloriak()
{
    new boss_maloriak();
    new mob_flash_freeze_maloriak();
    new spell_release_abberations();
    new spell_release_all_abberations();
    new spell_debilitating_slime();
    new npc_flame_jet();
    new npc_absolute_zero();
}