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
 * Scripts for spells with SPELLFAMILY_WARLOCK and SPELLFAMILY_GENERIC spells used by warlock players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_warl_".
 */

#include "Player.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"

enum WarlockSpells
{
    SPELL_WARLOCK_AURA_OF_FOREBODING_R1             = 89604,
    SPELL_WARLOCK_AURA_OF_FOREBODING_R2             = 89605,
    SPELL_WARLOCK_AURA_OF_FOREBODING_ROOT_R1        = 93974,
    SPELL_WARLOCK_AURA_OF_FOREBODING_ROOT_R2        = 93987,
    SPELL_WARLOCK_BANE_OF_DOOM_EFFECT               = 18662,
    SPELL_WARLOCK_CORRUPTION                        = 172,
    SPELL_WARLOCK_DEMONIC_CIRCLE_ALLOW_CAST         = 62388,
    SPELL_WARLOCK_DEMONIC_CIRCLE_SUMMON             = 48018,
    SPELL_WARLOCK_DEMONIC_CIRCLE_TELEPORT           = 48020,
    SPELL_WARLOCK_DEMONIC_EMPOWERMENT_IMP           = 54444,
    SPELL_WARLOCK_DEMONIC_EMPOWERMENT_FELGUARD      = 54508,
    SPELL_WARLOCK_DEMONIC_EMPOWERMENT_FELHUNTER     = 54509,
    SPELL_WARLOCK_DEMONIC_EMPOWERMENT_SUCCUBUS      = 54435,
    SPELL_WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER    = 54443,
    SPELL_WARLOCK_DEMON_SOUL_IMP                    = 79459,
    SPELL_WARLOCK_DEMON_SOUL_FELHUNTER              = 79460,
    SPELL_WARLOCK_DEMON_SOUL_FELGUARD               = 79462,
    SPELL_WARLOCK_DEMON_SOUL_SUCCUBUS               = 79463,
    SPELL_WARLOCK_DEMON_SOUL_VOIDWALKER             = 79464,
    SPELL_WARLOCK_DRAIN_LIFE_HEALTH_ENERGIZE        = 89653,
    SPELL_WARLOCK_GLYPH_OF_SHADOWBURN_BUFF          = 91001,
    SPELL_WARLOCK_HAND_OF_GUL_DAN_AURA              = 86000,
    SPELL_WARLOCK_HAND_OF_GUL_DAN_GRAPHIC           = 85526,
    SPELL_WARLOCK_HAUNT                             = 48181,
    SPELL_WARLOCK_HAUNT_HEAL                        = 48210,
    SPELL_WARLOCK_IMMOLATE                          = 348,
    SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_R1         = 18703,
    SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_R2         = 18704,
    SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_BUFF_R1    = 60955,
    SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_BUFF_R2    = 60956,
    SPELL_WARLOCK_IMPROVED_LIFE_TAP_ICON_ID         = 208,
    SPELL_WARLOCK_LIFE_TAP_ENERGIZE                 = 31818,
    SPELL_WARLOCK_LIFE_TAP_ENERGIZE_2               = 32553,
    SPELL_WARLOCK_JINX_R1                           = 85547,
    SPELL_WARLOCK_JINX_R2                           = 86105,
    SPELL_WARLOCK_MANA_FEED_ICON_ID                 = 1982,
    SPELL_WARLOCK_NETHER_WARD                       = 91711,
    SPELL_WARLOCK_NETHER_WARD_TALENT                = 91713,
    SPELL_WARLOCK_NIGHTFALL                         = 91713,
    SPELL_WARLOCK_SACRIFICE                         = 7812,
    SPELL_WARLOCK_SHADOWBURN                        = 17877,
    SPELL_WARLOCK_SHADOW_WARD                       = 6229,
    SPELL_WARLOCK_SIPHON_LIFE_HEAL                  = 63106,
    SPELL_WARLOCK_SOUL_SHARD_ENERGIZE               = 87388,
    SPELL_WARLOCK_SOUL_SWAP_COOLDOWN                = 94229,
    SPELL_WARLOCK_SOUL_SWAP_GLYPH                   = 56226,
    SPELL_WARLOCK_SOUL_SWAP_GRAPHIC_EFFECT          = 92795,
    SPELL_WARLOCK_SOUL_SWAP_SAVE_DOTS               = 86211,
    SPELL_WARLOCK_SOULBURN                          = 74434,
    SPELL_WARLOCK_SOULBURN_DEMONIC_CIRCLE			= 79438,
    SPELL_WARLOCK_SOULSHATTER                       = 32835,
    SPELL_WARLOCK_UNSTABLE_AFFLICTION               = 30108,
    SPELL_WARLOCK_UNSTABLE_AFFLICTION_DISPEL        = 31117,
};

enum WarlockGlyphs
{
    SPELL_WARLOCK_GLYPH_OF_SEDUCTION                = 56250,
    SPELL_WARLOCK_GLYPH_OF_SHADOWBURN               = 56229,
    SPELL_WARLOCK_GLYPH_OF_SOUL_LINK                = 173,
};

enum GenericSpells
{
    SPELL_PACIFY_SELF                               = 63726,
};

bool _SeedOfCorruptionFlag = false;
bool _CanProcNetherProtection = false;

// 89751 - Felguards's Felstorm
class spell_warl_felstorm : public SpellScriptLoader
{
    public:
        spell_warl_felstorm() : SpellScriptLoader("spell_warl_felstorm") { }
        
        class spell_warl_felstorm_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_felstorm_AuraScript);

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if(Unit* caster = GetCaster())
                {
                    caster->AddAura(SPELL_PACIFY_SELF, caster);
                }
            }

            void HandleEffectRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if(Unit* caster = GetCaster())
                {
                    caster->RemoveAurasDueToSpell(SPELL_PACIFY_SELF);
                }
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_warl_felstorm_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
                OnEffectRemove += AuraEffectRemoveFn(spell_warl_felstorm_AuraScript::HandleEffectRemove, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
            }
        };


        AuraScript* GetAuraScript() const
        {
            return new spell_warl_felstorm_AuraScript();
        }
};

// 686 - Shadow Bolt
class spell_warl_shadow_bolt : public SpellScriptLoader
{
    public:
        spell_warl_shadow_bolt() : SpellScriptLoader("spell_warl_shadow_bolt") { }

        class spell_warl_shadow_bolt_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_shadow_bolt_SpellScript);

            void HandleAfter()
            {
                Unit * caster = GetCaster();
                Spell* spell = GetSpell();

                // Nightfall is removed only with instant Shadow Bolt
                if(caster && spell && caster->HasAura(SPELL_WARLOCK_NIGHTFALL) && spell->GetCastTime() == 0)
                {
                    caster->RemoveAurasDueToSpell(SPELL_WARLOCK_NIGHTFALL);
                }
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_warl_shadow_bolt_SpellScript::HandleAfter);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_shadow_bolt_SpellScript();
        }
};

