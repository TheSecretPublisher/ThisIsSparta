/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
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
 * Scripts for spells with SPELLFAMILY_HUNTER, SPELLFAMILY_PET and SPELLFAMILY_GENERIC spells used by hunter players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_hun_".
 */

#include "Pet.h"
#include "ScriptMgr.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"

enum HunterSpells
{
    SPELL_HUNTER_ASPECT_OF_THE_BEAST_PET            = 61669,
    SPELL_HUNTER_ASPECT_OF_THE_VIPER_ENERGIZE       = 34075,
    SPELL_HUNTER_BESTIAL_WRATH                      = 19574,
    SPELL_HUNTER_CHIMERA_SHOT_HEAL                  = 53353,
    SPELL_HUNTER_CHIMERA_SHOT_VIPER                 = 53358,
    SPELL_HUNTER_CHIMERA_SHOT_SCORPID               = 53359,
	SPELL_HUNTER_CHIMERA_SHOT_SERPENT               = 53353,
    SPELL_HUNTER_COBRA_SHOT                         = 77767,
    SPELL_HUNTER_COBRA_SHOT_ENERGIZE                = 91954,
    SPELL_HUNTER_GLYPH_OF_ASPECT_OF_THE_VIPER       = 56851,
    SPELL_HUNTER_GLYPH_OF_SILENCING_SHOT            = 56836,
    SPELL_HUNTER_INVIGORATION_TRIGGERED             = 53398,
    SPELL_HUNTER_KILL_SHOT                          = 53351,
    SPELL_HUNTER_MASTERS_CALL_TRIGGERED             = 62305,
    SPELL_HUNTER_MISDIRECTION_PROC                  = 35079,
    SPELL_HUNTER_PET_LAST_STAND_TRIGGERED           = 53479,
    SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX           = 55709,
    SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX_TRIGGERED = 54114,
    SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX_DEBUFF    = 55711,
    SPELL_HUNTER_PET_CARRION_FEEDER_TRIGGERED       = 54045,
    SPELL_HUNTER_READINESS                          = 23989,
    SPELL_HUNTER_SERPENT_STING_DEBUFF               = 1978,
    SPELL_HUNTER_SNIPER_TRAINING_R1                 = 53302,
    SPELL_HUNTER_SNIPER_TRAINING_BUFF_R1            = 64418,
    SPELL_HUNTER_FOCUS_ENERGIZE                     = 82716,
    SPELL_HUNTER_THRILL_OF_THE_HUNT                 = 34720,
    SPELL_DRAENEI_GIFT_OF_THE_NAARU                 = 59543,
};

// 1543 - Flare
class spell_hun_flare : public SpellScriptLoader
{
    public:
        spell_hun_flare() : SpellScriptLoader("spell_hun_flare") { }

        class spell_hun_flare_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_flare_AuraScript);

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* target = GetTarget();
                if (target && target->GetAuraEffectsByType(SPELL_AURA_MOD_CAMOUFLAGE).size())
                {
                    PreventDefaultAction();
                }
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_hun_flare_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_DISPEL_IMMUNITY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
            }
        };


        AuraScript* GetAuraScript() const
        {
            return new spell_hun_flare_AuraScript();
        }
};

// 53476 - pet intervene
class spell_hun_pet_intervene : public SpellScriptLoader 
{
    public:
        spell_hun_pet_intervene() : SpellScriptLoader("spell_hun_pet_intervene") { }

        class spell_hun_pet_intervene_AuraScript: public AuraScript
        {
            PrepareAuraScript(spell_hun_pet_intervene_AuraScript);

            void OnEffectCalcAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = false;

                if(Unit* caster = GetCaster())
                {
                    amount = CalculatePct(caster->GetMaxHealth(), 50);
                }
            }
            
