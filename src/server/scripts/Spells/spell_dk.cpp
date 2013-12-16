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
 * Scripts for spells with SPELLFAMILY_DEATHKNIGHT and SPELLFAMILY_GENERIC spells used by deathknight players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_dk_".
 */

#include "Player.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"

enum DeathKnightSpells
{
    SPELL_DK_ANTI_MAGIC_SHELL_TALENT            = 51052,
    SPELL_DK_BLOOD_BOIL_TRIGGERED               = 65658,
    SPELL_DK_BLOOD_GORGED_HEAL                  = 50454,
    SPELL_DK_CORPSE_EXPLOSION_TRIGGERED         = 43999,
    SPELL_DK_CORPSE_EXPLOSION_VISUAL            = 51270,
    SPELL_DK_DEATH_COIL_DAMAGE                  = 47632,
    SPELL_DK_DEATH_COIL_HEAL                    = 47633,
    SPELL_DK_DEATH_STRIKE_HEAL                  = 45470,
    SPELL_DK_GHOUL_EXPLODE                      = 47496,
    SPELL_DK_GLYPH_OF_ICEBOUND_FORTITUDE        = 58625,
    SPELL_DK_RUNIC_POWER_ENERGIZE               = 49088,
    SPELL_DK_SCOURGE_STRIKE_TRIGGERED           = 70890,
    SPELL_DK_WILL_OF_THE_NECROPOLIS_TALENT_R1   = 49189,
    SPELL_DK_WILL_OF_THE_NECROPOLIS_AURA_R1     = 52284,
    SPELL_DK_BLOOD_PRESENCE                     = 48266,
    SPELL_DK_IMPROVED_BLOOD_PRESENCE_TRIGGERED  = 63611,
    SPELL_DK_UNHOLY_PRESENCE                    = 48265,
    SPELL_DK_IMPROVED_UNHOLY_PRESENCE_TRIGGERED = 63622,
    SPELL_DK_ITEM_SIGIL_VENGEFUL_HEART          = 64962,
    SPELL_DK_ITEM_T8_MELEE_4P_BONUS             = 64736,
    SPELL_DK_SHADOW_INFUSION                    = 91342,
    SPELL_DK_DARK_TRANSFORMATION_ACTIVATION     = 93426,
    SPELL_DK_NECROTIC_STRIKE                    = 73975,
};

enum DeathKnightSpellIcons
{
    DK_ICON_ID_IMPROVED_DEATH_STRIKE            = 2751
};

int32 necroAmount = 0;

// 73975 - Necrotic Strike
class spell_dk_necrotic_strike : public SpellScriptLoader
{
    public:
        spell_dk_necrotic_strike() : SpellScriptLoader("spell_dk_necrotic_strike") { }
        
        class spell_dk_necrotic_strike_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_necrotic_strike_SpellScript)

            void HandleOnHit()
            {
                Unit* caster = GetCaster();
                Unit* target = GetExplTargetUnit();

                if(caster && target)
                {
                    if(AuraEffect* aurEff = target->GetAuraEffect(SPELL_DK_NECROTIC_STRIKE, EFFECT_0, caster->GetGUID()))
                    {
                        necroAmount = aurEff->GetAmount();
                    }
                    else
                    {
                        necroAmount = 0;
                    }
                }
            }

            void Register()
            {
                BeforeHit += SpellHitFn(spell_dk_necrotic_strike_SpellScript::HandleOnHit);
            }
        };

        class spell_dk_necrotic_strike_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_necrotic_strike_AuraScript);

            void HandleEffectCalcAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                Unit* caster = GetCaster();
                Unit* target = GetUnitOwner();

                if (caster && target)
                {
                    canBeRecalculated = false;

                    int32 toAdd = caster->GetTotalAttackPowerValue(BASE_ATTACK) * 0.70f;

                    // Amount absorbed scales with resilience
                    toAdd -= target->GetDamageReduction(toAdd);

                    amount = necroAmount + toAdd;
                }
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_necrotic_strike_AuraScript::HandleEffectCalcAmount, EFFECT_0, SPELL_AURA_SCHOOL_HEAL_ABSORB);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_necrotic_strike_SpellScript();
        }

        AuraScript *GetAuraScript() const
        {
            return new spell_dk_necrotic_strike_AuraScript();
        }
};

// 91342 - Shadow Infusion (PET BUFF)
class spell_dk_shadow_infusion : public SpellScriptLoader
{
    public:
        spell_dk_shadow_infusion() : SpellScriptLoader("spell_dk_shadow_infusion") { }

        class spell_dk_shadow_infusion_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_shadow_infusion_SpellScript)

            void HandleAfterHit()
            {
                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();

                if(caster && target && target->GetAura(SPELL_DK_SHADOW_INFUSION)->GetStackAmount() >= 5)
                {
                    caster->AddAura(SPELL_DK_DARK_TRANSFORMATION_ACTIVATION, GetCaster());
                }
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_dk_shadow_infusion_SpellScript::HandleAfterHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_shadow_infusion_SpellScript();
        }
};