// 30299-30301 - Nether Protection
class spell_warl_nether_protection : public SpellScriptLoader
{
    public:
        spell_warl_nether_protection() : SpellScriptLoader("spell_warl_nether_protection") { }

        class spell_warl_nether_protection_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_nether_protection_AuraScript);

            bool CheckProc(ProcEventInfo& eventInfo)
            {
                bool toReturn = _CanProcNetherProtection;

                _CanProcNetherProtection = false;

                return toReturn;
            }

            void Register()
            {
                DoCheckProc += AuraCheckProcFn(spell_warl_nether_protection_AuraScript::CheckProc);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_warl_nether_protection_AuraScript();
        }
};

// 25228 - Soul Link
class spell_warl_soul_link : public SpellScriptLoader 
{
    public:
        spell_warl_soul_link() : SpellScriptLoader("spell_warl_soul_link") { }

        class spell_warl_soul_link_AuraScript: public AuraScript
        {
            PrepareAuraScript(spell_warl_soul_link_AuraScript);

            void OnEffectCalcAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = false;

                if(!GetCaster())
                    return;

                if(Unit* caster = GetCaster()->GetCharmerOrOwner())
                {
                    // Glyph of Soul Link
                    if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_WARLOCK, SPELL_WARLOCK_GLYPH_OF_SOUL_LINK, EFFECT_0))
                    {
                        amount += aurEff->GetAmount();
                    }
                }
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_warl_soul_link_AuraScript::OnEffectCalcAmount, EFFECT_0, SPELL_AURA_SPLIT_DAMAGE_PCT);
            }
        };

        AuraScript* GetAuraScript() const 
        {
            return new spell_warl_soul_link_AuraScript();
        }
};

// 17877 - Shadowburn
class spell_warl_shadowburn : public SpellScriptLoader
{
    public:
        spell_warl_shadowburn() : SpellScriptLoader("spell_warl_shadowburn") { }

        class spell_warl_shadowburn_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_shadowburn_SpellScript);

            bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_SHADOWBURN))
                    return false;
                return true;
            }

            void HandleAfter()
            {
                // Glyph of Shadowburn
                if(Unit * caster = GetCaster())
                {
                    if(caster->HasAura(SPELL_WARLOCK_GLYPH_OF_SHADOWBURN) && !caster->HasAura(SPELL_WARLOCK_GLYPH_OF_SHADOWBURN_BUFF))
                    {
                        if(Unit * target = GetHitUnit())
                        {
                            if(target->isAlive())
                            {
                                caster->ToPlayer()->RemoveSpellCooldown(SPELL_WARLOCK_SHADOWBURN, true);
                                caster->AddAura(SPELL_WARLOCK_GLYPH_OF_SHADOWBURN_BUFF, caster);
                            }
                        }
                    }
                }
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_warl_shadowburn_SpellScript::HandleAfter);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_shadowburn_SpellScript();
        }
};

// 6358 - Seduction
class spell_warl_seduction : public SpellScriptLoader
{
    public:
        spell_warl_seduction() : SpellScriptLoader("spell_warl_seduction") { }

        class spell_warl_seduction_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_seduction_AuraScript);

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* pet = GetCaster();
                Unit* target = GetTarget();

                if (!pet || !pet->GetCharmerOrOwner() || !target || !pet->GetCharmerOrOwner()->HasAura(SPELL_WARLOCK_GLYPH_OF_SEDUCTION))
                    return;
                
                target->RemoveAurasByType(SPELL_AURA_PERIODIC_DAMAGE, 0, target->GetAura(32409)); // SW:D shall not be removed.
				target->RemoveAurasByType(SPELL_AURA_PERIODIC_DAMAGE_PERCENT);
				target->RemoveAurasByType(SPELL_AURA_PERIODIC_LEECH);

            }
            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_warl_seduction_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_MOD_STUN, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_warl_seduction_AuraScript();
        }
};

// 71521 spell_warl_Hand_of_Guldan
class spell_warl_hand_of_guldan: public SpellScriptLoader 
{
public:
    spell_warl_hand_of_guldan() : SpellScriptLoader("spell_warl_hand_of_guldan")  { }

    class spell_warl_hand_of_guldan_SpellScript: public SpellScript
    {
        PrepareSpellScript(spell_warl_hand_of_guldan_SpellScript);

        void BeforeEffect(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!target)
                return;

            if (!caster)
                return;

            // Cast the debuff on the target (it applies the aura)
            caster->CastSpell(target, SPELL_WARLOCK_HAND_OF_GUL_DAN_AURA, true);

            // Graphical effect
            target->CastSpell(target, SPELL_WARLOCK_HAND_OF_GUL_DAN_GRAPHIC, true);			
            
            // Cast also the roots if the warlock has the talent
            if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_WARLOCK, 140, 0))
            {
                int32 aurOfForeId = -1;

                if(aurEff->GetId() == SPELL_WARLOCK_AURA_OF_FOREBODING_R1)
                {
                    // Rank 1
                    aurOfForeId = SPELL_WARLOCK_AURA_OF_FOREBODING_ROOT_R1;
                    //target->CastSpell(target, SPELL_WARLOCK_AURA_OF_FOREBODING_ROOT_R1, true, 0, 0, caster->GetGUID());
                }
                else if(aurEff->GetId() == SPELL_WARLOCK_AURA_OF_FOREBODING_R2)
                {
                    // Rank 2
                    aurOfForeId = SPELL_WARLOCK_AURA_OF_FOREBODING_ROOT_R2;
                    //target->CastSpell(target, SPELL_WARLOCK_AURA_OF_FOREBODING_ROOT_R2, true, 0, 0, caster->GetGUID());
                }
            
                // Check the aura not the auraEffect because the aura effect of the Hand of Gul'dan is not applied on the targets. It's is on the ground, they just get the debuff (aura)
                if(Aura *aur = target->GetAura(SPELL_WARLOCK_HAND_OF_GUL_DAN_AURA, caster->GetGUID()))
                {
                    // Get the AuraEffect object from the aura
                    AuraEffect *aurEff = aur->GetEffect(EFFECT_0);
                    std::list<Unit*> targets;

                    // Get the targets that took the Hand of Gul'dan's debuff at the beginning (for the stun if they remain in the 4 yard range for 6 sec)
                    aurEff->GetTargetList(targets);
                
                    // Set the instance variable for the targets stun check
                    aurEff->SetHoGUnitList(targets);
                
                    // Root
                    for (std::list<Unit*>::iterator singleTarget = targets.begin(); singleTarget != targets.end(); ++singleTarget) 
                    {
                        // Check the current target instance until it finds the correct one
                        if((*singleTarget))
                        {
                            (*singleTarget)->CastSpell((*singleTarget), aurOfForeId, true, 0, 0, caster->GetGUID());
                        }
                    }
                }
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_warl_hand_of_guldan_SpellScript::BeforeEffect, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const 
    {
        return new spell_warl_hand_of_guldan_SpellScript();
    }
};

