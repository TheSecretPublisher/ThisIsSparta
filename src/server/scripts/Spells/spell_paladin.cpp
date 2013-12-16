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
 * Scripts for spells with SPELLFAMILY_PALADIN and SPELLFAMILY_GENERIC spells used by paladin players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_pal_".
 */

#include "Player.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "Group.h"

enum PaladinSpells
{
    SPELL_PALADIN_DIVINE_PLEA                    = 54428,
    SPELL_PALADIN_BLESSING_OF_SANCTUARY_BUFF     = 67480,
    SPELL_PALADIN_BLESSING_OF_SANCTUARY_ENERGIZE = 57319,

    SPELL_PALADIN_HOLY_SHOCK_R1                  = 20473,
    SPELL_PALADIN_HOLY_SHOCK_R1_DAMAGE           = 25912,
    SPELL_PALADIN_HOLY_SHOCK_R1_HEALING          = 25914,

    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_DRUID   = 37878,
    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PALADIN = 37879,
    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PRIEST  = 37880,
    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_SHAMAN  = 37881,

    SPELL_PALADIN_DIVINE_STORM                   = 53385,
    SPELL_PALADIN_DIVINE_STORM_DUMMY             = 54171,
    SPELL_PALADIN_DIVINE_STORM_HEAL              = 54172,

    SPELL_PALADIN_EYE_FOR_AN_EYE_DAMAGE          = 25997,
    
    SPELL_PALADIN_LAY_ON_HANDS                   = 633,
    SPELL_PALADIN_DIVINE_SHIELD                  = 642,
    SPELL_PALADIN_FORBEARANCE                    = 25771,

    SPELL_PALADIN_HAND_OF_SACRIFICE              = 6940,
    SPELL_PALADIN_DIVINE_SACRIFICE               = 64205,

    SPELL_PALADIN_BEACON_OF_LIGHT                = 53563,
    SPELL_PALADIN_BEACON_OF_LIGHT_HEAL           = 53652,

    SPELL_PALADIN_TOWER_OF_RADIANCE              = 88852,

    SPELL_PALADIN_DIVINE_PURPOSE_PROC            = 90174,

    SPELL_PALADIN_GLYPH_OF_SALVATION             = 63225,

    SPELL_PALADIN_GLYPH_OF_EXORCISM              = 54934,

    SPELL_PALADIN_GLYPH_OF_DIVINITY             = 54939,
    SPELL_PALADIN_GLYPH_OF_DIVINITY_ENERGIZE    = 54986,

    SPELL_PALADIN_AVENGER_S_SHIELD               = 31935,

    SPELL_PALADIN_RIGHTEOUS_DEFENSE_TAUNT        = 31790,

    SPELL_PALADIN_SEAL_OF_RIGHTEOUSNESS          = 25742,

    SPELL_PALADIN_SPEED_OF_LIGHT                 = 85497,

    SPELL_PALADIN_AURA_MASTERY                   = 19891,

    SPELL_PALADIN_INQUISITION                    = 84963,

    SPELL_PALADIN_GUARDED_BY_THE_LIGHT_RANK_2    = 85646,
    SPELL_PALADIN_GUARDED_BY_THE_LIGHT_SHIELD    = 88063,

    SPELL_GENERIC_ARENA_DAMPENING                = 74410,
    SPELL_GENERIC_BATTLEGROUND_DAMPENING         = 74411
};

enum PaladinGuardianOfAncientKingsSpells
{
    SPELL_PALADIN_GOAK_HOLY_SUMMON               = 86669,
    SPELL_PALADIN_GOAK_ANCIENT_HEALER            = 86674,

    SPELL_PALADIN_GOAK_PROTECTION_SUMMON         = 86659,

    SPELL_PALADIN_GOAK_RETRIBUTION_SUMMON        = 86698,
    SPELL_PALADIN_GOAK_ANCIENT_POWER             = 86700,
    SPELL_PALADIN_GOAK_ANCIENT_CRUSADER          = 86701,
    SPELL_PALADIN_GOAK_ANCIENT_CRUSADER_GUARDIAN = 86703,
    SPELL_PALADIN_GOAK_ANCIENT_FURY              = 86704,
};

// 879 - Exorcism
class spell_pal_exorcism : public SpellScriptLoader
{
    public:
        spell_pal_exorcism() : SpellScriptLoader("spell_pal_exorcism") { }
        
        class spell_pal_exorcism_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_exorcism_SpellScript);
            
            void HandleAfterCast()
            {
                Unit* caster = GetCaster();
                Unit* target = GetExplTargetUnit();

                if(caster && target)
                {
                    if(!caster->HasAura(SPELL_PALADIN_GLYPH_OF_EXORCISM))
                    {
                        target->RemoveAura(GetSpellInfo()->Id, caster->GetGUID());
                    }
                }
            }

            void Register()
            {
                AfterCast += SpellCastFn(spell_pal_exorcism_SpellScript::HandleAfterCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_exorcism_SpellScript();
        }
};

// 86704 - Ancient Fury
class spell_pal_ancient_fury : public SpellScriptLoader
{
    public:
        spell_pal_ancient_fury() : SpellScriptLoader("spell_pal_ancient_fury") { }

        class spell_pal_ancient_fury_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_ancient_fury_SpellScript);
            
            void CountTargets(std::list<WorldObject*>& targetList)
            {
                _targetCount = targetList.size();
            }

            void ChangeDamage(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();

                if(caster && target && _targetCount)
                {
                    int32 damage = GetHitDamage();

                    if(Aura* aura = caster->GetAura(SPELL_PALADIN_GOAK_ANCIENT_POWER))
                    {
                        damage = caster->GetTotalAttackPowerValue(BASE_ATTACK) * 0.061f * (float)(aura->GetStackAmount() + 1);

                        // "divided evenly among all targets"
                        damage /= _targetCount;
                    }

                    SetHitDamage(damage);
                }
            }
        private:
            uint32 _targetCount;

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_pal_ancient_fury_SpellScript::CountTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
                OnEffectHitTarget += SpellEffectFn(spell_pal_ancient_fury_SpellScript::ChangeDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_ancient_fury_SpellScript();
        }
};

// 4987 - Cleanse
class spell_pal_cleanse : public SpellScriptLoader
{
    public:
        spell_pal_cleanse() : SpellScriptLoader("spell_pal_cleanse") { }

        class spell_pal_cleanse_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_cleanse_SpellScript);
            
            void HandleOnHit()
            {
                Unit* target = GetHitUnit();
                Unit* caster = GetCaster();

                if(!caster || !target)
                    return;
                    
                if(caster == target)
                {
                    // Acts of Sacrifice
                    if(caster->HasAura(85446) || caster->HasAura(85795))
                    {
                        caster->RemoveRandomAuraWithMechanic((1<<MECHANIC_SNARE)|(1<<MECHANIC_ROOT));
                    }
                }
            }

            void Register()
            {
                OnHit += SpellHitFn(spell_pal_cleanse_SpellScript::HandleOnHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_cleanse_SpellScript();
        }
};

// 86698  - Guardian of Ancient Kings Retribution
class spell_pal_guardian_of_ancient_kings_retri : public SpellScriptLoader
{
    public:
        spell_pal_guardian_of_ancient_kings_retri() : SpellScriptLoader("spell_pal_guardian_of_ancient_kings_retri") { }