// 63560 - Dark Transformation
class spell_dk_dark_transformation : public SpellScriptLoader
{
    public:
        spell_dk_dark_transformation() : SpellScriptLoader("spell_dk_dark_transformation") { }

        class spell_dk_dark_transformation_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_dark_transformation_SpellScript)

            void HandleAfterHit()
            {
                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();

                if(target && target->GetAura(SPELL_DK_SHADOW_INFUSION) && target->GetAura(SPELL_DK_SHADOW_INFUSION)->GetStackAmount() == 5)
                    target->RemoveAura(SPELL_DK_SHADOW_INFUSION);

                if(caster)
                    caster->RemoveAura(SPELL_DK_DARK_TRANSFORMATION_ACTIVATION);
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_dk_dark_transformation_SpellScript::HandleAfterHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_dark_transformation_SpellScript();
        }
};

// 49184 - Howling Blast
class spell_dk_howling_blast : public SpellScriptLoader
{
    public:
        spell_dk_howling_blast() : SpellScriptLoader("spell_dk_howling_blast") { }

        class spell_dk_howling_blast_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_howling_blast_SpellScript);

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                if(GetExplTargetUnit())
                    targets.remove(GetExplTargetUnit());
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_dk_howling_blast_SpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_DEST_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_howling_blast_SpellScript();
        }
};

// 50462 - Anti-Magic Shell (on raid member)
class spell_dk_anti_magic_shell_raid : public SpellScriptLoader
{
    public:
        spell_dk_anti_magic_shell_raid() : SpellScriptLoader("spell_dk_anti_magic_shell_raid") { }

        class spell_dk_anti_magic_shell_raid_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_anti_magic_shell_raid_AuraScript);

            uint32 absorbPct;

            bool Load()
            {
                absorbPct = GetSpellInfo()->Effects[EFFECT_0].CalcValue(GetCaster());
                return true;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
            {
                /// @todo this should absorb limited amount of damage, but no info on calculation formula
                amount = -1;
            }

            void Absorb(AuraEffect* /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                absorbAmount = CalculatePct(dmgInfo.GetDamage(), absorbPct);
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_anti_magic_shell_raid_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
                OnEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_shell_raid_AuraScript::Absorb, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_anti_magic_shell_raid_AuraScript();
        }
};

// 48707 - Anti-Magic Shell (on self)
class spell_dk_anti_magic_shell_self : public SpellScriptLoader
{
    public:
        spell_dk_anti_magic_shell_self() : SpellScriptLoader("spell_dk_anti_magic_shell_self") { }

        class spell_dk_anti_magic_shell_self_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_anti_magic_shell_self_AuraScript);

            uint32 absorbPct, hpPct;
            bool Load()
            {
                absorbPct = GetSpellInfo()->Effects[EFFECT_0].CalcValue(GetCaster());
                hpPct = GetSpellInfo()->Effects[EFFECT_1].CalcValue(GetCaster());
                return true;
            }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_RUNIC_POWER_ENERGIZE))
                    return false;
                return true;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
            {
                amount = GetCaster()->CountPctFromMaxHealth(hpPct);
            }

            void Absorb(AuraEffect* /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                absorbAmount = std::min(CalculatePct(dmgInfo.GetDamage(), absorbPct), GetTarget()->CountPctFromMaxHealth(hpPct));
            }

            void Trigger(AuraEffect* aurEff, DamageInfo & /*dmgInfo*/, uint32 & absorbAmount)
            {
                if(Unit* target = GetTarget())
                {
                    // Not using IconID here because Magic Suppression IconID is not unique for DKs
                    if(target->HasAura(49224) || target->HasAura(49610) || target->HasAura(49611))
                    {
                        // damage absorbed by Anti-Magic Shell energizes the DK with additional runic power.
                        // This, if I'm not mistaken, shows that we get back ~20% of the absorbed damage as runic power.
                        int32 bp = absorbAmount * 2 / 10;
                        target->CastCustomSpell(target, SPELL_DK_RUNIC_POWER_ENERGIZE, &bp, NULL, NULL, true, NULL, aurEff);
                    }
                }
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_anti_magic_shell_self_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
                OnEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_shell_self_AuraScript::Absorb, EFFECT_0);
                AfterEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_shell_self_AuraScript::Trigger, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_anti_magic_shell_self_AuraScript();
        }
};

// 50461 - Anti-Magic Zone
class spell_dk_anti_magic_zone : public SpellScriptLoader
{
    public:
        spell_dk_anti_magic_zone() : SpellScriptLoader("spell_dk_anti_magic_zone") { }