// 687/28176 - spell_warl_armor_nether_ward_ignore
class spell_warl_armor_nether_ward_ignore: public SpellScriptLoader 
{
public:
    spell_warl_armor_nether_ward_ignore() : SpellScriptLoader("spell_warl_armor_nether_ward_ignore") { }

    class spell_warl_armor_nether_ward_ignore_AuraScript: public AuraScript
    {
        PrepareAuraScript(spell_warl_armor_nether_ward_ignore_AuraScript);

        void OnEffectCalcAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            if(GetCaster())
            {
                if(GetCaster()->HasAura(SPELL_WARLOCK_NETHER_WARD_TALENT))
                    amount = SPELL_WARLOCK_NETHER_WARD;
                else
                    amount = SPELL_WARLOCK_SHADOW_WARD;
            }
        }

        void Register()
        {
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_warl_armor_nether_ward_ignore_AuraScript::OnEffectCalcAmount, EFFECT_2, SPELL_AURA_OVERRIDE_ACTIONBAR_SPELLS);
        }
    };

    AuraScript* GetAuraScript() const 
    {
        return new spell_warl_armor_nether_ward_ignore_AuraScript();
    }
};

// 29722 - Incinerate
class spell_warl_incinerate : public SpellScriptLoader
{
public:
    spell_warl_incinerate() : SpellScriptLoader("spell_warl_incinerate") { }

    class spell_warl_incinerate_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warl_incinerate_SpellScript);

        void RecalculateDamage()
        {
            if(!GetCaster() || !GetHitUnit())
                return;

            // Bonus damage if the immolate dot is on the target
            if(GetHitUnit()->HasAura(SPELL_WARLOCK_IMMOLATE, GetCaster()->GetGUID()))
            {
                int32 newDamage = GetHitDamage() + int32(GetHitDamage() / 6);
                SetHitDamage(newDamage); 
            }
        }

        void Register()
        {
            OnHit += SpellHitFn(spell_warl_incinerate_SpellScript::RecalculateDamage);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_warl_incinerate_SpellScript();
    }
};

// 1490 - Curse of the Elements
class spell_warl_curse_of_the_elements: public SpellScriptLoader {
public:
    spell_warl_curse_of_the_elements() : SpellScriptLoader("spell_warl_curse_of_the_elements") { }

    class spell_warl_curse_of_the_elements_AuraScript: public AuraScript
    {
        PrepareAuraScript(spell_warl_curse_of_the_elements_AuraScript);

        void HandlePeriodic(AuraEffect const* /*aurEff*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetTarget();
                
            if (!target || !caster)
                return;
            
            if(caster->GetDummyAuraEffect(SPELLFAMILY_WARLOCK, 5002, EFFECT_0))
            {
                // Check if warlock has the either the first or the second rank of jinx
                if (caster->HasAura(18179))
                    caster->CastSpell(target, SPELL_WARLOCK_JINX_R1, true);
                else if(caster->HasAura(85479))
                    caster->CastSpell(target, SPELL_WARLOCK_JINX_R2, true);
            }
        }

        void Register() 
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_warl_curse_of_the_elements_AuraScript::HandlePeriodic, EFFECT_2, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_warl_curse_of_the_elements_AuraScript();
    }
};

enum WarlockWeaknessJinx
{
    SPELL_WARLOCK_JINX_RAGE                         = 85539,
    SPELL_WARLOCK_JINX_ENERGY                       = 85540,
    SPELL_WARLOCK_JINX_RUNIC_POWER                  = 85541,
    SPELL_WARLOCK_JINX_FOCUS                        = 85542,
};

// 702 - Curse of Weakness
class spell_warl_curse_of_weakness: public SpellScriptLoader
{
public:
    spell_warl_curse_of_weakness() : SpellScriptLoader("spell_warl_curse_of_weakness"){ }

    class spell_warl_curse_of_weakness_AuraScript: public AuraScript
    {
        PrepareAuraScript(spell_warl_curse_of_weakness_AuraScript);

        void HandleApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetTarget();

            if(caster && target)
            {
                if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_WARLOCK, 5002, EFFECT_1))
                {
                    int32 bp0 = aurEff->GetAmount();

                    switch(target->getClass())
                    {
                        case CLASS_WARRIOR:
                            caster->CastCustomSpell(target, SPELL_WARLOCK_JINX_RAGE, &bp0, NULL, NULL, true);
                            break;
                        case CLASS_ROGUE:
                            caster->CastCustomSpell(target, SPELL_WARLOCK_JINX_ENERGY, &bp0, NULL, NULL, true);
                            break;
                        case CLASS_DEATH_KNIGHT:
                            caster->CastCustomSpell(target, SPELL_WARLOCK_JINX_RUNIC_POWER, &bp0, NULL, NULL, true);
                            break;
                        case CLASS_HUNTER:
                            caster->CastCustomSpell(target, SPELL_WARLOCK_JINX_FOCUS, &bp0, NULL, NULL, true);
                            break;
                        case CLASS_DRUID:
                            target->RemoveAura(SPELL_WARLOCK_JINX_RAGE);
                            target->RemoveAura(SPELL_WARLOCK_JINX_ENERGY);

                            if(target->GetShapeshiftForm() == FORM_BEAR)
                            {
                                caster->CastCustomSpell(target, SPELL_WARLOCK_JINX_RAGE, &bp0, NULL, NULL, true);
                            }
                            else if(target->GetShapeshiftForm() == FORM_CAT)
                            {
                                caster->CastCustomSpell(target, SPELL_WARLOCK_JINX_ENERGY, &bp0, NULL, NULL, true);
                            }
                            break;
                    }
                }
            }
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_warl_curse_of_weakness_AuraScript::HandleApply, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_warl_curse_of_weakness_AuraScript();
    }
};

// 86121 - Soul Swap action bar spell
class spell_warl_soul_swap: public SpellScriptLoader {
public:
    spell_warl_soul_swap() : SpellScriptLoader("spell_warl_soul_swap") { }

    class spell_warl_soul_swap_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warl_soul_swap_SpellScript);

        SpellCastResult CheckRequirement()
        {
            Unit* caster = GetCaster();
            Unit* target = GetExplTargetUnit();

            if (!target || !caster)
                return SPELL_FAILED_BAD_TARGETS;

            // Check if there are any dots on the target
            if(target->GetSoulSwapDotsCount(caster) == 0)
                return SPELL_FAILED_BAD_TARGETS;

            return SPELL_CAST_OK;
        }
            
        // Graphic effect for the first cast
        void HandleEffectLaunchTarget(SpellEffIndex /*effIndex*/) 
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!target || !caster)
                return;