        class spell_pal_guardian_of_ancient_kings_retri_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_guardian_of_ancient_kings_retri_AuraScript);

            void HandleRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetTarget();

                if (caster && target)
                {
                    if(GetStackAmount())
                    {
                        caster->CastSpell(target, SPELL_PALADIN_GOAK_ANCIENT_FURY, true);
                    }
                }
            }

            void Register()
            {
                OnEffectRemove += AuraEffectRemoveFn(spell_pal_guardian_of_ancient_kings_retri_AuraScript::HandleRemove, EFFECT_2, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_guardian_of_ancient_kings_retri_AuraScript();
        }
};

// 86150 - Guardian of Ancient Kings action bar spell
class spell_pal_guardian_of_ancient_kings : public SpellScriptLoader
{
    public:
        spell_pal_guardian_of_ancient_kings() : SpellScriptLoader("spell_pal_guardian_of_ancient_kings") { }

        class spell_pal_guardian_of_ancient_kings_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_guardian_of_ancient_kings_SpellScript);

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (Unit* caster = GetCaster())
                {
                    if(Player* player = caster->ToPlayer())
                    {
                        switch(player->GetPrimaryTalentTree(player->GetActiveSpec()))
                        {
                            // Holy Guardian
                            case BS_PALADIN_HOLY:
                                caster->CastSpell(caster, SPELL_PALADIN_GOAK_HOLY_SUMMON, true);

                                // 5 stack buff
                                caster->CastSpell(caster, SPELL_PALADIN_GOAK_ANCIENT_HEALER, true);
                                break;
                            // Protection Guardian
                            case BS_PALADIN_PROTECTION:
                                caster->CastSpell(caster, SPELL_PALADIN_GOAK_PROTECTION_SUMMON, true);
                                break;
                            // Retribution Guardian
                            case BS_PALADIN_RETRIBUTION:
                                caster->CastSpell(caster, SPELL_PALADIN_GOAK_RETRIBUTION_SUMMON, true);

                                // Ancient Power proc buff
                                caster->CastSpell(caster, SPELL_PALADIN_GOAK_ANCIENT_CRUSADER, true);
                                break;
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_pal_guardian_of_ancient_kings_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_guardian_of_ancient_kings_SpellScript();
        }
};

// 75806, 85043, 85416 - Grand Crusader
/// Updated 4.3.4
class spell_pal_grand_crusader : public SpellScriptLoader
{
    public:
        spell_pal_grand_crusader() : SpellScriptLoader("spell_pal_grand_crusader") { }

        class spell_pal_grand_crusader_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_grand_crusader_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_AVENGER_S_SHIELD))
                    return false;
                return true;
            }

            void HandleApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster = GetCaster())
                    caster->ToPlayer()->RemoveSpellCooldown(SPELL_PALADIN_AVENGER_S_SHIELD, true);
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_pal_grand_crusader_AuraScript::HandleApply, EFFECT_0, SPELL_AURA_PROC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_grand_crusader_AuraScript();
        }
};

// 85117, 86172 - Divine Purpose
class spell_pal_divine_purpose : public SpellScriptLoader
{
    public:
        spell_pal_divine_purpose() : SpellScriptLoader("spell_pal_divine_purpose") { }

        class spell_pal_divine_purpose_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_divine_purpose_AuraScript);

            bool CheckProc(ProcEventInfo& eventInfo)
            {
                if(eventInfo.GetDamageInfo() 
                    && eventInfo.GetDamageInfo()->GetSpellInfo() 
                    && eventInfo.GetDamageInfo()->GetSpellInfo()->Id == SPELL_PALADIN_DIVINE_STORM)
                {
                    return eventInfo.GetDamageInfo()->GetDamage();
                }
                else
                    return true;
            }

            void Register()
            {
                DoCheckProc += AuraCheckProcFn(spell_pal_divine_purpose_AuraScript::CheckProc);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_divine_purpose_AuraScript();
        }
};

// 84963 - Inquisition
class spell_pal_inquisition : public SpellScriptLoader
{
    public:
        spell_pal_inquisition() : SpellScriptLoader("spell_pal_inquisition") { }

        class spell_pal_inquisition_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_inquisition_SpellScript);
            
            void HandleBeforeCast()
            {
                if(Unit* caster = GetCaster())
                {
                    

                    if (caster->HasAura(SPELL_PALADIN_DIVINE_PURPOSE_PROC))
                    {
                        calculatedDuration = 12;

                        caster->RemoveAurasDueToSpell(SPELL_PALADIN_DIVINE_PURPOSE_PROC);
                    }
                    else
                    {
                        calculatedDuration = caster->GetPower(POWER_HOLY_POWER) * 4;

                        // If the Divine Purpose is not active, gives to Inquisition the normal behaviour
                        caster->SetPower(POWER_HOLY_POWER, 0);
                    }
                    
                    // Inquiry of Faith
                    if(AuraEffect* aurEff = caster->GetAuraEffect(SPELL_AURA_ADD_PCT_MODIFIER, SPELLFAMILY_PALADIN, 3025, EFFECT_1))
                        AddPct(calculatedDuration, float(aurEff->GetAmount()));
                }
            }
            
            void HandleAfterCast()
            {
                if(Unit* caster = GetCaster())
                {
                    if (Aura* aura = caster->GetAura(SPELL_PALADIN_INQUISITION))
                    {
                        if(calculatedDuration)
                        {
                            aura->SetDuration(calculatedDuration * IN_MILLISECONDS);
                        }
                    }
                }
            }

        private:
            int32 calculatedDuration;

            void Register()
            {
                BeforeCast += SpellCastFn(spell_pal_inquisition_SpellScript::HandleBeforeCast);
                AfterCast += SpellCastFn(spell_pal_inquisition_SpellScript::HandleAfterCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_inquisition_SpellScript();
        }
};

// 90811 - Selfless (Selfless Healer spell)
class spell_pal_selfless : public SpellScriptLoader
{
    public:
        spell_pal_selfless() : SpellScriptLoader("spell_pal_selfless") { }

        class spell_pal_selfless_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_selfless_AuraScript);

            void ChangeAmountDamage(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = false;

                if (Unit* caster = GetCaster())
                {
                    if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_PALADIN, 3924, EFFECT_1))
                    {
                        if(int32 woGHP = caster->GetWordOfGloryHolyPower())
                        {
                            amount = aurEff->GetAmount() * woGHP;
                        }
                    }
                }       
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_selfless_AuraScript::ChangeAmountDamage, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_selfless_AuraScript();
        }

};

// 85673 Word of Glory
class spell_paladin_word_of_glory : public SpellScriptLoader
{
    public:
        spell_paladin_word_of_glory() : SpellScriptLoader("spell_paladin_word_of_glory") { }