        class spell_dk_anti_magic_zone_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_anti_magic_zone_AuraScript);

            uint32 absorbPct;

            bool Load()
            {
                absorbPct = GetSpellInfo()->Effects[EFFECT_0].CalcValue(GetCaster());
                return true;
            }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_ANTI_MAGIC_SHELL_TALENT))
                    return false;
                return true;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
            {
                if(Unit* npc = GetCaster())
                {
                    SpellInfo const* talentSpell = sSpellMgr->GetSpellInfo(SPELL_DK_ANTI_MAGIC_SHELL_TALENT);
                    amount = talentSpell->Effects[EFFECT_0].CalcValue(npc);

                    if (Unit* unit = npc->GetCharmerOrOwner())
                    {
                        if(Player* player = unit->ToPlayer())
                        {   
                            amount += int32(4 * player->GetStat(STAT_STRENGTH));
                        }
                    }
                }
            }

            void Absorb(AuraEffect* /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                 absorbAmount = CalculatePct(dmgInfo.GetDamage(), absorbPct);
            }

            void Register()
            {
                 DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_anti_magic_zone_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
                 OnEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_zone_AuraScript::Absorb, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_anti_magic_zone_AuraScript();
        }
};

// 48721 - Blood Boil
class spell_dk_blood_boil : public SpellScriptLoader
{
    public:
        spell_dk_blood_boil() : SpellScriptLoader("spell_dk_blood_boil") { }

        class spell_dk_blood_boil_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_blood_boil_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_BLOOD_BOIL_TRIGGERED))
                    return false;
                return true;
            }

            bool Load()
            {
                _executed = false;
                return GetCaster()->GetTypeId() == TYPEID_PLAYER && GetCaster()->getClass() == CLASS_DEATH_KNIGHT;
            }

            void HandleAfterHit()
            {
                if (_executed || !GetHitUnit())
                    return;

                _executed = true;
                GetCaster()->CastSpell(GetCaster(), SPELL_DK_BLOOD_BOIL_TRIGGERED, true);
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_dk_blood_boil_SpellScript::HandleAfterHit);
            }

            bool _executed;
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_blood_boil_SpellScript();
        }
};

// 50453 - Bloodworms Health Leech
class spell_dk_blood_gorged : public SpellScriptLoader
{
    public:
        spell_dk_blood_gorged() : SpellScriptLoader("spell_dk_blood_gorged") { }

        class spell_dk_blood_gorged_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_blood_gorged_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_BLOOD_GORGED_HEAL))
                    return false;
                return true;
            }

            bool Load()
            {
                _procTarget = NULL;
                return true;
            }

            bool CheckProc(ProcEventInfo& /*eventInfo*/)
            {
                _procTarget = GetTarget()->GetOwner();
                return _procTarget;
            }

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();
                int32 bp = int32(eventInfo.GetDamageInfo()->GetDamage() * 1.5f);
                GetTarget()->CastCustomSpell(SPELL_DK_BLOOD_GORGED_HEAL, SPELLVALUE_BASE_POINT0, bp, _procTarget, true, NULL, aurEff);
            }

            void Register()
            {
                DoCheckProc += AuraCheckProcFn(spell_dk_blood_gorged_AuraScript::CheckProc);
                OnEffectProc += AuraEffectProcFn(spell_dk_blood_gorged_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
            }

        private:
            Unit* _procTarget;
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_blood_gorged_AuraScript();
        }
};

// 49158 - Corpse Explosion (51325, 51326, 51327, 51328)
class spell_dk_corpse_explosion : public SpellScriptLoader
{
    public:
        spell_dk_corpse_explosion() : SpellScriptLoader("spell_dk_corpse_explosion") { }

        class spell_dk_corpse_explosion_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_corpse_explosion_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_CORPSE_EXPLOSION_TRIGGERED) || !sSpellMgr->GetSpellInfo(SPELL_DK_GHOUL_EXPLODE))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_CORPSE_EXPLOSION_VISUAL))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (Unit* unitTarget = GetHitUnit())
                {
                    int32 bp = 0;
                    if (unitTarget->isAlive())  // Living ghoul as a target
                    {
                        bp = int32(unitTarget->CountPctFromMaxHealth(25));
                        unitTarget->CastCustomSpell(unitTarget, SPELL_DK_GHOUL_EXPLODE, &bp, NULL, NULL, false);
                    }
                    else                        // Some corpse
                    {
                        bp = GetEffectValue();
                        GetCaster()->CastCustomSpell(unitTarget, GetSpellInfo()->Effects[EFFECT_1].CalcValue(), &bp, NULL, NULL, true);
                        // Corpse Explosion (Suicide)
                        unitTarget->CastSpell(unitTarget, SPELL_DK_CORPSE_EXPLOSION_TRIGGERED, true);
                    }
                    // Set corpse look
                    GetCaster()->CastSpell(unitTarget, SPELL_DK_CORPSE_EXPLOSION_VISUAL, true);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_dk_corpse_explosion_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_corpse_explosion_SpellScript();
        }
};

// 47541 - Death Coil
class spell_dk_death_coil : public SpellScriptLoader
{
    public:
        spell_dk_death_coil() : SpellScriptLoader("spell_dk_death_coil") { }