            void function (AuraEffect* aurEff, DamageInfo& /*dmgInfo*/, uint32& /*absorbAmount*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetTarget();

                if(caster && target)
                {
                    target->RemoveAura(GetId(), caster->GetGUID());
                }
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_hun_pet_intervene_AuraScript::OnEffectCalcAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
                AfterEffectAbsorb += AuraEffectAbsorbFn(spell_hun_pet_intervene_AuraScript::function, EFFECT_1);
            }
        };

        AuraScript* GetAuraScript() const 
        {
            return new spell_hun_pet_intervene_AuraScript();
        }
};

// 34490 - Silencing Shot
class spell_hun_silencing_shot : public SpellScriptLoader
{
    public:
        spell_hun_silencing_shot() : SpellScriptLoader("spell_hun_silencing_shot") { }

        class spell_hun_silencing_shot_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_silencing_shot_AuraScript);

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetTarget();
                if (caster && target)
                {
                    // Glyph of Silencing Shot energize on spell interruption
                    if (caster->HasAura(SPELL_HUNTER_GLYPH_OF_SILENCING_SHOT) && target->HasUnitState(UNIT_STATE_CASTING))
                    {
                        // Fixed value
                        int32 bp0 = 10;
                        caster->CastCustomSpell(caster, SPELL_HUNTER_FOCUS_ENERGIZE, &bp0, NULL, NULL, true);
                    }
                }
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_hun_silencing_shot_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_MOD_SILENCE, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
            }
        };


        AuraScript* GetAuraScript() const
        {
            return new spell_hun_silencing_shot_AuraScript();
        }
};

// 13161 - Aspect of the Beast
class spell_hun_aspect_of_the_beast : public SpellScriptLoader
{
    public:
        spell_hun_aspect_of_the_beast() : SpellScriptLoader("spell_hun_aspect_of_the_beast") { }

        class spell_hun_aspect_of_the_beast_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_aspect_of_the_beast_AuraScript);

            bool Load()
            {
                return GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_ASPECT_OF_THE_BEAST_PET))
                    return false;
                return true;
            }

            void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Player* caster = GetCaster()->ToPlayer())
                    if (Pet* pet = caster->GetPet())
                        pet->RemoveAurasDueToSpell(SPELL_HUNTER_ASPECT_OF_THE_BEAST_PET);
            }

            void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->GetPet())
                        caster->CastSpell(caster, SPELL_HUNTER_ASPECT_OF_THE_BEAST_PET, true);
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_hun_aspect_of_the_beast_AuraScript::OnApply, EFFECT_0, SPELL_AURA_UNTRACKABLE, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_hun_aspect_of_the_beast_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_UNTRACKABLE, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_hun_aspect_of_the_beast_AuraScript();
        }
};

// 34074 - Aspect of the Viper
class spell_hun_ascpect_of_the_viper : public SpellScriptLoader
{
    public:
        spell_hun_ascpect_of_the_viper() : SpellScriptLoader("spell_hun_ascpect_of_the_viper") { }

        class spell_hun_ascpect_of_the_viper_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_ascpect_of_the_viper_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_ASPECT_OF_THE_VIPER_ENERGIZE))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_GLYPH_OF_ASPECT_OF_THE_VIPER))
                    return false;
                return true;
            }

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& /*eventInfo*/)
            {
                PreventDefaultAction();

                uint32 maxMana = GetTarget()->GetMaxPower(POWER_MANA);
                int32 mana = CalculatePct(maxMana, GetTarget()->GetAttackTime(RANGED_ATTACK) / 1000.0f);

                if (AuraEffect const* glyph = GetTarget()->GetAuraEffect(SPELL_HUNTER_GLYPH_OF_ASPECT_OF_THE_VIPER, EFFECT_0))
                    AddPct(mana, glyph->GetAmount());

                GetTarget()->CastCustomSpell(SPELL_HUNTER_ASPECT_OF_THE_VIPER_ENERGIZE, SPELLVALUE_BASE_POINT0, mana, GetTarget(), true, NULL, aurEff);
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_hun_ascpect_of_the_viper_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_OBS_MOD_POWER);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_hun_ascpect_of_the_viper_AuraScript();
        }
};

// 781 - Disengage
class spell_hun_disengage : public SpellScriptLoader
{
    public:
        spell_hun_disengage() : SpellScriptLoader("spell_hun_disengage") { }

        class spell_hun_disengage_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_disengage_SpellScript);

            SpellCastResult CheckCast()
            {
                Unit* caster = GetCaster();
                if (caster->GetTypeId() == TYPEID_PLAYER && !caster->isInCombat())
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void PostHaste()
            {
                if(!GetCaster())
                    return;
                if(Player* pl = GetCaster()->ToPlayer())
                {
                    if(AuraEffect* auraEff = pl->GetDummyAuraEffect(SPELLFAMILY_HUNTER, 5094, EFFECT_1))
                    {
                        int32 bp0 = auraEff->GetAmount();
                        pl->CastCustomSpell(pl, 83559, &bp0, NULL, NULL, true);
                    }
                }
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_hun_disengage_SpellScript::CheckCast);
                AfterCast += SpellCastFn(spell_hun_disengage_SpellScript::PostHaste);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_disengage_SpellScript();
        }
};

// 53412 - Invigoration
class spell_hun_invigoration : public SpellScriptLoader
{
    public:
        spell_hun_invigoration() : SpellScriptLoader("spell_hun_invigoration") { }

        class spell_hun_invigoration_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_invigoration_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_INVIGORATION_TRIGGERED))
                    return false;
                return true;
            }

            void HandleScriptEffect(SpellEffIndex /*effIndex*/)
            {
                if (Unit* unitTarget = GetHitUnit())
                    if (AuraEffect* aurEff = unitTarget->GetDummyAuraEffect(SPELLFAMILY_HUNTER, 3487, 0))
                        if (roll_chance_i(aurEff->GetAmount()))
                            unitTarget->CastSpell(unitTarget, SPELL_HUNTER_INVIGORATION_TRIGGERED, true);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_hun_invigoration_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_invigoration_SpellScript();
        }
};