        class spell_paladin_word_of_glory_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_paladin_word_of_glory_SpellScript);
            
            void HandleBeforeCast()
            {
                if(Unit* caster = GetCaster())
                {
                    if (caster->HasAura(SPELL_PALADIN_DIVINE_PURPOSE_PROC))
                    {
                        restoreHolyPower = true;
                        realHolyPower = caster->GetPower(POWER_HOLY_POWER);
                        caster->SetWordOfGloryHolyPower(3);
                    }
                    else
                    {
                        restoreHolyPower = false;
                        caster->SetWordOfGloryHolyPower(caster->GetPower(POWER_HOLY_POWER));
                    }
                }
            }

            void HandleAfterCast()
            {
                if(Unit* caster = GetCaster())
                {
                    // Eternal Glory
                    if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_PALADIN, 2944, EFFECT_0))
                    {
                        if(roll_chance_i(aurEff->GetAmount()))
                        {
                            int32 bp0 = caster->GetWordOfGloryHolyPower();
                            caster->SetPower(POWER_HOLY_POWER, bp0);
                        }
                    }

                    // Restore Holy Power from Divine Purpose
                    if(restoreHolyPower && realHolyPower)
                    {
                        caster->SetPower(POWER_HOLY_POWER, realHolyPower);
                    }
                }
            }
            
            void HandleOnEffectHit(SpellEffIndex /*effIndex*/) 
            {
                if(Unit* caster = GetCaster())
                {
                    // Guarded by the Light rank 2 check
                    if(caster->HasAura(SPELL_PALADIN_GUARDED_BY_THE_LIGHT_RANK_2))
                    {
                        uint32 currHealth = caster->GetHealth();
                        uint32 maxHealth = caster->GetMaxHealth();
                        int32 overHeal = (currHealth + GetHitHeal()) - maxHealth;

                        if(overHeal > 0)
                        {
                            // Overheal shield
                            caster->CastCustomSpell(caster, SPELL_PALADIN_GUARDED_BY_THE_LIGHT_SHIELD, &overHeal, NULL, NULL, true);
                        }
                    }
                }
            }

        private:
            bool restoreHolyPower;
            int8 realHolyPower;

            void Register()
            {
                BeforeCast += SpellCastFn(spell_paladin_word_of_glory_SpellScript::HandleBeforeCast);
                AfterCast += SpellCastFn(spell_paladin_word_of_glory_SpellScript::HandleAfterCast);
                OnEffectHitTarget += SpellEffectFn(spell_paladin_word_of_glory_SpellScript::HandleOnEffectHit, EFFECT_0, SPELL_EFFECT_HEAL);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_paladin_word_of_glory_SpellScript();
        }
};

// 465, 19746, 19891 Communion ammount with auras
class spell_pal_communion : public SpellScriptLoader
{
    public:
        spell_pal_communion() : SpellScriptLoader("spell_pal_communion") { }

        class spell_pal_communion_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_communion_AuraScript);

            void ChangeAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = false;

                if (Unit* caster = GetCaster())
                {
                    if(caster->HasAura(31876))
                        amount = 3;
                }       
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_communion_AuraScript::ChangeAmount, EFFECT_1, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_communion_AuraScript();
        }
};

// 53600 - Shield of the Righteous
/// Updated 4.3.4
class spell_pal_shield_of_the_righteous : public SpellScriptLoader
{
    public:
        spell_pal_shield_of_the_righteous() : SpellScriptLoader("spell_pal_shield_of_the_righteous") { }

        class spell_pal_shield_of_the_righteous_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_shield_of_the_righteous_SpellScript);

            bool Load()
            {
                if(!GetCaster())
                    return false;

                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return false;

                if (GetCaster()->ToPlayer()->getClass() != CLASS_PALADIN)
                    return false;

                return true;
            }

            void ChangeDamage(SpellEffIndex /*effIndex*/)
            {
                if(Unit * caster = GetCaster()->ToPlayer())
                {
                    int32 damage = GetHitDamage();

                    // Because 1 Holy Power (HP) is consumed when casting spell,
                    // GetPower(POWER_HOLY_POWER) will return 0 when player has 1 HP,
                    // return 1 at 2 HP, and 2 at 3 HP
                    int32 hp = caster->GetPower(POWER_HOLY_POWER);

                    
                    // Holy Power Scaling: 3 times damage at 2 HP, 6 times at 3 HP
                    int32 bonus = 0.5 * hp * hp + 1.5 * hp + 1;
                    
                    damage *= bonus;
                    // 0.1 (1 hp) or 0.3 (2 hp) or 0.6 (3 hp) * AP
                    damage += caster->GetTotalAttackPowerValue(BASE_ATTACK) * bonus / 10;

                    SetHitDamage(damage);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_pal_shield_of_the_righteous_SpellScript::ChangeDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_shield_of_the_righteous_SpellScript();
        }
};

// 31850 - Ardent Defender
class spell_pal_ardent_defender : public SpellScriptLoader
{
    public:
        spell_pal_ardent_defender() : SpellScriptLoader("spell_pal_ardent_defender") { }

        class spell_pal_ardent_defender_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_ardent_defender_AuraScript);

            uint32 absorbPct, healPct;

            enum Spell
            {
                PAL_SPELL_ARDENT_DEFENDER_HEAL = 66235,
            };

            bool Load()
            {
                healPct = GetSpellInfo()->Effects[EFFECT_1].CalcValue();
                absorbPct = GetSpellInfo()->Effects[EFFECT_0].CalcValue();
                return GetUnitOwner()->GetTypeId() == TYPEID_PLAYER;
            }

            void CalculateAmount(AuraEffect const* aurEff, int32 & amount, bool & canBeRecalculated)
            {
                // Set absorbtion amount to unlimited
                amount = -1;
            }

            void Absorb(AuraEffect* aurEff, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                if(Unit* victim = GetTarget())
                {
                    uint32 allowedHealth = victim->CountPctFromMaxHealth(100);
                    int32 remainingHealth = victim->GetHealth() - dmgInfo.GetDamage();

                    if (remainingHealth <= 0 && !victim->ToPlayer()->HasSpellCooldown(PAL_SPELL_ARDENT_DEFENDER_HEAL))
                    {
                        int32 healAmount = int32(victim->CountPctFromMaxHealth(15));
                        victim->CastCustomSpell(victim, PAL_SPELL_ARDENT_DEFENDER_HEAL, &healAmount, NULL, NULL, true, NULL, aurEff);
                    }
                    else
                    {
                        uint32 damageToReduce = (victim->GetHealth() <= allowedHealth)
                            ? dmgInfo.GetDamage()
                            : allowedHealth - remainingHealth;
                        absorbAmount = CalculatePct(damageToReduce, absorbPct);
                    }
                }
            }

            void Register()
            {
                 DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_ardent_defender_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
                 OnEffectAbsorb += AuraEffectAbsorbFn(spell_pal_ardent_defender_AuraScript::Absorb, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_ardent_defender_AuraScript();
        }
};

// 633-642-1022 - Forberance handler
class spell_pal_forberance_handler : public SpellScriptLoader
{
    public:
        spell_pal_forberance_handler() : SpellScriptLoader("spell_pal_forberance_handler") { }