        class spell_dk_death_coil_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_death_coil_SpellScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_DEATH_COIL_DAMAGE) || !sSpellMgr->GetSpellInfo(SPELL_DK_DEATH_COIL_HEAL))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();
                int32 bp = GetEffectValue();

                if (caster && target)
                {
                    if (caster->IsFriendlyTo(target))
                    {
                        caster->CastSpell(target, SPELL_DK_DEATH_COIL_HEAL);
                    }
                    else
                    {
                        caster->CastSpell(target, SPELL_DK_DEATH_COIL_DAMAGE);
                    }
                }
            }

            SpellCastResult CheckCast()
            {
                Unit* caster = GetCaster();
                Unit* target = GetExplTargetUnit();

                if (caster && target)
                {
                    if (!caster->IsFriendlyTo(target) && !caster->isInFront(target))
                        return SPELL_FAILED_UNIT_NOT_INFRONT;

                    if (target->IsFriendlyTo(caster) && target->GetCreatureType() != CREATURE_TYPE_UNDEAD)
                        return SPELL_FAILED_BAD_TARGETS;
                }
                else
                    return SPELL_FAILED_BAD_TARGETS;

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dk_death_coil_SpellScript::CheckCast);
                OnEffectHitTarget += SpellEffectFn(spell_dk_death_coil_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_death_coil_SpellScript();
        }
};

// 52751 - Death Gate
class spell_dk_death_gate : public SpellScriptLoader
{
    public:
        spell_dk_death_gate() : SpellScriptLoader("spell_dk_death_gate") {}

        class spell_dk_death_gate_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_death_gate_SpellScript);

            SpellCastResult CheckClass()
            {
                if (GetCaster()->getClass() != CLASS_DEATH_KNIGHT)
                {
                    SetCustomCastResultMessage(SPELL_CUSTOM_ERROR_MUST_BE_DEATH_KNIGHT);
                    return SPELL_FAILED_CUSTOM_ERROR;
                }

                return SPELL_CAST_OK;
            }

            void HandleScript(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);
                if (Unit* target = GetHitUnit())
                    target->CastSpell(target, GetEffectValue(), false);
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dk_death_gate_SpellScript::CheckClass);
                OnEffectHitTarget += SpellEffectFn(spell_dk_death_gate_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_death_gate_SpellScript();
        }
};

// 49560 - Death Grip
class spell_dk_death_grip : public SpellScriptLoader
{
    public:
        spell_dk_death_grip() : SpellScriptLoader("spell_dk_death_grip") { }

        class spell_dk_death_grip_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_death_grip_SpellScript);

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                int32 damage = GetEffectValue();
                Position const* pos = GetExplTargetDest();
                if (Unit* target = GetHitUnit())
                {
                    if (!target->HasAuraType(SPELL_AURA_DEFLECT_SPELLS)) // Deterrence
                    {
                        float speedZ = 10.0f;
                        float dist = pos->GetExactDist2d(target->GetPositionX(),target->GetPositionY());
                        float speedXY = (dist / 0.75f);

                        target->GetMotionMaster()->MoveJump(pos->GetPositionX(),pos->GetPositionY(),pos->GetPositionZ(),speedXY,speedZ);
                    }
                }
            }

            void HandleOnCast()
            {
                // Glyph of Resilient Grip
                if(Unit * caster = GetCaster())
                    if (Unit* target = caster->ToPlayer()->GetSelectedUnit())
                        if(target->IsImmunedToSpell(sSpellMgr->GetSpellInfo(49560)))
                            caster->ToPlayer()->RemoveSpellCooldown(49576, true);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_dk_death_grip_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCast += SpellCastFn(spell_dk_death_grip_SpellScript::HandleOnCast);
            }

        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_death_grip_SpellScript();
        }
};

// 48743 - Death Pact
class spell_dk_death_pact : public SpellScriptLoader
{
    public:
        spell_dk_death_pact() : SpellScriptLoader("spell_dk_death_pact") { }

        class spell_dk_death_pact_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_death_pact_SpellScript);

            SpellCastResult CheckCast()
            {
                // Check if we have valid targets, otherwise skip spell casting here
                if (Player* player = GetCaster()->ToPlayer())
                    for (Unit::ControlList::const_iterator itr = player->m_Controlled.begin(); itr != player->m_Controlled.end(); ++itr)
                        if (Creature* undeadPet = (*itr)->ToCreature())
                            if (undeadPet->isAlive() &&
                                undeadPet->GetOwnerGUID() == player->GetGUID() &&
                                undeadPet->GetCreatureType() == CREATURE_TYPE_UNDEAD &&
                                undeadPet->IsWithinDist(player, 100.0f, false))
                                return SPELL_CAST_OK;

                return SPELL_FAILED_NO_PET;
            }

            void FilterTargets(std::list<WorldObject*>& targetList)
            {
                Unit* target = NULL;
                for (std::list<WorldObject*>::iterator itr = targetList.begin(); itr != targetList.end(); ++itr)
                {
                    if (Unit* unit = (*itr)->ToUnit())
                        if (unit->GetOwnerGUID() == GetCaster()->GetGUID() && unit->GetCreatureType() == CREATURE_TYPE_UNDEAD)
                        {
                            target = unit;
                            break;
                        }
                }

                targetList.clear();
                if (target)
                    targetList.push_back(target);
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dk_death_pact_SpellScript::CheckCast);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_dk_death_pact_SpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_DEST_AREA_ALLY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_death_pact_SpellScript();
        }
};