// 53478 - Last Stand Pet
class spell_hun_last_stand_pet : public SpellScriptLoader
{
    public:
        spell_hun_last_stand_pet() : SpellScriptLoader("spell_hun_last_stand_pet") { }

        class spell_hun_last_stand_pet_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_last_stand_pet_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_PET_LAST_STAND_TRIGGERED))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                int32 healthModSpellBasePoints0 = int32(caster->CountPctFromMaxHealth(30));
                caster->CastCustomSpell(caster, SPELL_HUNTER_PET_LAST_STAND_TRIGGERED, &healthModSpellBasePoints0, NULL, NULL, true, NULL);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_hun_last_stand_pet_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_last_stand_pet_SpellScript();
        }
};

// 53271 - Masters Call
class spell_hun_masters_call : public SpellScriptLoader
{
    public:
        spell_hun_masters_call() : SpellScriptLoader("spell_hun_masters_call") { }

        class spell_hun_masters_call_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_masters_call_SpellScript);
            
            SpellCastResult CheckCast(){
                Unit* caster = GetCaster();
                Pet* pet = caster->ToPlayer()->GetPet();

                if (!pet || pet->isDead())
                    return SPELL_FAILED_NO_PET;

                return SPELL_CAST_OK;
            }

            bool Validate(SpellInfo const* spellInfo)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_MASTERS_CALL_TRIGGERED) || !sSpellMgr->GetSpellInfo(spellInfo->Effects[EFFECT_0].CalcValue()))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (Player* caster = GetCaster()->ToPlayer())
                {
                    if (Pet* pet = caster->GetPet())
                    {
                        if (Unit * ally = GetHitUnit())
                        {
                            pet->RemoveMovementImpairingAuras();
                            pet->CastSpell(ally, GetEffectValue(), true);
                        }
                    }
                }
            }

            void HandleScriptEffect(SpellEffIndex /*effIndex*/)
            {
                if (Unit* pet = GetHitUnit())
                    pet->CastSpell(pet, SPELL_HUNTER_MASTERS_CALL_TRIGGERED, true);
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_hun_masters_call_SpellScript::CheckCast);
                OnEffectHitTarget += SpellEffectFn(spell_hun_masters_call_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnEffectHitTarget += SpellEffectFn(spell_hun_masters_call_SpellScript::HandleScriptEffect, EFFECT_1, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_masters_call_SpellScript();
        }
};

// 34477 - Misdirection
class spell_hun_misdirection : public SpellScriptLoader
{
    public:
        spell_hun_misdirection() : SpellScriptLoader("spell_hun_misdirection") { }

        class spell_hun_misdirection_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_misdirection_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_MISDIRECTION_PROC))
                    return false;
                return true;
            }

            void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (GetTargetApplication()->GetRemoveMode() != AURA_REMOVE_BY_DEFAULT)
                    GetTarget()->ResetRedirectThreat();
            }

            bool CheckProc(ProcEventInfo& /*eventInfo*/)
            {
                return GetTarget()->GetRedirectThreatTarget();
            }

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& /*eventInfo*/)
            {
                PreventDefaultAction();
                GetTarget()->CastSpell(GetTarget(), SPELL_HUNTER_MISDIRECTION_PROC, true, NULL, aurEff);
            }

            void Register()
            {
                AfterEffectRemove += AuraEffectRemoveFn(spell_hun_misdirection_AuraScript::OnRemove, EFFECT_1, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
                DoCheckProc += AuraCheckProcFn(spell_hun_misdirection_AuraScript::CheckProc);
                OnEffectProc += AuraEffectProcFn(spell_hun_misdirection_AuraScript::HandleProc, EFFECT_1, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_hun_misdirection_AuraScript();
        }
};

// 35079 - Misdirection (Proc)
class spell_hun_misdirection_proc : public SpellScriptLoader
{
    public:
        spell_hun_misdirection_proc() : SpellScriptLoader("spell_hun_misdirection_proc") { }

        class spell_hun_misdirection_proc_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_misdirection_proc_AuraScript);

            void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                GetTarget()->ResetRedirectThreat();
            }

            void Register()
            {
                AfterEffectRemove += AuraEffectRemoveFn(spell_hun_misdirection_proc_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_hun_misdirection_proc_AuraScript();
        }
};

// 54044 - Pet Carrion Feeder
class spell_hun_pet_carrion_feeder : public SpellScriptLoader
{
    public:
        spell_hun_pet_carrion_feeder() : SpellScriptLoader("spell_hun_pet_carrion_feeder") { }