        class spell_pal_forberance_handler_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_forberance_handler_SpellScript);

            SpellCastResult CheckCast()
            {
                Unit* target = GetExplTargetUnit();
                Unit* caster = GetCaster();

                if(!caster)
                    return SPELL_FAILED_NO_VALID_TARGETS;

                if(GetSpellInfo()->Id == SPELL_PALADIN_DIVINE_SHIELD)
                    target = caster;

                // Unit check is done in two steps because for Divine Shield GetExplTargetUnit() doesn't return the real spell target (the paladin himself)
                if(!target)
                    return SPELL_FAILED_NO_VALID_TARGETS;

                if (target->HasAura(SPELL_PALADIN_FORBEARANCE))
                    return SPELL_FAILED_NO_VALID_TARGETS;

                return SPELL_CAST_OK;
            }
            
            void HandleAfterHit()
            {
                Unit* target = GetHitUnit();
                Unit* caster = GetCaster();

                if(!caster || !target)
                    return;

                // Avoid Forberance application if target is not the paladin himself
                if(GetSpellInfo()->Id == SPELL_PALADIN_LAY_ON_HANDS && caster != target)
                    return;

                caster->CastSpell(target, SPELL_PALADIN_FORBEARANCE, true);
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_pal_forberance_handler_SpellScript::CheckCast);
                AfterHit += SpellHitFn(spell_pal_forberance_handler_SpellScript::HandleAfterHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_forberance_handler_SpellScript();
        }
};

// 2812 - Holy Wrath
class spell_pal_holy_wrath : public SpellScriptLoader
{
    public:
        spell_pal_holy_wrath() : SpellScriptLoader("spell_pal_holy_wrath") { }
        
        class spell_pal_holy_wrath_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_holy_wrath_SpellScript);

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
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_pal_holy_wrath_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
            }
        };

        class spell_pal_holy_wrath_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_holy_wrath_AuraScript);

            bool CheckAreaTarget(Unit* target)
            {
                if(target &&
                    !(target->GetCreatureType() == CREATURE_TYPE_DEMON || target->GetCreatureType() == CREATURE_TYPE_UNDEAD)
                    || target->HasAuraType(SPELL_AURA_MOD_STEALTH))
                {
                    return false;
                }

                return true;
            }
            void Register()
            {
                DoCheckAreaTarget += AuraCheckAreaTargetFn(spell_pal_holy_wrath_AuraScript::CheckAreaTarget);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_holy_wrath_SpellScript();
        }

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_holy_wrath_AuraScript();
        }
};

// 85222 - Light of Dawn
class spell_pal_light_of_dawn: public SpellScriptLoader
{
    public:
        spell_pal_light_of_dawn() : SpellScriptLoader("spell_pal_light_of_dawn") { }

        class spell_pal_light_of_dawn_SpellScript : public SpellScript 
        {
            PrepareSpellScript(spell_pal_light_of_dawn_SpellScript);

            bool Load() 
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return false;

                return true;
            }

            void ChangeHeal0(SpellEffIndex /*effIndex*/) 
            {
                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();
                
                if (!caster || caster == target)
                    return;

                switch (caster->GetPower(POWER_HOLY_POWER)) 
                {
                    case 0: // 1 Holy Power
                    {
                        totalheal = GetHitHeal();
                        break;
                    }
                    case 1: // 2 Holy Power
                    {
                        totalheal = GetHitHeal() * 2;
                        break;
                    }
                    case 2: // 3 Holy Power
                    {
                        totalheal = GetHitHeal() * 3;
                        break;
                    }
                }

                SetHitHeal(totalheal);
            }
            
            void ChangeHeal1(SpellEffIndex /*effIndex*/) 
            {
                if (Unit* caster = GetCaster())
                {
                    switch (caster->GetPower(POWER_HOLY_POWER)) 
                    {
                        case 0: // 1 Holy Power
                        {
                            totalheal = GetHitHeal();
                            break;
                        }
                        case 1: // 2 Holy Power
                        {
                            totalheal = GetHitHeal() * 2;
                            break;
                        }
                        case 2: // 3 Holy Power
                        {
                            totalheal = GetHitHeal() * 3;
                            break;
                        }
                    }
                    SetHitHeal(totalheal);

                    caster->SetPower(POWER_HOLY_POWER, 0);
                }
            }


        private:
            uint32 totalheal;

            void Register() 
            {
                OnEffectHitTarget += SpellEffectFn(spell_pal_light_of_dawn_SpellScript::ChangeHeal0, EFFECT_0, SPELL_EFFECT_HEAL);
                OnEffectHitTarget += SpellEffectFn(spell_pal_light_of_dawn_SpellScript::ChangeHeal1, EFFECT_1, SPELL_EFFECT_HEAL);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_light_of_dawn_SpellScript();
        }
};

// 53651 - Light's Beacon - Beacon of Light
class spell_pal_lights_beacon : public SpellScriptLoader
{
    public:
        spell_pal_lights_beacon() : SpellScriptLoader("spell_pal_lights_beacon") { }

        class spell_pal_lights_beacon_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_lights_beacon_AuraScript);

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();

                Unit* beaconOwner = GetCaster();
                Unit* healTarget = GetTarget();
                Unit* paladinMaster = eventInfo.GetProcTarget();

                if (!beaconOwner || !healTarget || !paladinMaster)
                    return;

                //Check if it was heal by paladin which casted this beacon of light
                if (beaconOwner->GetAura(SPELL_PALADIN_BEACON_OF_LIGHT, paladinMaster->GetGUID()))
                {
                    if (beaconOwner->IsWithinLOSInMap(paladinMaster))
                    {
                        int32 mod = 100;
                        bool towerOfRadiance = false;
                        
                        switch (eventInfo.GetDamageInfo()->GetSpellInfo()->Id)
                        {
                            case 19750: // Flash of Light
                            case 82326: // Divine Light
                                towerOfRadiance = true;
                            case 85673: // Word of Glory
                            case 25914: // Holy Shock
                            case 85222: // Light of Dawn
                                mod = 50; // 50% heal from these spells
                                break;
                            case 635:   // Holy Light
                                mod = 100; // 100% heal from Holy Light
                                break;
                            default:
                                return;
                        }

                        // False when target of heal is beaconed
                        if (beaconOwner == healTarget)
                        {
                            // Tower of Radiance talent
                            if(towerOfRadiance)
                                if(AuraEffect* aurEff = paladinMaster->GetDummyAuraEffect(SPELLFAMILY_PALADIN, 3402, EFFECT_0))
                                    if(roll_chance_i(aurEff->GetAmount()))
                                        paladinMaster->CastSpell(paladinMaster, SPELL_PALADIN_TOWER_OF_RADIANCE, true);
                            return;
                        }

                        int32 basepoints0 = CalculatePct(eventInfo.GetDamageInfo()->GetDamage(), mod);

                        paladinMaster->CastCustomSpell(beaconOwner, SPELL_PALADIN_BEACON_OF_LIGHT_HEAL, &basepoints0, NULL, NULL, true);
                    }
                }
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_pal_lights_beacon_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_lights_beacon_AuraScript();
        }
};

// 20138/20139/20140 - Protector of the Innocent
class spell_pal_protector_of_the_innocent : public SpellScriptLoader
{
    public:
        spell_pal_protector_of_the_innocent() : SpellScriptLoader("spell_pal_protector_of_the_innocent") { }

        class spell_pal_protector_of_the_innocent_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_protector_of_the_innocent_AuraScript);

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();

                Unit * caster = GetCaster();
                Unit * target = eventInfo.GetProcTarget();

                if (!caster || !target)
                    return;

                if(caster != target)
                    caster->CastSpell(caster, GetSpellInfo()->Effects[EFFECT_0].BasePoints, true);
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_pal_protector_of_the_innocent_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_protector_of_the_innocent_AuraScript();
        }
};

// 89023 - Blessed Life
class spell_pal_blessed_life : public SpellScriptLoader
{
public:
    spell_pal_blessed_life() : SpellScriptLoader("spell_pal_blessed_life") { }