// 47496 - Explode, Ghoul spell for Corpse Explosion
class spell_dk_ghoul_explode : public SpellScriptLoader
{
    public:
        spell_dk_ghoul_explode() : SpellScriptLoader("spell_dk_ghoul_explode") { }

        class spell_dk_ghoul_explode_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_ghoul_explode_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_CORPSE_EXPLOSION_TRIGGERED))
                    return false;
                return true;
            }

            void Suicide(SpellEffIndex /*effIndex*/)
            {
                if (Unit* unitTarget = GetHitUnit())
                {
                    // Corpse Explosion (Suicide)
                    unitTarget->CastSpell(unitTarget, SPELL_DK_CORPSE_EXPLOSION_TRIGGERED, true);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_dk_ghoul_explode_SpellScript::Suicide, EFFECT_1, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_ghoul_explode_SpellScript();
        }
};

// 48792 - Icebound Fortitude
class spell_dk_icebound_fortitude : public SpellScriptLoader
{
    public:
        spell_dk_icebound_fortitude() : SpellScriptLoader("spell_dk_icebound_fortitude") { }

        class spell_dk_icebound_fortitude_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_icebound_fortitude_AuraScript);

            bool Load()
            {
                Unit* caster = GetCaster();
                return caster && caster->GetTypeId() == TYPEID_PLAYER;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
            {
                if (Unit* caster = GetCaster())
                {
                    int32 value = amount;
                    uint32 defValue = uint32(caster->ToPlayer()->GetSkillValue(SKILL_DEFENSE) + caster->ToPlayer()->GetRatingBonusValue(CR_DEFENSE_SKILL));

                    if (defValue > 400)
                        value -= int32((defValue - 400) * 0.15);

                    // Glyph of Icebound Fortitude
                    if (AuraEffect const* aurEff = caster->GetAuraEffect(SPELL_DK_GLYPH_OF_ICEBOUND_FORTITUDE, EFFECT_0))
                    {
                        int32 valMax = -aurEff->GetAmount();
                        if (value > valMax)
                            value = valMax;
                    }
                    amount = value;
                }
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_icebound_fortitude_AuraScript::CalculateAmount, EFFECT_2, SPELL_AURA_MOD_DAMAGE_PERCENT_TAKEN);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_icebound_fortitude_AuraScript();
        }
};

// 48263 - Blood Presence
class spell_dk_improved_blood_presence : public SpellScriptLoader
{
    public:
        spell_dk_improved_blood_presence() : SpellScriptLoader("spell_dk_improved_blood_presence") { }

        class spell_dk_improved_blood_presence_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_improved_blood_presence_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_BLOOD_PRESENCE) || !sSpellMgr->GetSpellInfo(SPELL_DK_IMPROVED_BLOOD_PRESENCE_TRIGGERED))
                    return false;
                return true;
            }

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if(Unit* caster = GetCaster())
                {
                    // Improved Blood Presence
                    if(AuraEffect* aura = caster->GetDummyAuraEffect(SPELLFAMILY_GENERIC, 2636, EFFECT_2))
                    {
                        int32 basePoints0 = aura->GetAmount();
                        caster->CastCustomSpell(caster, SPELL_DK_IMPROVED_BLOOD_PRESENCE_TRIGGERED, &basePoints0, NULL, NULL, true, 0, aura);
                        caster->ToPlayer()->UpdateAllRunesRegen();
                    }
                }
            }

            void HandleEffectRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if(Unit* caster = GetCaster())
                {
                    caster->RemoveAura(SPELL_DK_IMPROVED_BLOOD_PRESENCE_TRIGGERED);
                    caster->ToPlayer()->UpdateAllRunesRegen();
                }
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_dk_improved_blood_presence_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_MOD_BASE_RESISTANCE_PCT, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_dk_improved_blood_presence_AuraScript::HandleEffectRemove, EFFECT_0, SPELL_AURA_MOD_BASE_RESISTANCE_PCT, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_improved_blood_presence_AuraScript();
        }
};

// 48263, 48266, 48265 - Improved Unholy Presence
class spell_dk_improved_unholy_presence : public SpellScriptLoader
{
    public:
        spell_dk_improved_unholy_presence() : SpellScriptLoader("spell_dk_improved_unholy_presence") { }
        