            target->CastSpell(caster, SPELL_WARLOCK_SOUL_SWAP_GRAPHIC_EFFECT, true, 0, 0, caster->GetGUID());
        }
            
        // Handles the first cast of soul swap
        void HandleEffectHit(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();
                
            if (!target || !caster)
                return;

            target->RemoveAndSaveSoulSwapDots(caster);
            caster->CastSpell(caster, SPELL_WARLOCK_SOUL_SWAP_SAVE_DOTS, true);
        }

        void Register()
        {
            OnCheckCast += SpellCheckCastFn(spell_warl_soul_swap_SpellScript::CheckRequirement);
            OnEffectLaunchTarget += SpellEffectFn(spell_warl_soul_swap_SpellScript::HandleEffectLaunchTarget, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            OnEffectHitTarget += SpellEffectFn(spell_warl_soul_swap_SpellScript::HandleEffectHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_warl_soul_swap_SpellScript();
    }
};

// 86211 - Handles Soul Swap saved dots buff onRemove
class spell_warl_soul_swap_buff : public SpellScriptLoader
{
public:
    spell_warl_soul_swap_buff() : SpellScriptLoader("spell_warl_soul_swap_buff") { }

    class spell_warl_soul_swap_buff_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_warl_soul_swap_buff_AuraScript);

        void HandleEffectRemove(AuraEffect const * /*aurEff*/, AuraEffectHandleModes mode)
        {
            Unit * caster = GetCaster();

            if (!caster)
                return;

            caster->ResetSoulSwapDots();
        }

        // function registering
        void Register()
        {
            OnEffectRemove += AuraEffectRemoveFn(spell_warl_soul_swap_buff_AuraScript::HandleEffectRemove, EFFECT_0, SPELL_AURA_OVERRIDE_ACTIONBAR_SPELLS, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_warl_soul_swap_buff_AuraScript();
    }
};

//86213 - Soul Swap paste
class spell_warl_soul_swap_exhale : public SpellScriptLoader
{
public:
    spell_warl_soul_swap_exhale() : SpellScriptLoader("spell_warl_soul_swap_exhale") { }

    class spell_warl_soul_swap_exhale_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warl_soul_swap_exhale_SpellScript);

        SpellCastResult CheckRequirementInternal(SpellCustomErrors& extendedError)
        {
            return SPELL_CAST_OK;
        }

        SpellCastResult CheckRequirement()
        {
            if (!GetExplTargetUnit())
                return SPELL_FAILED_BAD_TARGETS;

            if (GetExplTargetUnit()->GetGUID() == GetCaster()->GetSourceOfSoulSwapDots())
                return SPELL_FAILED_BAD_TARGETS;

            SpellCustomErrors extension = SPELL_CUSTOM_ERROR_NONE;
            SpellCastResult result = CheckRequirementInternal(extension);

            if (result != SPELL_CAST_OK)
            {
                Spell::SendCastResult(GetExplTargetUnit()->ToPlayer(), GetSpellInfo(), 0, result, extension);
                return result;
            }

            return SPELL_CAST_OK;
        }
        
        // The OnCast handler is used to prevent double soul swap when spamming the action bar bind
        void HandleOnCast()
        {
            Unit * caster = GetCaster();

            if (!caster)
                return;

            // Glyph of Soul Swap cooldown
            if (caster->HasAura(SPELL_WARLOCK_SOUL_SWAP_GLYPH))
                caster->CastSpell(caster, SPELL_WARLOCK_SOUL_SWAP_COOLDOWN, false);
        }

        void HandleEffectHit(SpellEffIndex /*effIndex*/)
        {
            Unit * target = GetHitUnit();
            Unit * caster = GetCaster();

            if (!caster || !target)
                return;
            
            if (caster->CastSavedSoulSwapDots(target))
                caster->RemoveAura(SPELL_WARLOCK_SOUL_SWAP_SAVE_DOTS);
        }

        void Register()
        {
            OnCheckCast += SpellCheckCastFn(spell_warl_soul_swap_exhale_SpellScript::CheckRequirement);
            OnCast += SpellCastFn(spell_warl_soul_swap_exhale_SpellScript::HandleOnCast);
            OnEffectHitTarget += SpellEffectFn(spell_warl_soul_swap_exhale_SpellScript::HandleEffectHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_warl_soul_swap_exhale_SpellScript();
    }
};

// 689/89420 - Drain Life
class spell_warl_drain_life: public SpellScriptLoader
{
public:
    spell_warl_drain_life() : SpellScriptLoader("spell_warl_drain_life") { }

    class spell_warl_drain_life_AuraScript: public AuraScript
    {
        PrepareAuraScript(spell_warl_drain_life_AuraScript);

        void HandlePeriodic(AuraEffect const* /*aurEff*/)
        {
            if(Unit* caster = GetCaster())
            {
                // Base percent
                int32 bp = 2; 
                
                // Checks for Death's Embrace talent and %
                if (AuraEffect const* aurEff = caster->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_WARLOCK, 3223, EFFECT_0))
                {
                    if (caster->HealthBelowPct(25))
                    {
                        bp += int32(aurEff->GetAmount());
                    }
                }

                caster->CastCustomSpell(caster, SPELL_WARLOCK_DRAIN_LIFE_HEALTH_ENERGIZE, &bp, NULL, NULL, true);
            }
        }

        void Register() 
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_warl_drain_life_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_warl_drain_life_AuraScript();
    }
};

// 1120 - Offylike Drain Soul. cit. "drain soul has always checked if the target is in execute range on initial spell cast rather than on each tic."
class spell_warl_drain_soul: public SpellScriptLoader
{
public:
    spell_warl_drain_soul() : SpellScriptLoader("spell_warl_drain_soul"){ }

    class spell_warl_drain_soul_AuraScript: public AuraScript
    {
        PrepareAuraScript(spell_warl_drain_soul_AuraScript);

        void BeforeEffect(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if(Unit* caster = GetCaster())
            {
                // Need to get effect1 and use GetSpellInfo() because effect0 doesn't have an aura state.
                _pandemic = caster->GetAuraEffect(SPELL_AURA_ADD_FLAT_MODIFIER, SPELLFAMILY_WARLOCK, 4554, EFFECT_1);
            }
        }

        void OnPeriodic(AuraEffect const* aurEff)
        {
			if(!GetTarget())
				return;

			Aura* unstableAff = GetTarget()->GetAura(SPELL_WARLOCK_UNSTABLE_AFFLICTION);

            // Check if target is under 25% when casting Drain Soul
            if (aurEff->GetBase())
            {
                // Pandemic talent
                if (unstableAff && _pandemic && aurEff->GetBase()->WasUnder25PercentOnApp() 
                    && roll_chance_i(_pandemic->GetSpellInfo()->Effects[0].BasePoints))
                {
                    unstableAff->RefreshDuration();
                }
            }    
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_warl_drain_soul_AuraScript::BeforeEffect, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_warl_drain_soul_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }

        // Pandemic is checked at the beginning to avoid a check for each periodic tick. So I need a script scope var.
        AuraEffect* _pandemic;
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_warl_drain_soul_AuraScript();
    }
};

// 710 - Banish
/// Updated 4.3.4
class spell_warl_banish : public SpellScriptLoader
{
    public:
        spell_warl_banish() : SpellScriptLoader("spell_warl_banish") { }

        class spell_warl_banish_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_banish_SpellScript);

            bool Load()
            {
                _removed = false;
                return true;
            }

            void HandleBanish()
            {
                /// Casting Banish on a banished target will cancel the effect
                /// Check if the target already has Banish, if so, do nothing.
                if (Unit* target = GetHitUnit())
                {
                    if (target->GetAuraEffect(SPELL_AURA_SCHOOL_IMMUNITY, SPELLFAMILY_WARLOCK, 0, 0x08000000, 0))
                    {
                        // No need to remove old aura since its removed due to not stack by current Banish aura
                        PreventHitDefaultEffect(EFFECT_0);
                        PreventHitDefaultEffect(EFFECT_1);
                        PreventHitDefaultEffect(EFFECT_2);
                        _removed = true;
                    }
                }
            }

            void RemoveAura()
            {
                if (_removed)
                    PreventHitAura();
            }

            void Register()
            {
                BeforeHit += SpellHitFn(spell_warl_banish_SpellScript::HandleBanish);
                AfterHit += SpellHitFn(spell_warl_banish_SpellScript::RemoveAura);
            }

            bool _removed;
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_banish_SpellScript();
        }
};

// 17962 - Conflagrate - Updated to 4.3.4
class spell_warl_conflagrate : public SpellScriptLoader
{
    public:
        spell_warl_conflagrate() : SpellScriptLoader("spell_warl_conflagrate") { }

        class spell_warl_conflagrate_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_conflagrate_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_IMMOLATE))
                    return false;
                return true;
            }

            void HandleHit(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();

                if(caster && target)
                {
                    if(AuraEffect* aurEff = target->GetAuraEffect(SPELL_WARLOCK_IMMOLATE, EFFECT_2, caster->GetGUID()))
                    {
                        if(aurEff->GetBase())
                        {
                            int32 immolateTotalDamage;
                            int32 singleDotDamage = aurEff->GetAmount();
                            uint32 baseTotalTicks = aurEff->GetBase()->GetMaxDuration();
                            
                            singleDotDamage = caster->SpellDamageBonusDone(target, aurEff->GetSpellInfo(), singleDotDamage, DOT, aurEff->GetBase()->GetStackAmount());
                            immolateTotalDamage = singleDotDamage * int32(baseTotalTicks / aurEff->GetAmplitude());
                            SetHitDamage(CalculatePct(immolateTotalDamage, 60.0f));
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_conflagrate_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_conflagrate_SpellScript();
        }
};

// 6201 - Create Healthstone
class spell_warl_create_healthstone : public SpellScriptLoader
{
    public:
        spell_warl_create_healthstone() : SpellScriptLoader("spell_warl_create_healthstone") { }

        class spell_warl_create_healthstone_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_create_healthstone_SpellScript);

            SpellCastResult CheckCast()
            {
                if(GetCaster())
                {
                    if (Player* caster = GetCaster()->ToPlayer())
                    {
                        if (!caster->GetFreeBagSlot())
                            return SPELL_FAILED_TOO_MANY_OF_ITEM;
                    }
                }
                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_warl_create_healthstone_SpellScript::CheckCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_create_healthstone_SpellScript();
        }
};

// 27243 Seed of Corruption dot
class spell_warl_seed_of_corruption_dot : public SpellScriptLoader
{
    public:
        spell_warl_seed_of_corruption_dot() : SpellScriptLoader("spell_warl_seed_of_corruption_dot") { }

        class spell_warl_seed_of_corruption_dot_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_seed_of_corruption_dot_SpellScript);

            void HandleHit(SpellEffIndex /*effIndex*/)
            {
                if(Unit* caster = GetCaster())
                {
                    //Checks for soulburn buff and soulburn: Seed of Corruption talent
                    if(caster->HasAura(SPELL_WARLOCK_SOULBURN) && caster->GetDummyAuraEffect(SPELLFAMILY_WARLOCK, 1932, 0))
                    {
                        _SeedOfCorruptionFlag = true;
                        caster->RemoveAurasDueToSpell(SPELL_WARLOCK_SOULBURN);
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_seed_of_corruption_dot_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_seed_of_corruption_dot_SpellScript();
        }
};

// 6229/91711/7812 - Shadow Ward/Nether Ward/Sacrifice
class spell_warl_shadow_ward : public SpellScriptLoader
{
    public:
        spell_warl_shadow_ward() : SpellScriptLoader("spell_warl_shadow_ward") { }

        class spell_warl_shadow_ward_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_shadow_ward_AuraScript);

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                // Voidwalker's Sacrifice has not sp benefit
                if(GetId() == SPELL_WARLOCK_SACRIFICE)
                    return;

                canBeRecalculated = false;
                if (Unit* caster = GetCaster())
                {
                    // +80.68% from sp bonus
                    float bonus = 0.8068f;

                    bonus *= caster->SpellBaseDamageBonusDone(SPELL_SCHOOL_MASK_MAGIC);

                    amount += int32(bonus);
                }
            }
            
            void Absorb(AuraEffect * /*aurEff*/, DamageInfo &/*dmgInfo*/, uint32 &/*absorbAmount*/) 
            {
                _CanProcNetherProtection = true;
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_warl_shadow_ward_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
                OnEffectAbsorb += AuraEffectAbsorbFn(spell_warl_shadow_ward_AuraScript::Absorb, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_warl_shadow_ward_AuraScript();
        }
};

// 603 Bane of Doom
/// Updated 4.3.4
class spell_warl_bane_of_doom : public SpellScriptLoader
{
    public:
        spell_warl_bane_of_doom() : SpellScriptLoader("spell_warl_bane_of_doom") { }
 
        class spell_warl_curse_of_doom_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_curse_of_doom_AuraScript);
 
            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_BANE_OF_DOOM_EFFECT))
                    return false;
                return true;
            }
 
            bool Load()
            {
                return GetCaster() && GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }
 
            void HandlePeriodic(AuraEffect const* /*aurEff*/)
            {
                if (!GetCaster() || !GetTarget())
                    return;
 
                //Base chance
                int chance = 20;

                if(AuraEffect* aurEff = GetCaster()->GetAuraEffect(SPELL_AURA_ADD_FLAT_MODIFIER, SPELLFAMILY_WARLOCK, 195, EFFECT_0))
                    chance += int(aurEff->GetAmount());

                if(roll_chance_i(chance))
                    GetCaster()->CastSpell(GetTarget(), SPELL_WARLOCK_BANE_OF_DOOM_EFFECT, true);
            }
 
            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_warl_curse_of_doom_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
            }
        };
 
        AuraScript* GetAuraScript() const
        {
            return new spell_warl_curse_of_doom_AuraScript();
        }
};