        class spell_hun_pet_carrion_feeder_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_pet_carrion_feeder_SpellScript);

            bool Load()
            {
                if (!GetCaster()->isPet())
                    return false;
                return true;
            }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_PET_CARRION_FEEDER_TRIGGERED))
                    return false;
                return true;
            }

            SpellCastResult CheckIfCorpseNear()
            {
                Unit* caster = GetCaster();
                float max_range = GetSpellInfo()->GetMaxRange(false);
                WorldObject* result = NULL;
                // search for nearby enemy corpse in range
                Trinity::AnyDeadUnitSpellTargetInRangeCheck check(caster, max_range, GetSpellInfo(), TARGET_CHECK_ENEMY);
                Trinity::WorldObjectSearcher<Trinity::AnyDeadUnitSpellTargetInRangeCheck> searcher(caster, result, check);
                caster->GetMap()->VisitFirstFound(caster->m_positionX, caster->m_positionY, max_range, searcher);
                if (!result)
                    return SPELL_FAILED_NO_EDIBLE_CORPSES;
                return SPELL_CAST_OK;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                caster->CastSpell(caster, SPELL_HUNTER_PET_CARRION_FEEDER_TRIGGERED, false);
            }

            void Register()
            {
                OnEffectHit += SpellEffectFn(spell_hun_pet_carrion_feeder_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_hun_pet_carrion_feeder_SpellScript::CheckIfCorpseNear);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_pet_carrion_feeder_SpellScript();
        }
};

// 55709 - Pet Heart of the Phoenix
class spell_hun_pet_heart_of_the_phoenix : public SpellScriptLoader
{
    public:
        spell_hun_pet_heart_of_the_phoenix() : SpellScriptLoader("spell_hun_pet_heart_of_the_phoenix") { }

        class spell_hun_pet_heart_of_the_phoenix_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_pet_heart_of_the_phoenix_SpellScript);

            bool Load()
            {
                if (!GetCaster()->isPet())
                    return false;
                return true;
            }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX_TRIGGERED) || !sSpellMgr->GetSpellInfo(SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX_DEBUFF))
                    return false;
                return true;
            }

            void HandleScript(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Unit* owner = caster->GetOwner())
                {
                    if (!caster->HasAura(SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX_DEBUFF))
                    {
                        int32 bp0 = 100;
                        owner->CastCustomSpell(caster, SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX_TRIGGERED, &bp0, NULL, NULL, true);
                        caster->CastSpell(caster, SPELL_HUNTER_PET_HEART_OF_THE_PHOENIX_DEBUFF, true);
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_hun_pet_heart_of_the_phoenix_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_pet_heart_of_the_phoenix_SpellScript();
        }
};

// 23989 - Readiness
class spell_hun_readiness : public SpellScriptLoader
{
    public:
        spell_hun_readiness() : SpellScriptLoader("spell_hun_readiness") { }

        class spell_hun_readiness_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_readiness_SpellScript);

            bool Load()
            {
                return GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* caster = GetCaster()->ToPlayer();
                // immediately finishes the cooldown on your other Hunter abilities except Bestial Wrath
                const SpellCooldowns& cm = caster->ToPlayer()->GetSpellCooldownMap();
                for (SpellCooldowns::const_iterator itr = cm.begin(); itr != cm.end();)
                {
                    SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(itr->first);

                    ///! If spellId in cooldown map isn't valid, the above will return a null pointer.
                    if (spellInfo &&
                        spellInfo->SpellFamilyName == SPELLFAMILY_HUNTER &&
                        spellInfo->Id != SPELL_HUNTER_READINESS &&
                        spellInfo->Id != SPELL_HUNTER_BESTIAL_WRATH &&
                        spellInfo->Id != SPELL_DRAENEI_GIFT_OF_THE_NAARU &&
                        spellInfo->GetRecoveryTime() > 0)
                        caster->RemoveSpellCooldown((itr++)->first, true);
                    else
                        ++itr;
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_hun_readiness_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_readiness_SpellScript();
        }
};

// 37506 - Scatter Shot
class spell_hun_scatter_shot : public SpellScriptLoader
{
    public:
        spell_hun_scatter_shot() : SpellScriptLoader("spell_hun_scatter_shot") { }

        class spell_hun_scatter_shot_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_scatter_shot_SpellScript);

            bool Load()
            {
                return GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* caster = GetCaster()->ToPlayer();
                // break Auto Shot and autohit
                caster->InterruptSpell(CURRENT_AUTOREPEAT_SPELL);
                caster->AttackStop();
                caster->SendAttackSwingCancelAttack();
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_hun_scatter_shot_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_scatter_shot_SpellScript();
        }
};

// -53302 - Sniper Training
class spell_hun_sniper_training : public SpellScriptLoader
{
    public:
        spell_hun_sniper_training() : SpellScriptLoader("spell_hun_sniper_training") { }