        class spell_dk_improved_unholy_presence_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_improved_unholy_presence_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_UNHOLY_PRESENCE) || !sSpellMgr->GetSpellInfo(SPELL_DK_IMPROVED_UNHOLY_PRESENCE_TRIGGERED))
                    return false;
                return true;
            }

            void HandleEffectApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if(Unit* caster = GetCaster())
                {
                    caster->ToPlayer()->UpdateAllRunesRegen();
                    caster->RemoveAurasDueToSpell(SPELL_DK_IMPROVED_UNHOLY_PRESENCE_TRIGGERED);
                }
            }

            void HandleEffectRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if(Unit* caster = GetCaster())
                {
                    caster->ToPlayer()->UpdateAllRunesRegen();
                    // Improved Unholy Presence
                    if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DEATHKNIGHT, 2633, EFFECT_0))
                    {
                        int32 bp0 = aurEff->GetAmount();

                        caster->CastCustomSpell(caster, SPELL_DK_IMPROVED_UNHOLY_PRESENCE_TRIGGERED, &bp0, NULL, NULL, true);
                    }
                }
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_dk_improved_unholy_presence_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_MOD_MELEE_HASTE, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_dk_improved_unholy_presence_AuraScript::HandleEffectRemove, EFFECT_0, SPELL_AURA_MOD_MELEE_HASTE, AURA_EFFECT_HANDLE_REAL);
            }
        };


        AuraScript* GetAuraScript() const
        {
            return new spell_dk_improved_unholy_presence_AuraScript();
        }
};

// 59754 Rune Tap - Party
class spell_dk_rune_tap_party : public SpellScriptLoader
{
    public:
        spell_dk_rune_tap_party() : SpellScriptLoader("spell_dk_rune_tap_party") { }

        class spell_dk_rune_tap_party_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_rune_tap_party_SpellScript);

            void CheckTargets(std::list<WorldObject*>& targets)
            {
                targets.remove(GetCaster());
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_dk_rune_tap_party_SpellScript::CheckTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_PARTY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_rune_tap_party_SpellScript();
        }
};

// 55090 - Scourge Strike (55265, 55270, 55271)
class spell_dk_scourge_strike : public SpellScriptLoader
{
    public:
        spell_dk_scourge_strike() : SpellScriptLoader("spell_dk_scourge_strike") { }

        class spell_dk_scourge_strike_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_scourge_strike_SpellScript);
            float multiplier;

            bool Load()
            {
                multiplier = 1.0f;
                return true;
            }

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DK_SCOURGE_STRIKE_TRIGGERED))
                    return false;
                return true;
            }

            void HandleAfterHit()
            {
                Unit* caster = GetCaster();
                Unit* unitTarget = GetHitUnit();
                if (caster && unitTarget)
                {
                    int32 bp = GetHitDamage();
                    uint32 disease = unitTarget->GetDiseasesByCaster(caster->GetGUID());
                    uint32 scourgeMul = GetSpellInfo()->Effects[EFFECT_2].BasePoints;

                    bp = CalculatePct(bp, disease * scourgeMul);

                    caster->CastCustomSpell(unitTarget, SPELL_DK_SCOURGE_STRIKE_TRIGGERED, &bp, NULL, NULL, true);
                }
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_dk_scourge_strike_SpellScript::HandleAfterHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_scourge_strike_SpellScript();
        }
};

// 49145 - Spell Deflection
class spell_dk_spell_deflection : public SpellScriptLoader
{
    public:
        spell_dk_spell_deflection() : SpellScriptLoader("spell_dk_spell_deflection") { }

        class spell_dk_spell_deflection_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_spell_deflection_AuraScript);

            uint32 absorbPct;

            bool Load()
            {
                absorbPct = GetSpellInfo()->Effects[EFFECT_0].CalcValue(GetCaster());
                return true;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
            {
                // Set absorbtion amount to unlimited
                amount = -1;
            }

            void Absorb(AuraEffect* /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                // You have a chance equal to your Parry chance
                if ((dmgInfo.GetDamageType() == SPELL_DIRECT_DAMAGE) && roll_chance_f(GetTarget()->GetUnitParryChance()))
                    absorbAmount = CalculatePct(dmgInfo.GetDamage(), absorbPct);
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_spell_deflection_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
                OnEffectAbsorb += AuraEffectAbsorbFn(spell_dk_spell_deflection_AuraScript::Absorb, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_spell_deflection_AuraScript();
        }
};

// 55233 - Vampiric Blood
class spell_dk_vampiric_blood : public SpellScriptLoader
{
    public:
        spell_dk_vampiric_blood() : SpellScriptLoader("spell_dk_vampiric_blood") { }

        class spell_dk_vampiric_blood_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_vampiric_blood_AuraScript);

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
            {
                amount = GetUnitOwner()->CountPctFromMaxHealth(amount);
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_vampiric_blood_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_MOD_INCREASE_HEALTH);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_vampiric_blood_AuraScript();
        }
};