// 48018 - Demonic Circle: Summon
/// Updated 4.3.4
class spell_warl_demonic_circle_summon : public SpellScriptLoader
{
    public:
        spell_warl_demonic_circle_summon() : SpellScriptLoader("spell_warl_demonic_circle_summon") { }

        class spell_warl_demonic_circle_summon_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_demonic_circle_summon_AuraScript);

            void HandleRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes mode)
            {
                // If effect is removed by expire remove the summoned demonic circle too.
                if (!(mode & AURA_EFFECT_HANDLE_REAPPLY))
                    GetTarget()->RemoveGameObject(GetId(), true);

                GetTarget()->RemoveAura(SPELL_WARLOCK_DEMONIC_CIRCLE_ALLOW_CAST);
            }

            void HandleDummyTick(AuraEffect const* /*aurEff*/)
            {
                if (GameObject* circle = GetTarget()->GetGameObject(GetId()))
                {
                    // Here we check if player is in demonic circle teleport range, if so add
                    // WARLOCK_DEMONIC_CIRCLE_ALLOW_CAST; allowing him to cast the WARLOCK_DEMONIC_CIRCLE_TELEPORT.
                    // If not in range remove the WARLOCK_DEMONIC_CIRCLE_ALLOW_CAST.

                    SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMONIC_CIRCLE_TELEPORT);

                    if (GetTarget()->IsWithinDist(circle, spellInfo->GetMaxRange(true)))
                    {
                        if (!GetTarget()->HasAura(SPELL_WARLOCK_DEMONIC_CIRCLE_ALLOW_CAST))
                            GetTarget()->CastSpell(GetTarget(), SPELL_WARLOCK_DEMONIC_CIRCLE_ALLOW_CAST, true);
                    }
                    else
                        GetTarget()->RemoveAura(SPELL_WARLOCK_DEMONIC_CIRCLE_ALLOW_CAST);
                }
            }

            void Register()
            {
                OnEffectRemove += AuraEffectApplyFn(spell_warl_demonic_circle_summon_AuraScript::HandleRemove, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_warl_demonic_circle_summon_AuraScript::HandleDummyTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };

        class spell_warl_demonic_circle_summon_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_demonic_circle_summon_SpellScript)

            SpellCastResult CheckIfInvalidPosition()
            {
                Unit* caster = GetCaster();
                switch (caster->GetMapId())
                {
                    // Dalaran Sewers
                    case 617: 
                        // casting on starting pipes
                        if (caster->GetPositionZ() > 13.0f)
                            return SPELL_FAILED_NOT_HERE;
                    break;
                }

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_warl_demonic_circle_summon_SpellScript::CheckIfInvalidPosition);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_demonic_circle_summon_SpellScript();
        }

        AuraScript* GetAuraScript() const
        {
            return new spell_warl_demonic_circle_summon_AuraScript();
        }
};

// 48020 - Demonic Circle: Teleport
/// Updated 4.3.4
class spell_warl_demonic_circle_teleport : public SpellScriptLoader
{
    public:
        spell_warl_demonic_circle_teleport() : SpellScriptLoader("spell_warl_demonic_circle_teleport") { }
 
        class spell_warl_demonic_circle_teleport_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_demonic_circle_teleport_AuraScript);
 
            void HandleTeleport(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Player* player = GetTarget()->ToPlayer())
                {
                    if (GameObject* circle = player->GetGameObject(SPELL_WARLOCK_DEMONIC_CIRCLE_SUMMON))
                    {
                        player->NearTeleportTo(circle->GetPositionX(), circle->GetPositionY(), circle->GetPositionZ(), circle->GetOrientation());
                        player->RemoveMovementImpairingAuras();
						
						// Soulburn: Demonic Circle check
						if(player->HasAura(SPELL_WARLOCK_SOULBURN))
						{
							player->CastSpell(player, SPELL_WARLOCK_SOULBURN_DEMONIC_CIRCLE, true);
						}
                    }
                }
            }
 
            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_warl_demonic_circle_teleport_AuraScript::HandleTeleport, EFFECT_0, SPELL_AURA_MECHANIC_IMMUNITY, AURA_EFFECT_HANDLE_REAL);
            }
        };
 
        AuraScript* GetAuraScript() const
        {
            return new spell_warl_demonic_circle_teleport_AuraScript();
        }
};

// 77801 - Demon Soul - Updated to 4.3.4
class spell_warl_demon_soul : public SpellScriptLoader
{
    public:
        spell_warl_demon_soul() : SpellScriptLoader("spell_warl_demon_soul") { }