    class spell_pal_blessed_life_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_blessed_life_SpellScript);

        void HandleAfterCast()
        {
            Unit * caster = GetCaster();

            if (!caster || !caster->ToPlayer())
                return;
            
            caster->ToPlayer()->AddSpellCooldown(GetSpellInfo()->Id, 0, time(NULL) + 8);
        }

        void Register()
        {
            AfterCast += SpellCastFn(spell_pal_blessed_life_SpellScript::HandleAfterCast);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_pal_blessed_life_SpellScript();
    }
};

// 31821 - Aura Mastery
class spell_pal_aura_mastery: public SpellScriptLoader
{
public:
    spell_pal_aura_mastery() : SpellScriptLoader("spell_pal_aura_mastery"){ }

    class spell_pal_aura_mastery_AuraScript: public AuraScript
    {
        PrepareAuraScript(spell_pal_aura_mastery_AuraScript);

        void HandleApply(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
        {
            if(Unit* caster = GetCaster())
            {
                if(AuraEffect* auraMasteryAurEff = caster->GetAuraEffect(SPELL_PALADIN_AURA_MASTERY, EFFECT_0, caster->GetGUID()))
                {
                    int32 resist = caster->getLevel();

                    if (resist > 70 && resist < 81)
                        resist += (resist - 70) * 5;
                    else if (resist > 80)
                        resist += ((resist-70) * 5 + (resist - 80) * 7);

                    AddPct(resist, aurEff->GetAmount());

                    auraMasteryAurEff->ChangeAmount(resist);
                }
            }
        }

        void HandleRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if(Unit* caster = GetCaster())
            {
                if(AuraEffect* auraMasteryAurEff = caster->GetAuraEffect(SPELL_PALADIN_AURA_MASTERY, EFFECT_0, caster->GetGUID()))
                {
                    int32 resist = caster->getLevel();

                    if (resist > 70 && resist < 81)
                        resist += (resist - 70) * 5;
                    else if (resist > 80)
                        resist += ((resist-70) * 5 + (resist - 80) * 7);

                    auraMasteryAurEff->ChangeAmount(resist);
                }
            }
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_pal_aura_mastery_AuraScript::HandleApply, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
            OnEffectRemove += AuraEffectRemoveFn(spell_pal_aura_mastery_AuraScript::HandleRemove, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_pal_aura_mastery_AuraScript();
    }
};

// 498 - Divine Protection
class spell_pal_divine_protection : public SpellScriptLoader
{
public:
    spell_pal_divine_protection() : SpellScriptLoader("spell_pal_divine_protection") { }

    class spell_pal_divine_protection_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_divine_protection_SpellScript);

        void HandleOnCast()
        {
            Unit * caster = GetCaster();

            if (!caster)
                return;
            
            // Speed of Light
            if (caster->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_PALADIN, 5062, EFFECT_1))
                caster->CastSpell(caster, SPELL_PALADIN_SPEED_OF_LIGHT, false);
        }

        void Register()
        {
            OnCast += SpellCastFn(spell_pal_divine_protection_SpellScript::HandleOnCast);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_pal_divine_protection_SpellScript();
    }
};

// 37877 - Blessing of Faith
class spell_pal_blessing_of_faith : public SpellScriptLoader
{
    public:
        spell_pal_blessing_of_faith() : SpellScriptLoader("spell_pal_blessing_of_faith") { }

        class spell_pal_blessing_of_faith_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_blessing_of_faith_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_BLESSING_OF_LOWER_CITY_DRUID) || !sSpellMgr->GetSpellInfo(SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PALADIN) || !sSpellMgr->GetSpellInfo(SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PRIEST) || !sSpellMgr->GetSpellInfo(SPELL_PALADIN_BLESSING_OF_LOWER_CITY_SHAMAN))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (Unit* unitTarget = GetHitUnit())
                {
                    uint32 spell_id = 0;
                    switch (unitTarget->getClass())
                    {
                        case CLASS_DRUID:
                            spell_id = SPELL_PALADIN_BLESSING_OF_LOWER_CITY_DRUID;
                            break;
                        case CLASS_PALADIN:
                            spell_id = SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PALADIN;
                            break;
                        case CLASS_PRIEST:
                            spell_id = SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PRIEST;
                            break;
                        case CLASS_SHAMAN:
                            spell_id = SPELL_PALADIN_BLESSING_OF_LOWER_CITY_SHAMAN;
                            break;
                        default:
                            return; // ignore for non-healing classes
                    }
                    Unit* caster = GetCaster();
                    caster->CastSpell(caster, spell_id, true);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_pal_blessing_of_faith_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_blessing_of_faith_SpellScript();
        }
};

// 20911 - Blessing of Sanctuary
// 25899 - Greater Blessing of Sanctuary
class spell_pal_blessing_of_sanctuary : public SpellScriptLoader
{
    public:
        spell_pal_blessing_of_sanctuary() : SpellScriptLoader("spell_pal_blessing_of_sanctuary") { }

        class spell_pal_blessing_of_sanctuary_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_blessing_of_sanctuary_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_BLESSING_OF_SANCTUARY_BUFF))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_BLESSING_OF_SANCTUARY_ENERGIZE))
                    return false;
                return true;
            }

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* target = GetTarget();
                if (Unit* caster = GetCaster())
                    caster->CastSpell(target, SPELL_PALADIN_BLESSING_OF_SANCTUARY_BUFF, true);
            }

            void HandleEffectRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* target = GetTarget();
                target->RemoveAura(SPELL_PALADIN_BLESSING_OF_SANCTUARY_BUFF, GetCasterGUID());
            }

            bool CheckProc(ProcEventInfo& /*eventInfo*/)
            {
                return GetTarget()->getPowerType() == POWER_MANA;
            }

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& /*eventInfo*/)
            {
                PreventDefaultAction();
                GetTarget()->CastSpell(GetTarget(), SPELL_PALADIN_BLESSING_OF_SANCTUARY_ENERGIZE, true, NULL, aurEff);
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_pal_blessing_of_sanctuary_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
                AfterEffectRemove += AuraEffectRemoveFn(spell_pal_blessing_of_sanctuary_AuraScript::HandleEffectRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
                DoCheckProc += AuraCheckProcFn(spell_pal_blessing_of_sanctuary_AuraScript::CheckProc);
                OnEffectProc += AuraEffectProcFn(spell_pal_blessing_of_sanctuary_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_blessing_of_sanctuary_AuraScript();
        }
};

// 64205 - Divine Sacrifice
class spell_pal_divine_sacrifice : public SpellScriptLoader
{
    public:
        spell_pal_divine_sacrifice() : SpellScriptLoader("spell_pal_divine_sacrifice") { }

        class spell_pal_divine_sacrifice_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_divine_sacrifice_AuraScript);

            uint32 groupSize, minHpPct;
            int32 remainingAmount;

            bool Load()
            {

                if (Unit* caster = GetCaster())
                {
                    if (caster->GetTypeId() == TYPEID_PLAYER)
                    {
                        if (caster->ToPlayer()->GetGroup())
                            groupSize = caster->ToPlayer()->GetGroup()->GetMembersCount();
                        else
                            groupSize = 1;
                    }
                    else
                        return false;

                    remainingAmount = (caster->CountPctFromMaxHealth(GetSpellInfo()->Effects[EFFECT_2].CalcValue(caster)) * groupSize);
                    minHpPct = GetSpellInfo()->Effects[EFFECT_1].CalcValue(caster);
                    return true;
                }
                return false;
            }

            void Split(AuraEffect* /*aurEff*/, DamageInfo & /*dmgInfo*/, uint32 & splitAmount)
            {
                remainingAmount -= splitAmount;
                // break when absorbed everything it could, or if the casters hp drops below 20%
                if (Unit* caster = GetCaster())
                    if (remainingAmount <= 0 || (caster->GetHealthPct() < minHpPct))
                        caster->RemoveAura(SPELL_PALADIN_DIVINE_SACRIFICE);
            }

            void Register()
            {
                OnEffectSplit += AuraEffectSplitFn(spell_pal_divine_sacrifice_AuraScript::Split, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_divine_sacrifice_AuraScript();
        }
};

// 53385 - Divine Storm
class spell_pal_divine_storm : public SpellScriptLoader
{
    public:
        spell_pal_divine_storm() : SpellScriptLoader("spell_pal_divine_storm") { }

        class spell_pal_divine_storm_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_divine_storm_SpellScript);

            uint32 healPct;

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_DIVINE_STORM_DUMMY))
                    return false;
                return true;
            }

            bool Load()
            {
                healPct = GetSpellInfo()->Effects[EFFECT_1].CalcValue(GetCaster());
                return true;
            }

            void TriggerHeal()
            {
                Unit* caster = GetCaster();
                caster->CastCustomSpell(SPELL_PALADIN_DIVINE_STORM_DUMMY, SPELLVALUE_BASE_POINT0, (GetHitDamage() * healPct) / 100, caster, true);
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_pal_divine_storm_SpellScript::TriggerHeal);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_divine_storm_SpellScript();
        }
};