        class spell_hun_sniper_training_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_sniper_training_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_SNIPER_TRAINING_R1) || !sSpellMgr->GetSpellInfo(SPELL_HUNTER_SNIPER_TRAINING_BUFF_R1))
                    return false;
                return true;
            }

            void HandlePeriodic(AuraEffect const* aurEff)
            {
                PreventDefaultAction();
                if (aurEff->GetAmount() <= 0)
                {
                    Unit* caster = GetCaster();
                    uint32 spellId = SPELL_HUNTER_SNIPER_TRAINING_BUFF_R1 + GetId() - SPELL_HUNTER_SNIPER_TRAINING_R1;
                    if (Unit* target = GetTarget())
                        if (!target->HasAura(spellId))
                        {
                            SpellInfo const* triggeredSpellInfo = sSpellMgr->GetSpellInfo(spellId);
                            Unit* triggerCaster = triggeredSpellInfo->NeedsToBeTriggeredByCaster() ? caster : target;
                            triggerCaster->CastSpell(target, triggeredSpellInfo, true, 0, aurEff);
                        }
                }
            }

            void HandleUpdatePeriodic(AuraEffect* aurEff)
            {
                if (Player* playerTarget = GetUnitOwner()->ToPlayer())
                {
                    int32 baseAmount = aurEff->GetBaseAmount();
                    int32 amount = playerTarget->isMoving() ?
                    playerTarget->CalculateSpellDamage(playerTarget, GetSpellInfo(), aurEff->GetEffIndex(), &baseAmount) :
                    aurEff->GetAmount() - 1;
                    aurEff->SetAmount(amount);
                }
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_hun_sniper_training_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
                OnEffectUpdatePeriodic += AuraEffectUpdatePeriodicFn(spell_hun_sniper_training_AuraScript::HandleUpdatePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_hun_sniper_training_AuraScript();
        }
};

// 1515 - Tame Beast
class spell_hun_tame_beast : public SpellScriptLoader
{
    public:
        spell_hun_tame_beast() : SpellScriptLoader("spell_hun_tame_beast") { }

        class spell_hun_tame_beast_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_tame_beast_SpellScript);

            SpellCastResult CheckCast()
            {
                Unit* caster = GetCaster();
                if (caster->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_DONT_REPORT;

                if (!GetExplTargetUnit())
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

                if (Creature* target = GetExplTargetUnit()->ToCreature())
                {
                    if (target->getLevel() > caster->getLevel())
                        return SPELL_FAILED_HIGHLEVEL;

                    // use SMSG_PET_TAME_FAILURE?
                    if (!target->GetCreatureTemplate()->isTameable(caster->ToPlayer()->CanTameExoticPets()))
                        return SPELL_FAILED_BAD_TARGETS;

                    if (caster->GetPetGUID())
                        return SPELL_FAILED_ALREADY_HAVE_SUMMON;

                    if (caster->GetCharmGUID())
                        return SPELL_FAILED_ALREADY_HAVE_CHARM;
                }
                else
                    return SPELL_FAILED_BAD_IMPLICIT_TARGETS;

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_hun_tame_beast_SpellScript::CheckCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_tame_beast_SpellScript();
        }
};

// -24604 - Furious Howl
//  53434 - Call of the Wild
class spell_hun_target_only_pet_and_owner : public SpellScriptLoader
{
    public:
        spell_hun_target_only_pet_and_owner() : SpellScriptLoader("spell_hun_target_only_pet_and_owner") { }

        class spell_hun_target_only_pet_and_owner_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_target_only_pet_and_owner_SpellScript);

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                targets.clear();
                targets.push_back(GetCaster());
                if (Unit* owner = GetCaster()->GetOwner())
                    targets.push_back(owner);
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_hun_target_only_pet_and_owner_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_PARTY);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_hun_target_only_pet_and_owner_SpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_CASTER_AREA_PARTY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_target_only_pet_and_owner_SpellScript();
        }
};

class spell_hun_kill_command : public SpellScriptLoader
{
    public:
        spell_hun_kill_command() : SpellScriptLoader("spell_hun_kill_command") { }

        class spell_hun_kill_command_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_kill_command_SpellScript);

            SpellCastResult CheckTarget()
            {
                if (GetCaster())
                {
                    if (GetCaster()->ToPlayer())
                    {
                        if (Unit* pet = GetCaster()->GetGuardianPet())
                        {
                            if (GetCaster()->ToPlayer()->GetSelectedUnit())
                            {
                                float dist = 0.0f;
                                dist = pet->GetDistance2d(GetCaster()->ToPlayer()->GetSelectedUnit());

                                if (dist > 5.0f)
                                    return SPELL_FAILED_OUT_OF_RANGE;

                                if (!GetCaster()->GetGuardianPet()->isInCombat())
                                    return SPELL_FAILED_AFFECTING_COMBAT;
                            }
                        } else
                            return SPELL_FAILED_NO_PET;
                    }
                }

                return SPELL_CAST_OK;
            }

            void HandleDummy()
            {
                if(Unit* pet = GetCaster()->GetGuardianPet())
                    pet->CastSpell(GetCaster()->getVictim(), 83381);
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_hun_kill_command_SpellScript::CheckTarget);
                BeforeCast  += SpellCastFn(spell_hun_kill_command_SpellScript::HandleDummy);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_kill_command_SpellScript();
        }
};