// 81162 - Will of the Necropolis
class spell_dk_will_of_the_necropolis : public SpellScriptLoader
{
    public:
        spell_dk_will_of_the_necropolis() : SpellScriptLoader("spell_dk_will_of_the_necropolis") { }

        class spell_dk_will_of_the_necropolis_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_will_of_the_necropolis_AuraScript);

            void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            { 
                if (Unit* caster = GetCaster())
                    if (caster->GetTypeId() == TYPEID_PLAYER)
                        caster->ToPlayer()->RemoveSpellCooldown(48982, true);
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_dk_will_of_the_necropolis_AuraScript::OnApply, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_will_of_the_necropolis_AuraScript();
        }
};

class spell_dk_frozen_heart : public SpellScriptLoader
{
    public:
        spell_dk_frozen_heart() : SpellScriptLoader("spell_dk_frozen_heart") { }

        class spell_dk_frozen_heart_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_frozen_heart_AuraScript);

            void CalculateBonus(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = true;

                if (!GetCaster())
                    return;

                // Frozen Heart (DK Frost Mastery)
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->HasAuraType(SPELL_AURA_MASTERY))
                        if (caster->GetPrimaryTalentTree(caster->GetActiveSpec()) == BS_DEATH_KNIGHT_FROST)
                            amount += int32(2.0f * caster->GetMasteryPoints());
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_frozen_heart_AuraScript::CalculateBonus, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_frozen_heart_AuraScript();
        }
};

/*########################
###### Ghoul Spells ######
##########################*/

// Gnaw
class spell_dk_gnaw : public SpellScriptLoader
{
public:
    spell_dk_gnaw() : SpellScriptLoader("spell_dk_gnaw") { }

    class spell_dk_gnaw_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_gnaw_SpellScript)

        void HandleEffect(SpellEffIndex /*eff*/)
        {
            if (!GetHitUnit())
                return;

            if (Unit *caster = GetCaster())
            {
                if(caster->isPet()){
                    if (caster->HasAura(63560))
                    {
                        caster->CastSpell(GetHitUnit(), 91797, true);
                    } 
                    else
                        caster->CastSpell(GetHitUnit(), 91800, true);     
                }
            }   
            
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_dk_gnaw_SpellScript::HandleEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_dk_gnaw_SpellScript();
    }
};

// Claw
class spell_dk_claw : public SpellScriptLoader
{
public:
    spell_dk_claw() : SpellScriptLoader("spell_dk_claw") { }

    class spell_dk_claw_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_claw_SpellScript)

        void HandleEffect(SpellEffIndex /*eff*/)
        {
            if (!GetHitUnit())
                return;

            if (Unit *caster = GetCaster())
            {
                    if (caster->HasAura(63560))
                    {
                        caster->CastSpell(GetHitUnit(), 91778, true);
                    } else
                        caster->CastSpell(GetHitUnit(), 91776, true);   
            }  
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_dk_claw_SpellScript::HandleEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_dk_claw_SpellScript();
    }
};

// 47482  leap
class spell_dk_leap : public SpellScriptLoader
{
public:
    spell_dk_leap() : SpellScriptLoader("spell_dk_leap") { }

    class spell_dk_leap_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_leap_SpellScript)

        void HandleEffect(SpellEffIndex /*eff*/)
        {
            if (!GetHitUnit()){
                return;
            }

            if (Unit *caster = GetCaster())
            {
                    if (caster->HasAura(63560))
                    {
                        caster->CastSpell(GetHitUnit(), 91802, true);
                    } else
                        caster->CastSpell(GetHitUnit(), 91809, true);                    
            }   

        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_dk_leap_SpellScript::HandleEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_dk_leap_SpellScript();
    }
};

// 47482  Huddle
class spell_dk_huddle : public SpellScriptLoader
{
public:
    spell_dk_huddle() : SpellScriptLoader("spell_dk_huddle") { }

    class spell_dk_huddle_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_huddle_SpellScript)

        void HandleEffect(SpellEffIndex /*eff*/)
        {
            if (!GetHitUnit())
                return;

            if (Unit *caster = GetCaster())
            {
                if(caster->isPet()){
                    if (caster->HasAura(63560))
                    {
                        caster->CastSpell(GetHitUnit(), 91837, true);
                    } else
                        caster->CastSpell(GetHitUnit(), 91838, true); 
                }
            }   
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_dk_huddle_SpellScript::HandleEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_dk_huddle_SpellScript();
    }
};

// 49998 - Death Strike 
class spell_dk_death_strike : public SpellScriptLoader
{
public:
    spell_dk_death_strike() : SpellScriptLoader("spell_dk_death_strike") { }