// 54171 - Divine Storm (Dummy)
class spell_pal_divine_storm_dummy : public SpellScriptLoader
{
    public:
        spell_pal_divine_storm_dummy() : SpellScriptLoader("spell_pal_divine_storm_dummy") { }

        class spell_pal_divine_storm_dummy_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_divine_storm_dummy_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_DIVINE_STORM_HEAL))
                    return false;
                return true;
            }

            void CountTargets(std::list<WorldObject*>& targetList)
            {
                _targetCount = targetList.size();
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (!_targetCount || ! GetHitUnit())
                    return;

                int32 heal = GetEffectValue() / _targetCount;
                GetCaster()->CastCustomSpell(GetHitUnit(), SPELL_PALADIN_DIVINE_STORM_HEAL, &heal, NULL, NULL, true);
            }
        private:
            uint32 _targetCount;

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_pal_divine_storm_dummy_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_pal_divine_storm_dummy_SpellScript::CountTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_RAID);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_divine_storm_dummy_SpellScript();
        }
};

// 33695 - Exorcism and Holy Wrath Damage
class spell_pal_exorcism_and_holy_wrath_damage : public SpellScriptLoader
{
    public:
        spell_pal_exorcism_and_holy_wrath_damage() : SpellScriptLoader("spell_pal_exorcism_and_holy_wrath_damage") { }

        class spell_pal_exorcism_and_holy_wrath_damage_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_exorcism_and_holy_wrath_damage_AuraScript);

            void HandleEffectCalcSpellMod(AuraEffect const* aurEff, SpellModifier*& spellMod)
            {
                if (!spellMod)
                {
                    spellMod = new SpellModifier(aurEff->GetBase());
                    spellMod->op = SPELLMOD_DAMAGE;
                    spellMod->type = SPELLMOD_FLAT;
                    spellMod->spellId = GetId();
                    spellMod->mask[1] = 0x200002;
                }

                spellMod->value = aurEff->GetAmount();
            }

            void Register()
            {
                DoEffectCalcSpellMod += AuraEffectCalcSpellModFn(spell_pal_exorcism_and_holy_wrath_damage_AuraScript::HandleEffectCalcSpellMod, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_exorcism_and_holy_wrath_damage_AuraScript();
        }
};

// 9799/25988  - Eye for an Eye
class spell_pal_eye_for_an_eye : public SpellScriptLoader
{
    public:
        spell_pal_eye_for_an_eye() : SpellScriptLoader("spell_pal_eye_for_an_eye") { }

        class spell_pal_eye_for_an_eye_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_eye_for_an_eye_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_EYE_FOR_AN_EYE_DAMAGE))
                    return false;
                return true;
            }

            void OnProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();

                if(Unit* target = GetTarget())
                {
                    if(Unit* procTarget = eventInfo.GetProcTarget())
                    {
                        if(eventInfo.GetDamageInfo())
                        {
                            if(uint32 procDamage = eventInfo.GetDamageInfo()->GetDamage())
                            {
                                // return damage % to attacker but < 50% own total health
                                int32 damage = int32(std::min(CalculatePct(procDamage, aurEff->GetAmount()), target->GetMaxHealth() / 2));
                                target->CastCustomSpell(SPELL_PALADIN_EYE_FOR_AN_EYE_DAMAGE, SPELLVALUE_BASE_POINT0, damage, procTarget, true, NULL, aurEff);
                            }
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_pal_eye_for_an_eye_AuraScript::OnProc, EFFECT_0, SPELL_AURA_DUMMY);
                OnEffectProc += AuraEffectProcFn(spell_pal_eye_for_an_eye_AuraScript::OnProc, EFFECT_0, SPELL_AURA_PROC_TRIGGER_SPELL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_eye_for_an_eye_AuraScript();
        }
};

// 63521 - Guarded by The Light
class spell_pal_guarded_by_the_light : public SpellScriptLoader
{
    public:
        spell_pal_guarded_by_the_light() : SpellScriptLoader("spell_pal_guarded_by_the_light") { }

        class spell_pal_guarded_by_the_light_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_guarded_by_the_light_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_DIVINE_PLEA))
                    return false;
                return true;
            }

            void HandleScriptEffect(SpellEffIndex /*effIndex*/)
            {
                // Divine Plea
                if (Aura* aura = GetCaster()->GetAura(SPELL_PALADIN_DIVINE_PLEA))
                    aura->RefreshDuration();
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_pal_guarded_by_the_light_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_guarded_by_the_light_SpellScript();
        }
};

// 6940 - Hand of Sacrifice
class spell_pal_hand_of_sacrifice : public SpellScriptLoader
{
    public:
        spell_pal_hand_of_sacrifice() : SpellScriptLoader("spell_pal_hand_of_sacrifice") { }

        class spell_pal_hand_of_sacrifice_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_hand_of_sacrifice_AuraScript);

            int32 remainingAmount;

            bool Load()
            {
                if (Unit* caster = GetCaster())
                {
                    remainingAmount = caster->GetMaxHealth();
                    return true;
                }
                return false;
            }

            void Split(AuraEffect* /*aurEff*/, DamageInfo & /*dmgInfo*/, uint32 & splitAmount)
            {
                remainingAmount -= splitAmount;

                if (remainingAmount <= 0)
                {
                    GetTarget()->RemoveAura(SPELL_PALADIN_HAND_OF_SACRIFICE);
                }
            }

            void Register()
            {
                OnEffectSplit += AuraEffectSplitFn(spell_pal_hand_of_sacrifice_AuraScript::Split, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_hand_of_sacrifice_AuraScript();
        }
};