// Not break Camouflage stealth
class spell_hun_camouflage_ignore : public SpellScriptLoader 
{
    public:
        spell_hun_camouflage_ignore() : SpellScriptLoader("spell_hun_camouflage_ignore") { }

        class spell_hun_camouflage_ignore_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_camouflage_ignore_SpellScript);

            bool Load()
            {
                if(Spell* spell = GetSpell())
                {
                    spell->setTriggerCastFlags(TRIGGERED_IGNORE_AURA_INTERRUPT_FLAGS);
                }

                return true;
            }

            void HandleBeforeCast()
            {
                if(Spell* spell = GetSpell())
                {
                    spell->setTriggerCastFlags(TRIGGERED_NONE);
                }
            }

            void Register()
            {
                BeforeCast  += SpellCastFn(spell_hun_camouflage_ignore_SpellScript::HandleBeforeCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_camouflage_ignore_SpellScript();
        }
};

// 80326 Camouflage
class spell_hun_camouflage: public SpellScriptLoader 
{
    public:
    spell_hun_camouflage() : SpellScriptLoader("spell_hun_camouflage"){ }

    class spell_hun_camouflage_AuraScript: public AuraScript 
    {
        PrepareAuraScript(spell_hun_camouflage_AuraScript)

		void HandlePeriodic(AuraEffect const * aurEff) 
        {
            PreventDefaultAction();
            
            if(Unit * target = GetTarget())
            {
                if (!target->ToPlayer() && !target->ToPet())
				    return;

                if(!target->isMoving())
                {
                    if(!target->HasAura(80325))
                    {
                        target->AddAura(80325, target);
                    }
                }
            }
		}

		void Register() 
        {
			OnEffectPeriodic += AuraEffectPeriodicFn(spell_hun_camouflage_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
		}
    };

    AuraScript* GetAuraScript() const 
    {
        return new spell_hun_camouflage_AuraScript();
    }
};

class spell_hun_basic_attack : public SpellScriptLoader
{
    public:
        spell_hun_basic_attack() : SpellScriptLoader("spell_hun_basic_attack") { }

        class spell_hun_basic_attack_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_basic_attack_SpellScript);

            void HandleDummy()
            {
                Unit* caster = GetCaster();
                if(!caster)
                    return;

                if(Unit* pl = caster->GetOwner())
                {
                    if(Aura* cs = pl->GetAura(53257))       // Cobra Strikes
                    {
                        if(cs->GetStackAmount() == 2)
                            cs->SetStackAmount(1);
                        else
                            cs->Remove();
                    }
                    if(AuraEffect* aurEff = pl->GetAuraEffect(SPELL_AURA_ADD_FLAT_MODIFIER ,SPELLFAMILY_HUNTER, 1562, EFFECT_0))    // Frenzy
                    {
                        int32 bp0 = aurEff->GetAmount();
                        caster->CastCustomSpell(caster, 19615, &bp0, NULL, NULL, true);
                    }
                
                    // Wild Hunt
                    if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_PET, 3748, EFFECT_0))
                    {
                        SpellInfo const* spellProto = GetSpellInfo();

                        if(caster->GetPower(POWER_FOCUS) + spellProto->CalcPowerCost(caster, spellProto->GetSchoolMask()) >= 50)
                        {
                            caster->SetPower(POWER_FOCUS, caster->GetPower(POWER_FOCUS) - spellProto->CalcPowerCost(caster, spellProto->GetSchoolMask()));
                        }
                    }
                }
            }

            void Register()
            {
                AfterCast  += SpellCastFn(spell_hun_basic_attack_SpellScript::HandleDummy);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_basic_attack_SpellScript();
        }
};

class spell_hun_cobra_strikes: public SpellScriptLoader 
{
    public:
    spell_hun_cobra_strikes() : SpellScriptLoader("spell_hun_cobra_strikes"){ }

    class spell_hun_cobra_strikes_AuraScript: public AuraScript 
    {
        PrepareAuraScript(spell_hun_cobra_strikes_AuraScript)

		void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            SetStackAmount(2);
		}

		void Register() 
        {
			OnEffectApply += AuraEffectApplyFn(spell_hun_cobra_strikes_AuraScript::OnApply, EFFECT_0, SPELL_AURA_ADD_FLAT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
		}
    };

    AuraScript* GetAuraScript() const 
    {
        return new spell_hun_cobra_strikes_AuraScript();
    }
};

class spell_hun_focus_fire : public SpellScriptLoader
{
    public:
        spell_hun_focus_fire() : SpellScriptLoader("spell_hun_focus_fire") { }