    class spell_dk_death_strike_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dk_death_strike_SpellScript)

        void HandleOnCast()
        {
            if(Unit * caster = GetCaster())
            {
                uint32 healthPct;
                if (caster->HasAura(101568)) // Glyph of Dark Succor
                {
                    healthPct = caster->CountPctFromMaxHealth(20);
                    caster->RemoveAura(101568);
                }
                else
                {
                    healthPct = caster->CountPctFromMaxHealth(7);
                }
                uint32 damageTaken = caster->GetDamageTakenInPastSecs(5) * 0.20f;

                // Improved Death Strike
                if (AuraEffect const * aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DEATHKNIGHT, 2751, EFFECT_2))
                    AddPct(damageTaken, aurEff->GetAmount());

                if (healthPct > damageTaken)
                    bp = int32(healthPct);
                else 
                    bp = int32(damageTaken);                

                caster->CastCustomSpell(caster, 45470, &bp, NULL, NULL, false);
            }
        }
        void HandleHit(SpellEffIndex /*effIndex*/)
        {
            if(Unit * caster = GetCaster())
            {
                if (caster->ToPlayer()->HasAuraType(SPELL_AURA_MASTERY) && caster->HasAura(48263))
                {
                    if (caster->ToPlayer()->GetPrimaryTalentTree(caster->ToPlayer()->GetActiveSpec()) == BS_DEATH_KNIGHT_BLOOD)
                    {
                        int32 shield = int32(bp * (6.25f * caster->ToPlayer()->GetMasteryPoints()) / 100.0f);

                        // This effect stacks
                        if (Aura* aura = caster->GetAura(77535, caster->GetGUID()))
                            if(AuraEffect* aurEff = aura->GetEffect(EFFECT_0))
                                shield += aurEff->GetAmount();

                        caster->CastCustomSpell(caster, 77535, &shield, NULL, NULL, false);
                    }
                }
            }
        }

    private:
        int32 bp;

        void Register()
        {
            OnCast += SpellCastFn(spell_dk_death_strike_SpellScript::HandleOnCast);
            OnEffectHitTarget += SpellEffectFn(spell_dk_death_strike_SpellScript::HandleHit, EFFECT_1, SPELL_EFFECT_WEAPON_PERCENT_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_dk_death_strike_SpellScript();
    }
};

class spell_dk_runic_corruption : public SpellScriptLoader
{
    public:
        spell_dk_runic_corruption() : SpellScriptLoader("spell_dk_runic_corruption") { }

        class spell_dk_runic_corruption_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dk_runic_corruption_AuraScript);

            void HandleEffect(AuraEffect const* aurEff, AuraEffectHandleModes mode)
            {
                if(Player* player = GetCaster()->ToPlayer())
                {
                    player->ResyncRunes(MAX_RUNES);
                }
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_dk_runic_corruption_AuraScript::HandleEffect, EFFECT_0, SPELL_AURA_MOD_POWER_REGEN_PERCENT, AURA_EFFECT_HANDLE_REAL);
                OnEffectRemove += AuraEffectApplyFn(spell_dk_runic_corruption_AuraScript::HandleEffect, EFFECT_0, SPELL_AURA_MOD_POWER_REGEN_PERCENT, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dk_runic_corruption_AuraScript();
        }
};

class dk_t12_dps_2p : public SpellScriptLoader
{
    public:
        dk_t12_dps_2p() : SpellScriptLoader("dk_t12_dps_2p") { }
        
        class dk_t12_dps_2p_AuraScript : public AuraScript
        {
            PrepareAuraScript(dk_t12_dps_2p_AuraScript);

            void HandlePeriodic(AuraEffect const* /*aurEff*/)
            {
                Unit* caster = GetCaster();
                caster->CastSpell(caster, 99055, true);
            }

            void Register() 
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(dk_t12_dps_2p_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };


        AuraScript* GetAuraScript() const
        {
            return new dk_t12_dps_2p_AuraScript();
        }
};

void AddSC_deathknight_spell_scripts()
{
    new spell_dk_necrotic_strike();
    new spell_dk_shadow_infusion();
    new spell_dk_dark_transformation();
    new spell_dk_howling_blast();
    new spell_dk_anti_magic_shell_raid();
    new spell_dk_anti_magic_shell_self();
    new spell_dk_anti_magic_zone();
    new spell_dk_blood_boil();
    new spell_dk_blood_gorged();
    new spell_dk_corpse_explosion();
    new spell_dk_death_coil();
    new spell_dk_death_gate();
    new spell_dk_death_grip();
    new spell_dk_death_pact();
    new spell_dk_ghoul_explode();
    new spell_dk_icebound_fortitude();
    new spell_dk_improved_blood_presence();
    new spell_dk_improved_unholy_presence();
    new spell_dk_rune_tap_party();
    new spell_dk_scourge_strike();
    new spell_dk_spell_deflection();
    new spell_dk_vampiric_blood();
    new spell_dk_will_of_the_necropolis();
    new spell_dk_frozen_heart();
    new spell_dk_gnaw();
    new spell_dk_claw();
    new spell_dk_leap();
    new spell_dk_huddle();
    new spell_dk_death_strike();
    new spell_dk_runic_corruption();
    new dk_t12_dps_2p();
}