// 1038 - Hand of Salvation
class spell_pal_hand_of_salvation : public SpellScriptLoader
{
    public:
        spell_pal_hand_of_salvation() : SpellScriptLoader("spell_pal_hand_of_salvation") { }

        class spell_pal_hand_of_salvation_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_hand_of_salvation_AuraScript);

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
            {
                if (Unit* caster = GetCaster())
                {
                    // Glyph of Salvation
                    if (caster->GetGUID() == GetUnitOwner()->GetGUID())
                        if (AuraEffect const* aurEff = caster->GetAuraEffect(SPELL_PALADIN_GLYPH_OF_SALVATION, EFFECT_0))
                            amount -= aurEff->GetAmount();
                }
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_hand_of_salvation_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_MOD_DAMAGE_PERCENT_TAKEN);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_hand_of_salvation_AuraScript();
        }
};

// -20473 - Holy Shock
class spell_pal_holy_shock : public SpellScriptLoader
{
    public:
        spell_pal_holy_shock() : SpellScriptLoader("spell_pal_holy_shock") { }

        class spell_pal_holy_shock_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_holy_shock_SpellScript);

            bool Validate(SpellInfo const* spell)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_HOLY_SHOCK_R1))
                    return false;

                // can't use other spell than holy shock due to spell_ranks dependency
                if (sSpellMgr->GetFirstSpellInChain(SPELL_PALADIN_HOLY_SHOCK_R1) != sSpellMgr->GetFirstSpellInChain(spell->Id))
                    return false;

                uint8 rank = sSpellMgr->GetSpellRank(spell->Id);
                if (!sSpellMgr->GetSpellWithRank(SPELL_PALADIN_HOLY_SHOCK_R1_DAMAGE, rank, true) || !sSpellMgr->GetSpellWithRank(SPELL_PALADIN_HOLY_SHOCK_R1_HEALING, rank, true))
                    return false;

                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Unit* unitTarget = GetHitUnit())
                {
                    uint8 rank = sSpellMgr->GetSpellRank(GetSpellInfo()->Id);
                    if (caster->IsFriendlyTo(unitTarget))
                        caster->CastSpell(unitTarget, sSpellMgr->GetSpellWithRank(SPELL_PALADIN_HOLY_SHOCK_R1_HEALING, rank), true, 0);
                    else
                        caster->CastSpell(unitTarget, sSpellMgr->GetSpellWithRank(SPELL_PALADIN_HOLY_SHOCK_R1_DAMAGE, rank), true, 0);
                }
            }

            SpellCastResult CheckCast()
            {
                Unit* caster = GetCaster();
                if (Unit* target = GetExplTargetUnit())
                {
                    if (!caster->IsFriendlyTo(target))
                    {
                        if (!caster->IsValidAttackTarget(target))
                            return SPELL_FAILED_BAD_TARGETS;

                        if (!caster->isInFront(target))
                            return SPELL_FAILED_UNIT_NOT_INFRONT;
                    }
                }
                else
                    return SPELL_FAILED_BAD_TARGETS;
                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_pal_holy_shock_SpellScript::CheckCast);
                OnEffectHitTarget += SpellEffectFn(spell_pal_holy_shock_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_holy_shock_SpellScript();
        }
};

// 20425 - Judgement of Command
class spell_pal_judgement_of_command : public SpellScriptLoader
{
    public:
        spell_pal_judgement_of_command() : SpellScriptLoader("spell_pal_judgement_of_command") { }

        class spell_pal_judgement_of_command_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_judgement_of_command_SpellScript);

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (Unit* unitTarget = GetHitUnit())
                    if (SpellInfo const* spell_proto = sSpellMgr->GetSpellInfo(GetEffectValue()))
                        GetCaster()->CastSpell(unitTarget, spell_proto, true, NULL);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_pal_judgement_of_command_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_judgement_of_command_SpellScript();
        }
};

// -633 - Lay on Hands
class spell_pal_lay_on_hands : public SpellScriptLoader
{
    public:
        spell_pal_lay_on_hands() : SpellScriptLoader("spell_pal_lay_on_hands") { }

        class spell_pal_lay_on_hands_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_lay_on_hands_SpellScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_FORBEARANCE))
                    return false;
                return true;
            }

            SpellCastResult CheckCast()
            {
                Unit* caster = GetCaster();
                if (Unit* target = GetExplTargetUnit())
                    if (caster == target)
                        if (target->HasAura(SPELL_PALADIN_FORBEARANCE))
                            return SPELL_FAILED_TARGET_AURASTATE;

                return SPELL_CAST_OK;
            }

            void HandleScript()
            {
                Unit* caster = GetCaster();
                if (caster == GetHitUnit())
                {
                    if(caster->HasAura(SPELL_PALADIN_GLYPH_OF_DIVINITY))
                    {
                        caster->CastSpell(caster, SPELL_PALADIN_GLYPH_OF_DIVINITY_ENERGIZE, true);
                    }
                }
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_pal_lay_on_hands_SpellScript::CheckCast);
                AfterHit += SpellHitFn(spell_pal_lay_on_hands_SpellScript::HandleScript);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_lay_on_hands_SpellScript();
        }
};

// 31789 - Righteous Defense
class spell_pal_righteous_defense : public SpellScriptLoader
{
    public:
        spell_pal_righteous_defense() : SpellScriptLoader("spell_pal_righteous_defense") { }

        class spell_pal_righteous_defense_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_righteous_defense_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_RIGHTEOUS_DEFENSE_TAUNT))
                    return false;
                return true;
            }

            SpellCastResult CheckCast()
            {
                Unit* caster = GetCaster();
                if (caster->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_DONT_REPORT;

                if (Unit* target = GetExplTargetUnit())
                {
                    if (!target->IsFriendlyTo(caster) || target->getAttackers().empty())
                        return SPELL_FAILED_BAD_TARGETS;
                }
                else
                    return SPELL_FAILED_BAD_TARGETS;

                return SPELL_CAST_OK;
            }

            void HandleTriggerSpellLaunch(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);
            }

            void HandleTriggerSpellHit(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);
                if (Unit* target = GetHitUnit())
                    GetCaster()->CastSpell(target, SPELL_PALADIN_RIGHTEOUS_DEFENSE_TAUNT, true);
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_pal_righteous_defense_SpellScript::CheckCast);
                //! WORKAROUND
                //! target select will be executed in hitphase of effect 0
                //! so we must handle trigger spell also in hit phase (default execution in launch phase)
                //! see issue #3718
                OnEffectLaunchTarget += SpellEffectFn(spell_pal_righteous_defense_SpellScript::HandleTriggerSpellLaunch, EFFECT_1, SPELL_EFFECT_TRIGGER_SPELL);
                OnEffectHitTarget += SpellEffectFn(spell_pal_righteous_defense_SpellScript::HandleTriggerSpellHit, EFFECT_1, SPELL_EFFECT_TRIGGER_SPELL);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_righteous_defense_SpellScript();
        }
};

class spell_pal_divine_bulwark : public SpellScriptLoader
{
    public:
        spell_pal_divine_bulwark() : SpellScriptLoader("spell_pal_divine_bulwark") { }