        class spell_hun_focus_fire_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_focus_fire_SpellScript);
    
            SpellCastResult CheckCast(){
                Unit* caster = GetCaster();
                Pet* pet = caster->ToPlayer()->GetPet();

                if (!pet || pet->isDead())
                    return SPELL_FAILED_NO_PET;

                if (!pet->GetAura(19615))
                    return SPELL_FAILED_NO_CHARGES_REMAIN;

                return SPELL_CAST_OK;
            }

            void HandleDummy()
            {
                if(Unit* pl = GetCaster())
                {
                    if(Unit* pet = pl->GetGuardianPet())
                    {
                        if(Aura* frenzy = pet->GetAura(19615))
                        {
                            if(Aura* ff = pl->AddAura(82692, pl))
                            {
                                uint8 charges = frenzy->GetStackAmount();
                                ff->SetStackAmount(charges-1);
                                int32 focus = pet->GetPower(POWER_FOCUS) + frenzy->GetStackAmount()*4;
                                pet->SetPower(POWER_FOCUS, focus);
                                frenzy->Remove();
                            }
                        }
                    }
                }
                
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_hun_focus_fire_SpellScript::CheckCast);
                OnCast  += SpellCastFn(spell_hun_focus_fire_SpellScript::HandleDummy);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_focus_fire_SpellScript();
        }
};

class spell_hun_chimera_shot : public SpellScriptLoader
{
    public:
        spell_hun_chimera_shot() : SpellScriptLoader("spell_hun_chimera_shot") { }

        class spell_hun_chimera_shot_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_chimera_shot_SpellScript);
                
            void HandleDummy()
            {
                if(!GetCaster())
                    return;

                if(!GetHitUnit())
                    return;

                Unit* pl = GetCaster();
                Unit* target = GetHitUnit();
                pl->CastSpell(pl, 53353, true);
                if(Aura* ss = target->GetAura(1978, pl->GetGUID()))
                {
                    ss->RefreshDuration();
                }

            }

            void Register()
            {
                OnHit += SpellHitFn(spell_hun_chimera_shot_SpellScript::HandleDummy);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_chimera_shot_SpellScript();
        }
};

class spell_hun_trap_launcher_trap : public SpellScriptLoader
{
    public:
        spell_hun_trap_launcher_trap() : SpellScriptLoader("spell_hun_trap_launcher_trap") { }

        class spell_hun_trap_launcher_trap_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_trap_launcher_trap_SpellScript);
                
            void HandleDummy()
            {
               if(!GetCaster())
                   return;
               if(GetCaster()->HasAura(77769))
               {
                   GetCaster()->RemoveAura(77769);
                   GetCaster()->RemoveAura(82946);
               }
            }

            void Register()
            {
                OnCast += SpellCastFn(spell_hun_trap_launcher_trap_SpellScript::HandleDummy);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_trap_launcher_trap_SpellScript();
        }
};

//77767 - Cobra Shot
/// 4.3.4 updated
class spell_hun_cobra_shot : public SpellScriptLoader
{
    public:
        spell_hun_cobra_shot() : SpellScriptLoader("spell_hun_cobra_shot") { }

        class spell_hun_cobra_shot_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_cobra_shot_SpellScript);

            bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_COBRA_SHOT))
                    return false;
                return true;
            }

            void HandleScript(SpellEffIndex effIndex)
            {
                if(Unit * target = GetHitUnit())
                {
                    if(target->GetAura(SPELL_HUNTER_SERPENT_STING_DEBUFF))
                    {
                        uint32 actualDuration = target->GetAura(SPELL_HUNTER_SERPENT_STING_DEBUFF)->GetDuration();
                        if ((actualDuration + 6000) > 16999)
                            target->GetAura(SPELL_HUNTER_SERPENT_STING_DEBUFF)->SetDuration(17000);
                        else
                            target->GetAura(SPELL_HUNTER_SERPENT_STING_DEBUFF)->SetDuration(actualDuration + 6000);
                    }
                }
                
                if(Unit * caster = GetCaster())
                {
                    // Base focus regen
                    int32 bp0 = 9;
                    
                    if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_HUNTER, 2008, EFFECT_0))
                    {
                        if(Unit* target = GetHitUnit())
                        {
                            if(target->GetHealthPct() <= 25.0f)
                            {
                                bp0 += aurEff->GetAmount();
                            }
                        }
                    }

                    caster->CastCustomSpell(caster, SPELL_HUNTER_COBRA_SHOT_ENERGIZE, &bp0, NULL, NULL, true);  
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_hun_cobra_shot_SpellScript::HandleScript, EFFECT_1, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_cobra_shot_SpellScript();
        }
};

class spell_hun_kill_shot : public SpellScriptLoader
{
    public:
        spell_hun_kill_shot() : SpellScriptLoader("spell_hun_kill_shot") { }