        class spell_warl_demon_soul_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_demon_soul_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMON_SOUL_IMP))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMON_SOUL_FELHUNTER))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMON_SOUL_FELGUARD))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMON_SOUL_SUCCUBUS))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMON_SOUL_VOIDWALKER))
                    return false;
                return true;
            }

            void OnHitTarget(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Creature* targetCreature = GetHitCreature())
                {
                    if (targetCreature->isPet())
                    {
                        CreatureTemplate const* ci = sObjectMgr->GetCreatureTemplate(targetCreature->GetEntry());
                        switch (ci->family)
                        {
                            case CREATURE_FAMILY_SUCCUBUS:
                                caster->CastSpell(caster, SPELL_WARLOCK_DEMON_SOUL_SUCCUBUS);
                                break;
                            case CREATURE_FAMILY_VOIDWALKER:
                                caster->CastSpell(caster, SPELL_WARLOCK_DEMON_SOUL_VOIDWALKER);
                                break;
                            case CREATURE_FAMILY_FELGUARD:
                                caster->CastSpell(caster, SPELL_WARLOCK_DEMON_SOUL_FELGUARD);
                                break;
                            case CREATURE_FAMILY_FELHUNTER:
                                caster->CastSpell(caster, SPELL_WARLOCK_DEMON_SOUL_FELHUNTER);
                                break;
                            case CREATURE_FAMILY_IMP:
                                caster->CastSpell(caster, SPELL_WARLOCK_DEMON_SOUL_IMP);
                                break;
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_demon_soul_SpellScript::OnHitTarget, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_demon_soul_SpellScript;
        }
};

// 47193 - Demonic Empowerment
/// Updated 4.3.4
class spell_warl_demonic_empowerment : public SpellScriptLoader
{
    public:
        spell_warl_demonic_empowerment() : SpellScriptLoader("spell_warl_demonic_empowerment") { }

        class spell_warl_demonic_empowerment_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_demonic_empowerment_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMONIC_EMPOWERMENT_SUCCUBUS) 
                    || !sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER) 
                    || !sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMONIC_EMPOWERMENT_FELGUARD) 
                    || !sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMONIC_EMPOWERMENT_FELHUNTER) 
                    || !sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMONIC_EMPOWERMENT_IMP))
                    return false;
                return true;
            }

            void HandleScriptEffect(SpellEffIndex /*effIndex*/)
            {
                if (Creature* targetCreature = GetHitCreature())
                {
                    if (targetCreature->isPet())
                    {
                        CreatureTemplate const* ci = sObjectMgr->GetCreatureTemplate(targetCreature->GetEntry());
                        switch (ci->family)
                        {
                            case CREATURE_FAMILY_SUCCUBUS:
                                targetCreature->CastSpell(targetCreature, SPELL_WARLOCK_DEMONIC_EMPOWERMENT_SUCCUBUS, true);
                                break;
                            case CREATURE_FAMILY_VOIDWALKER:
                            {
                                SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER);
                                int32 hp = int32(targetCreature->CountPctFromMaxHealth(GetCaster()->CalculateSpellDamage(targetCreature, spellInfo, 0)));
                                targetCreature->CastCustomSpell(targetCreature, SPELL_WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER, &hp, NULL, NULL, true);
                                break;
                            }
                            case CREATURE_FAMILY_FELGUARD:
                                targetCreature->CastSpell(targetCreature, SPELL_WARLOCK_DEMONIC_EMPOWERMENT_FELGUARD, true);
                                break;
                            case CREATURE_FAMILY_FELHUNTER:
                                targetCreature->CastSpell(targetCreature, SPELL_WARLOCK_DEMONIC_EMPOWERMENT_FELHUNTER, true);
                                break;
                            case CREATURE_FAMILY_IMP:
                                targetCreature->CastSpell(targetCreature, SPELL_WARLOCK_DEMONIC_EMPOWERMENT_IMP, true);
                                break;
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_demonic_empowerment_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_demonic_empowerment_SpellScript();
        }
};

// 47422 - Everlasting Affliction
/// Updated 4.3.4
class spell_warl_everlasting_affliction : public SpellScriptLoader
{
    public:
        spell_warl_everlasting_affliction() : SpellScriptLoader("spell_warl_everlasting_affliction") { }

        class spell_warl_everlasting_affliction_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_everlasting_affliction_SpellScript);

            void HandleScriptEffect(SpellEffIndex /*effIndex*/)
            {
                if (Unit* unitTarget = GetHitUnit())
                    // Refresh corruption on target
                    if (AuraEffect* aur = unitTarget->GetAuraEffect(SPELL_AURA_PERIODIC_DAMAGE, SPELLFAMILY_WARLOCK, 0x2, 0, 0, GetCaster()->GetGUID()))
                        aur->GetBase()->RefreshDuration();
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_everlasting_affliction_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_everlasting_affliction_SpellScript();
        }
};

// 77799 - Fel Flame - Updated to 4.3.4
class spell_warl_fel_flame : public SpellScriptLoader
{
    public:
        spell_warl_fel_flame() : SpellScriptLoader("spell_warl_fel_flame") { }

        class spell_warl_fel_flame_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_fel_flame_SpellScript);

            void OnHitTarget(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();
                Aura* aura = target->GetAura(SPELL_WARLOCK_UNSTABLE_AFFLICTION, caster->GetGUID());
                if (!aura)
                    aura = target->GetAura(SPELL_WARLOCK_IMMOLATE, caster->GetGUID());

                if (!aura)
                    return;

                int32 newDuration = aura->GetDuration() + GetSpellInfo()->Effects[EFFECT_1].CalcValue() * 1000;
                aura->SetDuration(std::min(newDuration, aura->GetMaxDuration()));
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_fel_flame_SpellScript::OnHitTarget, EFFECT_1, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_fel_flame_SpellScript;
        }
};

// 48181 - Haunt
/// Updated 4.3.4
class spell_warl_haunt : public SpellScriptLoader
{
    public:
        spell_warl_haunt() : SpellScriptLoader("spell_warl_haunt") { }

        class spell_warl_haunt_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_haunt_SpellScript);

            void HandleOnHit()
            {
                if (Aura* aura = GetHitAura())
                    if (AuraEffect* aurEff = aura->GetEffect(EFFECT_1))
                        aurEff->SetAmount(GetHitDamage());
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_warl_haunt_SpellScript::HandleOnHit);
            }
        };

        class spell_warl_haunt_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_haunt_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_HAUNT_HEAL))
                    return false;
                return true;
            }

            void HandleRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster = GetCaster())
                {
                    int32 amount = aurEff->GetAmount();
                    GetTarget()->CastCustomSpell(caster, SPELL_WARLOCK_HAUNT_HEAL, &amount, NULL, NULL, true, NULL, aurEff, GetCasterGUID());
                }
            }
            
            void Register()
            {
                OnEffectRemove += AuraEffectApplyFn(spell_warl_haunt_AuraScript::HandleRemove, EFFECT_1, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_haunt_SpellScript();
        }

        AuraScript* GetAuraScript() const
        {
            return new spell_warl_haunt_AuraScript();
        }
};

// 755 Health Funnel
/// Updated 4.3.4
class spell_warl_health_funnel : public SpellScriptLoader
{
public:
    spell_warl_health_funnel() : SpellScriptLoader("spell_warl_health_funnel") { }
 
    class spell_warl_health_funnel_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_warl_health_funnel_AuraScript);
 
        void ApplyEffect(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetTarget();

            if (!caster || !target)
                return;
 
            if (caster->HasAura(SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_R2))
            {
                target->AddAura(SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_BUFF_R2, target);
            }
            else if (caster->HasAura(SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_R1))
            {
                target->AddAura(SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_BUFF_R1, target);
            }
        }
 
        void RemoveEffect(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* target = GetTarget();
            
            if(!target)
                return;

            target->RemoveAurasDueToSpell(SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_BUFF_R1);
            target->RemoveAurasDueToSpell(SPELL_WARLOCK_IMPROVED_HEALTH_FUNNEL_BUFF_R2);
        }
 
        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_warl_health_funnel_AuraScript::ApplyEffect, EFFECT_0, SPELL_AURA_OBS_MOD_HEALTH, AURA_EFFECT_HANDLE_REAL);
            OnEffectRemove += AuraEffectRemoveFn(spell_warl_health_funnel_AuraScript::RemoveEffect, EFFECT_0, SPELL_AURA_OBS_MOD_HEALTH, AURA_EFFECT_HANDLE_REAL);
        }
    };
 
    AuraScript* GetAuraScript() const
    {
        return new spell_warl_health_funnel_AuraScript();
    }
};