        class spell_pal_divine_bulwark_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_divine_bulwark_AuraScript);

            void CalculateBonus(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = true;

                if (!GetCaster())
                    return;

                // Divine Bulwark (Pally Prote mastery)
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->HasAuraType(SPELL_AURA_MASTERY))
                        if (caster->GetPrimaryTalentTree(caster->GetActiveSpec()) == BS_PALADIN_PROTECTION)
                            amount += int32(2.25f * caster->GetMasteryPoints());
                            
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_divine_bulwark_AuraScript::CalculateBonus, EFFECT_0, SPELL_AURA_MOD_BLOCK_PERCENT);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_divine_bulwark_AuraScript();
        }
};


// 85256 - Templar's Verdict
/// Updated 4.3.4
class spell_pal_templar_s_verdict : public SpellScriptLoader
{
    public:
        spell_pal_templar_s_verdict() : SpellScriptLoader("spell_pal_templar_s_verdict") { }

        class spell_pal_templar_s_verdict_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_templar_s_verdict_SpellScript);

            bool Validate (SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_DIVINE_PURPOSE_PROC))
                    return false;

                return true;
            }

            bool Load()
            {
                if (!GetCaster() || GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return false;

                if (GetCaster()->ToPlayer()->getClass() != CLASS_PALADIN)
                    return false;

                return true;
            }

            void HandleBeforeCast()
            {
                if(Unit* caster = GetCaster())
                {
                    if (caster->HasAura(SPELL_PALADIN_DIVINE_PURPOSE_PROC))
                    {
                        restoreHolyPower = true;
                        realHolyPower = caster->GetPower(POWER_HOLY_POWER);
                        caster->SetWordOfGloryHolyPower(3);
                    }
                    else
                    {
                        restoreHolyPower = false;
                    }
                }
            }
            
            void HandleAfterCast()
            {
                if(Unit* caster = GetCaster())
                {
                    // Restore Holy Power from Divine Purpose
                    if(restoreHolyPower && realHolyPower)
                    {
                        caster->SetPower(POWER_HOLY_POWER, realHolyPower);
                    }
                }
            }
            
            void ChangeDamage(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();

                if(!caster)
                    return;
                
                if (caster->HasAura(SPELL_PALADIN_DIVINE_PURPOSE_PROC))
                {
                    caster->RemoveAurasDueToSpell(SPELL_PALADIN_DIVINE_PURPOSE_PROC);
                }
            }
            
        private:
            bool restoreHolyPower;
            int8 realHolyPower;

            void Register()
            {
                BeforeCast += SpellCastFn(spell_pal_templar_s_verdict_SpellScript::HandleBeforeCast);
                AfterCast += SpellCastFn(spell_pal_templar_s_verdict_SpellScript::HandleAfterCast);
                OnEffectHitTarget += SpellEffectFn(spell_pal_templar_s_verdict_SpellScript::ChangeDamage, EFFECT_0, SPELL_EFFECT_WEAPON_PERCENT_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_templar_s_verdict_SpellScript();
        }
};

// 25742 - Seal of Righteousness damage handler
class spell_pal_seal_of_righteousness_aoe_check : public SpellScriptLoader
{
    public:
        spell_pal_seal_of_righteousness_aoe_check() : SpellScriptLoader("spell_pal_seal_of_righteousness_aoe_check") { }

        class spell_pal_seal_of_righteousness_aoe_check_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pal_seal_of_righteousness_aoe_check_SpellScript);

            void HandleTargetSelect(std::list<WorldObject*>& targetList)
            {
                Unit* caster = GetCaster();
                Unit* target = GetExplTargetUnit();

                if(caster && target)
                {
                    targetList.remove(target);
                    if(!caster->GetDummyAuraEffect(SPELLFAMILY_PALADIN, 561, EFFECT_1))
                    {
                        targetList.clear();
                    }
                }
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_pal_seal_of_righteousness_aoe_check_SpellScript::HandleTargetSelect, EFFECT_1, TARGET_UNIT_SRC_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pal_seal_of_righteousness_aoe_check_SpellScript();
        }
};

// 20154, 21084 - Seal of Righteousness - melee proc dummy (addition ${$MWS*(0.022*$AP+0.044*$SPH)} damage)
class spell_pal_seal_of_righteousness : public SpellScriptLoader
{
    public:
        spell_pal_seal_of_righteousness() : SpellScriptLoader("spell_pal_seal_of_righteousness") { }

        class spell_pal_seal_of_righteousness_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_pal_seal_of_righteousness_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_SEAL_OF_RIGHTEOUSNESS))
                    return false;
                return true;
            }

            bool CheckProc(ProcEventInfo& eventInfo)
            {
                return eventInfo.GetProcTarget();
            }

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();

                float ap = GetTarget()->GetTotalAttackPowerValue(BASE_ATTACK);
                int32 holy = GetTarget()->SpellBaseDamageBonusDone(SPELL_SCHOOL_MASK_HOLY);
                holy += eventInfo.GetProcTarget()->SpellBaseDamageBonusTaken(SPELL_SCHOOL_MASK_HOLY);
                int32 bp = int32((ap * 0.022f + 0.044f * holy) * GetTarget()->GetAttackTime(BASE_ATTACK) / 1000);
                GetTarget()->CastCustomSpell(SPELL_PALADIN_SEAL_OF_RIGHTEOUSNESS, SPELLVALUE_BASE_POINT0, bp, eventInfo.GetProcTarget(), true, NULL, aurEff);
            }

            void Register()
            {
                DoCheckProc += AuraCheckProcFn(spell_pal_seal_of_righteousness_AuraScript::CheckProc);
                OnEffectProc += AuraEffectProcFn(spell_pal_seal_of_righteousness_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_pal_seal_of_righteousness_AuraScript();
        }
};


void AddSC_paladin_spell_scripts()
{
    new spell_pal_exorcism();
    new spell_pal_ancient_fury();
    new spell_pal_cleanse();
    new spell_pal_guardian_of_ancient_kings_retri();
    new spell_pal_guardian_of_ancient_kings();
    new spell_pal_ardent_defender();
    new spell_pal_divine_purpose();
    new spell_pal_inquisition();
    new spell_paladin_word_of_glory();
    new spell_pal_selfless();
    new spell_pal_communion();
    new spell_pal_forberance_handler();
    new spell_pal_holy_wrath();
    new spell_pal_light_of_dawn();
    new spell_pal_lights_beacon();
    new spell_pal_protector_of_the_innocent();
    new spell_pal_blessed_life();
    new spell_pal_aura_mastery();
    new spell_pal_divine_protection();
    new spell_pal_blessing_of_faith();
    new spell_pal_blessing_of_sanctuary();
    new spell_pal_divine_sacrifice();
    new spell_pal_divine_storm();
    new spell_pal_divine_storm_dummy();
    new spell_pal_exorcism_and_holy_wrath_damage();
    new spell_pal_eye_for_an_eye();
    new spell_pal_guarded_by_the_light();
    new spell_pal_hand_of_sacrifice();
    new spell_pal_hand_of_salvation();
    new spell_pal_holy_shock();
    new spell_pal_judgement_of_command();
    new spell_pal_lay_on_hands();
    new spell_pal_righteous_defense();
    new spell_pal_shield_of_the_righteous(); 
    new spell_pal_divine_bulwark();
    new spell_pal_templar_s_verdict();
    new spell_pal_seal_of_righteousness_aoe_check();
    new spell_pal_seal_of_righteousness();
    new spell_pal_grand_crusader();
}