        class spell_hun_kill_shot_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_kill_shot_SpellScript);

            bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_KILL_SHOT))
                    return false;
                return true;
            }

            void HandleScript()
            {
                // Glyph of Kill Shot
                if(Unit * caster = GetCaster())
                {
                    if(caster->HasAura(63067) && !caster->HasAura(90967))
                    {
                        if(Unit * target = GetHitUnit())
                        {
                            if(target->isAlive())
                            {
                                caster->ToPlayer()->RemoveSpellCooldown(53351, true);
                                caster->AddAura(90967, caster);
                            }
                        }
                    }
                }
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_hun_kill_shot_SpellScript::HandleScript);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_kill_shot_SpellScript();
        }
};

class spell_hun_multi_shot : public SpellScriptLoader
{
    public:
        spell_hun_multi_shot() : SpellScriptLoader("spell_hun_multi_shot") { }

        class spell_hun_multi_shot_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_hun_multi_shot_SpellScript);

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                std::list<WorldObject*> toAdd;

                for (std::list<WorldObject*>::iterator iter = targets.begin(); iter != targets.end(); ++iter)
                {
                    if ((*iter))
                    {
                        if (Unit* unit = (*iter)->ToUnit())
                        {
                            // No-stealthed unit are saved
                            if(!unit->HasAuraType(SPELL_AURA_MOD_STEALTH))
                            {
                                toAdd.push_back((*iter));
                            }
                        }
                    }
                }

                targets.clear();
                
                for (std::list<WorldObject*>::iterator iter = toAdd.begin(); iter != toAdd.end(); ++iter)
                {
                    targets.push_back((*iter));
                }
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_hun_multi_shot_SpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_DEST_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_hun_multi_shot_SpellScript();
        }
};

// 34497 - Thrill of the Hunt
class spell_hun_thrill_of_the_hunt : public SpellScriptLoader
{
    public:
        spell_hun_thrill_of_the_hunt() : SpellScriptLoader("spell_hun_thrill_of_the_hunt") { }

        class spell_hun_thrill_of_the_hunt_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_hun_thrill_of_the_hunt_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_HUNTER_THRILL_OF_THE_HUNT))
                    return false;
                return true;
            }

            void HandleEffectProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();
                int32 focus = eventInfo.GetDamageInfo()->GetSpellInfo()->CalcPowerCost(GetTarget(), SpellSchoolMask(eventInfo.GetDamageInfo()->GetSchoolMask()));
                focus = CalculatePct(focus, aurEff->GetAmount());

                GetTarget()->CastCustomSpell(GetTarget(), SPELL_HUNTER_THRILL_OF_THE_HUNT, &focus, NULL, NULL, true, NULL, aurEff);
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_hun_thrill_of_the_hunt_AuraScript::HandleEffectProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_hun_thrill_of_the_hunt_AuraScript();
        }
};

// Mend Pet
class spell_hun_mend_pet : public SpellScriptLoader
{
public:
    spell_hun_mend_pet() : SpellScriptLoader("spell_hun_mend_pet") { }
 
    class spell_hun_mend_pet_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_hun_mend_pet_AuraScript);
 
        void HandlePeriodic(AuraEffect const* /*aurEff*/)
        {
            // Improved Mend Pet
            if(Unit* caster = GetCaster())
                if(AuraEffect * aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_HUNTER, 267, EFFECT_0))
                    if(Unit* pet = GetUnitOwner())
                        if(roll_chance_i(aurEff->GetAmount()))
                            caster->CastSpell(pet, 24406, true);
        }
 
        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_hun_mend_pet_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_OBS_MOD_HEALTH);
        }
    };
 
    AuraScript* GetAuraScript() const
    {
        return new spell_hun_mend_pet_AuraScript();
    }
};

void AddSC_hunter_spell_scripts()
{
    new spell_hun_flare();
    new spell_hun_pet_intervene();
    new spell_hun_silencing_shot();
    new spell_hun_aspect_of_the_beast();
    new spell_hun_ascpect_of_the_viper();
    new spell_hun_disengage();
    new spell_hun_invigoration();
    new spell_hun_last_stand_pet();
    new spell_hun_masters_call();
    new spell_hun_misdirection();
    new spell_hun_misdirection_proc();
    new spell_hun_pet_carrion_feeder();
    new spell_hun_pet_heart_of_the_phoenix();
    new spell_hun_readiness();
    new spell_hun_scatter_shot();
    new spell_hun_sniper_training();
    new spell_hun_tame_beast();
    new spell_hun_target_only_pet_and_owner();
    new spell_hun_kill_command();
    new spell_hun_camouflage_ignore();
    new spell_hun_camouflage();
    new spell_hun_basic_attack();
    new spell_hun_cobra_strikes();
    new spell_hun_focus_fire();
    new spell_hun_chimera_shot();
    new spell_hun_trap_launcher_trap();
    new spell_hun_cobra_shot();
    new spell_hun_kill_shot();
    new spell_hun_multi_shot();
    new spell_hun_thrill_of_the_hunt();
    new spell_hun_mend_pet();
}