// 1454 - Life Tap
/// Updated 4.3.4
class spell_warl_life_tap : public SpellScriptLoader
{
    public:
        spell_warl_life_tap() : SpellScriptLoader("spell_warl_life_tap") { }

        class spell_warl_life_tap_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_life_tap_SpellScript);

            bool Load()
            {
                return GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_LIFE_TAP_ENERGIZE) || !sSpellMgr->GetSpellInfo(SPELL_WARLOCK_LIFE_TAP_ENERGIZE_2))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* caster = GetCaster()->ToPlayer();
                if (Unit* target = GetHitUnit())
                {
                    int32 damage = caster->CountPctFromMaxHealth(GetSpellInfo()->Effects[EFFECT_2].CalcValue());
                    int32 mana = CalculatePct(damage, GetSpellInfo()->Effects[EFFECT_1].CalcValue());

                    // Shouldn't Appear in Combat Log
                    target->ModifyHealth(-damage);

                    // Improved Life Tap mod
					if (AuraEffect const* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_WARLOCK, SPELL_WARLOCK_IMPROVED_LIFE_TAP_ICON_ID, 0))
                        AddPct(mana, aurEff->GetAmount());

                    caster->CastCustomSpell(target, SPELL_WARLOCK_LIFE_TAP_ENERGIZE, &mana, NULL, NULL, false);

                    // Mana Feed
                    if (AuraEffect const* aurEff = caster->GetAuraEffect(SPELL_AURA_ADD_FLAT_MODIFIER, SPELLFAMILY_WARLOCK, SPELL_WARLOCK_MANA_FEED_ICON_ID, 0))
                    {
                        int32 manaFeedVal = aurEff->GetAmount();
                        ApplyPct(manaFeedVal, mana);
                        caster->CastCustomSpell(caster, SPELL_WARLOCK_LIFE_TAP_ENERGIZE_2, &manaFeedVal, NULL, NULL, true, NULL);
                    }
                }
            }

            SpellCastResult CheckCast()
            {
                if (int32(GetCaster()->GetHealth()) > int32(GetCaster()->CountPctFromMaxHealth(GetSpellInfo()->Effects[EFFECT_2].CalcValue())))
                    return SPELL_CAST_OK;
                return SPELL_FAILED_FIZZLE;
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_life_tap_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_warl_life_tap_SpellScript::CheckCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_life_tap_SpellScript();
        }
};

// 27285 - Seed of Corruption
/// Updated 4.3.4
class spell_warl_seed_of_corruption : public SpellScriptLoader
{
    public:
        spell_warl_seed_of_corruption() : SpellScriptLoader("spell_warl_seed_of_corruption") { }

        class spell_warl_seed_of_corruption_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_seed_of_corruption_SpellScript);

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                if(Unit* caster = GetCaster())
                {
                    if(_SeedOfCorruptionFlag)
                    {
                        //Resets the flag for the next SoC without soulburn
                        _SeedOfCorruptionFlag = false;

                        //The detonation is successful, soul shard is refund
                        caster->CastSpell(caster, SPELL_WARLOCK_SOUL_SHARD_ENERGIZE, true);

                        //All target of the seed of corruption detonation are affected by corruption
                        for (std::list<WorldObject*>::iterator iter = targets.begin(); iter != targets.end(); ++iter)
                        {
                            if ((*iter))
                            {
                                if (Unit* unit = (*iter)->ToUnit())
                                {
                                    caster->CastSpell(unit, SPELL_WARLOCK_CORRUPTION, true);
                                }
                            }
                        }
                    }
                }

                if (GetExplTargetUnit())
                    targets.remove(GetExplTargetUnit());
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_warl_seed_of_corruption_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_seed_of_corruption_SpellScript();
        }
};

// 29858 - Soulshatter
/// Updated 4.3.4
class spell_warl_soulshatter : public SpellScriptLoader
{
    public:
        spell_warl_soulshatter() : SpellScriptLoader("spell_warl_soulshatter") { }

        class spell_warl_soulshatter_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_soulshatter_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_SOULSHATTER))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Unit* target = GetHitUnit())
                    if (target->CanHaveThreatList() && target->getThreatManager().getThreat(caster) > 0.0f)
                        caster->CastSpell(target, SPELL_WARLOCK_SOULSHATTER, true);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_warl_soulshatter_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_soulshatter_SpellScript();
        }
};

// 30108, 34438, 34439, 35183 - Unstable Affliction
/// Updated 4.3.4
class spell_warl_unstable_affliction : public SpellScriptLoader
{
    public:
        spell_warl_unstable_affliction() : SpellScriptLoader("spell_warl_unstable_affliction") { }

        class spell_warl_unstable_affliction_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_unstable_affliction_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_WARLOCK_UNSTABLE_AFFLICTION_DISPEL))
                    return false;
                return true;
            }

            void HandleDispel(DispelInfo* dispelInfo)
            {
                if (Unit* caster = GetCaster())
                    if (AuraEffect const* aurEff = GetEffect(EFFECT_1))
                    {
                        int32 damage = aurEff->GetAmount() * 9;
                        // backfire damage and silence
                        caster->CastCustomSpell(dispelInfo->GetDispeller(), SPELL_WARLOCK_UNSTABLE_AFFLICTION_DISPEL, &damage, NULL, NULL, true, NULL, aurEff);
                    }
            }

            void Register()
            {
                AfterDispel += AuraDispelFn(spell_warl_unstable_affliction_AuraScript::HandleDispel);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_warl_unstable_affliction_AuraScript();
        }
};

void AddSC_warlock_spell_scripts()
{
    new spell_warl_felstorm();
    new spell_warl_shadow_bolt();
    new spell_warl_nether_protection();
    new spell_warl_soul_link();
    new spell_warl_shadowburn();
    new spell_warl_seduction();
	new spell_warl_hand_of_guldan();
    new spell_warl_armor_nether_ward_ignore();
    new spell_warl_fel_flame();
    new spell_warl_incinerate();
    new spell_warl_curse_of_the_elements();
    new spell_warl_curse_of_weakness();
    new spell_warl_soul_swap();
    new spell_warl_soul_swap_buff();
    new spell_warl_soul_swap_exhale();
    new spell_warl_drain_life();
    new spell_warl_drain_soul();
    new spell_warl_banish();
    new spell_warl_conflagrate();
    new spell_warl_create_healthstone();
    new spell_warl_demonic_empowerment();
    new spell_warl_demon_soul();
    new spell_warl_everlasting_affliction();
    new spell_warl_seed_of_corruption_dot();
    new spell_warl_seed_of_corruption();
    new spell_warl_shadow_ward();
    new spell_warl_soulshatter();
    new spell_warl_life_tap();
    new spell_warl_demonic_circle_summon();
    new spell_warl_demonic_circle_teleport();
    new spell_warl_haunt();
    new spell_warl_unstable_affliction();
    new spell_warl_bane_of_doom();
    new spell_warl_health_funnel();
}
