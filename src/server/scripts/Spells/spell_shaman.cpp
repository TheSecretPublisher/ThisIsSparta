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
 * Scripts for spells with SPELLFAMILY_SHAMAN and SPELLFAMILY_GENERIC spells used by shaman players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_sha_".
 */

#include "Player.h"
#include "ScriptMgr.h"
#include "GridNotifiers.h"
#include "Unit.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"

enum ShamanSpells
{
    SPELL_HUNTER_INSANITY                       = 95809,
    SPELL_MAGE_TEMPORAL_DISPLACEMENT            = 80354,
    SPELL_SHAMAN_ANCESTRAL_AWAKENING_PROC       = 52752,
    SPELL_SHAMAN_BIND_SIGHT                     = 6277,
    SPELL_SHAMAN_EARTH_SHIELD_HEAL              = 379,
    SPELL_SHAMAN_EXHAUSTION                     = 57723,
    SPELL_SHAMAN_FIRE_NOVA_TRIGGERED_R1         = 8349,
    SPELL_SHAMAN_FLAME_SHOCK                    = 8050,
    SPELL_SHAMAN_GLYPH_OF_EARTH_SHIELD          = 63279,
    SPELL_SHAMAN_GLYPH_OF_HEALING_STREAM_TOTEM  = 55456,
    SPELL_SHAMAN_GLYPH_OF_MANA_TIDE             = 55441,
    SPELL_SHAMAN_GLYPH_OF_THUNDERSTORM          = 62132,
    SPELL_SHAMAN_LAVA_FLOWS_TRIGGERED           = 65264,
    SPELL_SHAMAN_SATED                          = 57724,
    SPELL_SHAMAN_LIGHTNING_SHIELD               = 324,
    SPELL_SHAMAN_STORM_EARTH_AND_FIRE           = 51483,
    SPELL_SHAMAN_TOTEM_EARTHBIND_EARTHGRAB      = 64695,
    SPELL_SHAMAN_TOTEM_EARTHBIND_TOTEM          = 6474,
    SPELL_SHAMAN_TOTEM_EARTHEN_POWER            = 59566,
    SHAMAN_SPELL_FULMINATION                    = 88766,
    SHAMAN_SPELL_FULMINATION_TRIGGERED          = 88767,
    SHAMAN_SPELL_FULMINATION_INFO               = 95774,
    SHAMAN_SPELL_LIGHTNING_SHIELD_PROC          = 26364,
    SHAMAN_TOTEM_SPELL_EARTHEN_POWER            = 59566,
    SHAMAN_TOTEM_SPELL_SEARING_FLAMES           = 77661,
    SPELL_SHAMAN_TOTEM_TOTEMIC_WRATH            = 77746,
    SPELL_SHAMAN_TOTEM_TOTEMIC_WRATH_AURA       = 77747,
    SPELL_SHAMAN_TOTEM_HEALING_STREAM_HEAL      = 52042,
    SPELL_SHAMAN_UNLEASH_EARTH                  = 73684,
    SPELL_SHAMAN_UNLEASH_ELEMENTS               = 73680,
    SPELL_SHAMAN_UNLEASH_FLAME                  = 73683,
    SPELL_SHAMAN_UNLEASH_FROST                  = 73682,
    SPELL_SHAMAN_UNLEASH_LIFE                   = 73685,
    SPELL_SHAMAN_UNLEASH_WIND                   = 73681,
    SPELL_SHAMAN_FROST_SHOCK                    = 8056,
};

enum ShamanSpellIcons
{
    SHAMAN_ICON_ID_SOOTHING_RAIN                = 2011,
    SHAMAN_ICON_ID_SHAMAN_LAVA_FLOW             = 3087,
    SHAMAN_ICON_ID_FROZEN_POWER                 = 3780
};

// 77700/77701 - Improved Lava Lash
class spell_sha_improved_lava_lash : public SpellScriptLoader
{
    public:
        spell_sha_improved_lava_lash() : SpellScriptLoader("spell_sha_improved_lava_lash") { }

        class spell_sha_improved_lava_lash_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_sha_improved_lava_lash_AuraScript);

            void OnProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();

                if(Unit* caster = GetCaster())
                {
                    if(Unit* procTarget = eventInfo.GetProcTarget())
                    {
                        // Find near target within 12 yards
                        std::list<Unit*> targets;
                        Trinity::AnyFriendlyUnitInObjectRangeCheck u_check(procTarget, procTarget, 12.0f);
                        Trinity::UnitListSearcher<Trinity::AnyFriendlyUnitInObjectRangeCheck> searcher(procTarget, targets, u_check);
                        procTarget->VisitNearbyObject(12.0f, searcher);
                        
                        targets.remove(procTarget);

                        // Random resize the list to prevent same target everytime
                        Trinity::Containers::RandomResizeList(targets, 4);
                        
                        // Same check foreach target
                        for (std::list<Unit*>::iterator singleTarget = targets.begin(); singleTarget != targets.end(); ++singleTarget) 
                        {
                            Unit* target = (*singleTarget);

                            // Check the current target instance until it finds the correct one
                            if(target)
                            {
                                // Cast it only if the Flame Shock aura is not on target
                                if(procTarget->HasAura(SPELL_SHAMAN_FLAME_SHOCK, caster->GetGUID()) && !target->HasAura(SPELL_SHAMAN_FLAME_SHOCK, caster->GetGUID()))
                                {
                                    caster->AddAura(SPELL_SHAMAN_FLAME_SHOCK, target);
                                }
                            }
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_sha_improved_lava_lash_AuraScript::OnProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_sha_improved_lava_lash_AuraScript();
        }
};

// 8056 - Frost Shock 
/// Updated 4.3.4
class spell_sha_frost_shock : public SpellScriptLoader
{
    public:
        spell_sha_frost_shock() : SpellScriptLoader("spell_sha_frost_shock") { }

        class spell_sha_frost_shock_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_frost_shock_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellStore.LookupEntry(SPELL_SHAMAN_FROST_SHOCK))
                    return false;
                return true;
            }

            void HandleEffect(SpellEffIndex /*effIndex*/)
            {
                if (Unit* caster = GetCaster())
                {
                    if (Unit* target = GetExplTargetUnit())
                    {
                        // Frozen Power
                        if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_SHAMAN, SHAMAN_ICON_ID_FROZEN_POWER, EFFECT_1))
                        {
                            if (roll_chance_i(aurEff->GetAmount()))
                            {
                                if (!caster->IsWithinDistInMap(target, 14.9f))
                                    caster->CastSpell(target, 63685, true);
                            }
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectHit += SpellEffectFn(spell_sha_frost_shock_SpellScript::HandleEffect, EFFECT_1, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_frost_shock_SpellScript();
        }
};

// 73680 - Unleash Elements
/// Updated 4.3.4
class spell_sha_unleash_elements : public SpellScriptLoader
{
    public:
        spell_sha_unleash_elements() : SpellScriptLoader("spell_sha_unleash_elements") { }

        class spell_sha_unleash_elements_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_unleash_elements_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellStore.LookupEntry(SPELL_SHAMAN_UNLEASH_ELEMENTS))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (Unit* caster = GetCaster())
                {
                    if (Unit* target = GetExplTargetUnit())
                    {
                        Item* weapons[2]= {0,0};
                        weapons[0] = caster->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
                        weapons[1] = caster->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND);

                        for(int i = 0; i < 2; i++)
                        {
                            if(!weapons[i])
                                continue;
                        
                            switch (weapons[i]->GetEnchantmentId(TEMP_ENCHANTMENT_SLOT))
                            {
                                case 3345:  // Earthliving Weapon
                                    caster->CastSpell(target, SPELL_SHAMAN_UNLEASH_LIFE, true);
                                    break;
                                case 5:     // Flametongue Weapon
                                    caster->CastSpell(target, SPELL_SHAMAN_UNLEASH_FLAME, true);
                                    break;
                                case 2:     // Frostbrand Weapon
                                    caster->CastSpell(target, SPELL_SHAMAN_UNLEASH_FROST, true);
                                    break;
                                case 3021:  // Rockbiter Weapon
                                    caster->CastSpell(target, SPELL_SHAMAN_UNLEASH_EARTH, true);
                                    break;
                                case 283:   // Windfury Weapon
                                    caster->CastSpell(target, SPELL_SHAMAN_UNLEASH_WIND, true);
                                    break;
                            }
                        }
                    }
                }
            }

            SpellCastResult CheckCast()
            {
                if (Unit* caster = GetCaster())
                {
                    if (Unit* target = GetExplTargetUnit())
                    {
                        Item* weapons[2]= {0,0};
                        weapons[0] = caster->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
                        weapons[1] = caster->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND);

                        for(int i = 0; i < 2; i++)
                        {
                            if(!weapons[i])
                                continue;

                            if(weapons[i]->GetEnchantmentId(TEMP_ENCHANTMENT_SLOT) == 3345)
                            {
                                if(!caster->ToPlayer()->IsFriendlyTo(target))
                                    return SPELL_FAILED_SUCCESS;
                                else
                                    return SPELL_CAST_OK;
                            }

                            if (caster->ToPlayer()->IsFriendlyTo(target))
                                return SPELL_FAILED_TARGET_FRIENDLY;
                        }
                    }
                }

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnEffectHit += SpellEffectFn(spell_sha_unleash_elements_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_sha_unleash_elements_SpellScript::CheckCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_unleash_elements_SpellScript();
        }
};

// 52759 - Ancestral Awakening
/// Updated 4.3.4
class spell_sha_ancestral_awakening_proc : public SpellScriptLoader
{
    public:
        spell_sha_ancestral_awakening_proc() : SpellScriptLoader("spell_sha_ancestral_awakening_proc") { }

        class spell_sha_ancestral_awakening_proc_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_ancestral_awakening_proc_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_ANCESTRAL_AWAKENING_PROC))
                    return false;
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                int32 damage = GetEffectValue();
                if (GetCaster() && GetHitUnit())
                    GetCaster()->CastCustomSpell(GetHitUnit(), SPELL_SHAMAN_ANCESTRAL_AWAKENING_PROC, &damage, NULL, NULL, true);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_sha_ancestral_awakening_proc_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_ancestral_awakening_proc_SpellScript();
        }
};

// 2825 - Bloodlust
/// Updated 4.3.4
class spell_sha_bloodlust : public SpellScriptLoader
{
    public:
        spell_sha_bloodlust() : SpellScriptLoader("spell_sha_bloodlust") { }

        class spell_sha_bloodlust_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_bloodlust_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_SATED))
                    return false;
                return true;
            }

            void RemoveInvalidTargets(std::list<WorldObject*>& targets)
            {
                targets.remove_if(Trinity::UnitAuraCheck(true, SPELL_SHAMAN_SATED));
                targets.remove_if(Trinity::UnitAuraCheck(true, SPELL_HUNTER_INSANITY));
                targets.remove_if(Trinity::UnitAuraCheck(true, SPELL_MAGE_TEMPORAL_DISPLACEMENT));
            }

            void ApplyDebuff()
            {
                if (Unit* target = GetHitUnit())
                    target->CastSpell(target, SPELL_SHAMAN_SATED, true);
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_bloodlust_SpellScript::RemoveInvalidTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_RAID);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_bloodlust_SpellScript::RemoveInvalidTargets, EFFECT_1, TARGET_UNIT_CASTER_AREA_RAID);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_bloodlust_SpellScript::RemoveInvalidTargets, EFFECT_2, TARGET_UNIT_CASTER_AREA_RAID);
                AfterHit += SpellHitFn(spell_sha_bloodlust_SpellScript::ApplyDebuff);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_bloodlust_SpellScript();
        }
};

// 1064 - Chain Heal
/// Updated 4.3.4
class spell_sha_chain_heal : public SpellScriptLoader
{
    public:
        spell_sha_chain_heal() : SpellScriptLoader("spell_sha_chain_heal") { }

        class spell_sha_chain_heal_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_chain_heal_SpellScript);

            bool Load()
            {
                firstHeal = true;
                riptide = false;
                amount = 0;
                return true;
            }

            void HandleHeal(SpellEffIndex /*effIndex*/)
            {
                if (firstHeal)
                {
                    // Check if the target has Riptide
                    if (AuraEffect* aurEff = GetHitUnit()->GetAuraEffect(SPELL_AURA_PERIODIC_HEAL, SPELLFAMILY_SHAMAN, 0, 0, 0x10, GetCaster()->GetGUID()))
                    {
                        riptide = true;
                        amount = aurEff->GetSpellInfo()->Effects[EFFECT_2].CalcValue();
                        // Consume it
                        GetHitUnit()->RemoveAura(aurEff->GetBase());
                    }
                    firstHeal = false;
                }
                // Riptide increases the Chain Heal effect by 25%
                if (riptide)
                {
                    uint32 bonus = CalculatePct(GetHitHeal(), amount);
                    SetHitHeal(GetHitHeal() + bonus);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_sha_chain_heal_SpellScript::HandleHeal, EFFECT_0, SPELL_EFFECT_HEAL);
            }

            bool firstHeal;
            bool riptide;
            uint32 amount;
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_chain_heal_SpellScript();
        }
};

class EarthenPowerTargetSelector
{
    public:
        EarthenPowerTargetSelector() { }

        bool operator() (WorldObject* target)
        {
            if (!target->ToUnit())
                return true;

            if (!target->ToUnit()->HasAuraWithMechanic(1 << MECHANIC_SNARE))
                return true;

            return false;
        }
};

// 59566 - Earthen Power
class spell_sha_earthen_power : public SpellScriptLoader
{
    public:
        spell_sha_earthen_power() : SpellScriptLoader("spell_sha_earthen_power") { }

        class spell_sha_earthen_power_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_earthen_power_SpellScript);

            void FilterTargets(std::list<WorldObject*>& unitList)
            {
                unitList.remove_if(EarthenPowerTargetSelector());
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_earthen_power_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ALLY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_earthen_power_SpellScript();
        }
};

// 1535 Fire Nova
/// Updated 4.3.4
class spell_sha_fire_nova : public SpellScriptLoader
{
    public:
        spell_sha_fire_nova() : SpellScriptLoader("spell_sha_fire_nova") { }

        class spell_sha_fire_nova_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_fire_nova_SpellScript);

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Unit* target = GetHitUnit())
                {
                    if (target->HasAura(SPELL_SHAMAN_FLAME_SHOCK))
                    {
                        caster->CastSpell(target, SPELL_SHAMAN_FIRE_NOVA_TRIGGERED_R1, true);
                        target->RemoveAurasDueToSpell(SPELL_SHAMAN_FLAME_SHOCK);
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_sha_fire_nova_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_fire_nova_SpellScript();
        }
};

// 8050 -Flame Shock
/// Updated 4.3.4
class spell_sha_flame_shock : public SpellScriptLoader
{
    public:
        spell_sha_flame_shock() : SpellScriptLoader("spell_sha_flame_shock") { }

        class spell_sha_flame_shock_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_sha_flame_shock_AuraScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_LAVA_FLOWS_TRIGGERED))
                    return false;
                return true;
            }

            void HandleDispel(DispelInfo* /*dispelInfo*/)
            {
                if (Unit* caster = GetCaster())
                {
                    // Lava Flows
                    if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_SHAMAN, SHAMAN_ICON_ID_SHAMAN_LAVA_FLOW, EFFECT_0))
                    {
                        int32 bp0 = aurEff->GetAmount();
                        caster->CastCustomSpell(caster, SPELL_SHAMAN_LAVA_FLOWS_TRIGGERED, &bp0, NULL, NULL, true);
                    }
                }
            }

            void Register()
            {
                AfterDispel += AuraDispelFn(spell_sha_flame_shock_AuraScript::HandleDispel);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_sha_flame_shock_AuraScript();
        }
};

// 52041 - Healing Stream Totem
/// Updated 4.3.4
class spell_sha_healing_stream_totem : public SpellScriptLoader
{
    public:
        spell_sha_healing_stream_totem() : SpellScriptLoader("spell_sha_healing_stream_totem") { }

        class spell_sha_healing_stream_totem_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_healing_stream_totem_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                return sSpellMgr->GetSpellInfo(SPELL_SHAMAN_TOTEM_HEALING_STREAM_HEAL);
            }

            void HandleDummy(SpellEffIndex /* effIndex */)
            {
                int32 damage = GetEffectValue();
                SpellInfo const* triggeringSpell = GetTriggeringSpell();
                if (Unit* target = GetHitUnit())
                    if (Unit* caster = GetCaster())
                    {
                        if (Unit* owner = caster->GetOwner())
                        {
                            if (triggeringSpell)
                                damage = int32(owner->SpellHealingBonusDone(target, triggeringSpell, damage, HEAL));

                            // Soothing Rains
                            if (AuraEffect* dummy = owner->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_SHAMAN, SHAMAN_ICON_ID_SOOTHING_RAIN, EFFECT_0))
                                AddPct(damage, dummy->GetAmount());

                            damage = int32(target->SpellHealingBonusTaken(owner, triggeringSpell, damage, HEAL));
                        }
                        caster->CastCustomSpell(target, SPELL_SHAMAN_TOTEM_HEALING_STREAM_HEAL, &damage, 0, 0, true, 0, 0, GetOriginalCaster()->GetGUID());
                    }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_sha_healing_stream_totem_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_healing_stream_totem_SpellScript();
        }
};

// 32182 - Heroism
/// Updated 4.3.4
class spell_sha_heroism : public SpellScriptLoader
{
    public:
        spell_sha_heroism() : SpellScriptLoader("spell_sha_heroism") { }

        class spell_sha_heroism_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_heroism_SpellScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_EXHAUSTION))
                    return false;
                return true;
            }

            void RemoveInvalidTargets(std::list<WorldObject*>& targets)
            {
                targets.remove_if(Trinity::UnitAuraCheck(true, SPELL_SHAMAN_EXHAUSTION));
                targets.remove_if(Trinity::UnitAuraCheck(true, SPELL_HUNTER_INSANITY));
                targets.remove_if(Trinity::UnitAuraCheck(true, SPELL_MAGE_TEMPORAL_DISPLACEMENT));
            }

            void ApplyDebuff()
            {
                if (Unit* target = GetHitUnit())
                    target->CastSpell(target, SPELL_SHAMAN_EXHAUSTION, true);
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_heroism_SpellScript::RemoveInvalidTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_RAID);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_heroism_SpellScript::RemoveInvalidTargets, EFFECT_1, TARGET_UNIT_CASTER_AREA_RAID);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_heroism_SpellScript::RemoveInvalidTargets, EFFECT_2, TARGET_UNIT_CASTER_AREA_RAID);
                AfterHit += SpellHitFn(spell_sha_heroism_SpellScript::ApplyDebuff);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_heroism_SpellScript();
        }
};

// 60103 - Lava Lash
/// Updated 4.3.4
class spell_sha_lava_lash : public SpellScriptLoader
{
    public:
        spell_sha_lava_lash() : SpellScriptLoader("spell_sha_lava_lash") { }

        class spell_sha_lava_lash_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_lava_lash_SpellScript)

            bool Load()
            {
                return GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }

            void RecalculateDamage()
            {

                if(!GetCaster() || !GetHitUnit())
                    return;

                int32 hitDamage = GetHitDamage();

                uint32 stackAmount = 0;

                if(GetCaster()->ToPlayer()->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND)->GetEnchantmentId(TEMP_ENCHANTMENT_SLOT) == 5)
                    AddPct(hitDamage, 40);

                if(Unit* target = GetHitUnit())
                {
                    if(Unit * caster = GetCaster())
                    {
                        if(AuraEffect const* aurEff = caster->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_SHAMAN, 4780, EFFECT_1))
                        {
                            uint32 bonusPct = aurEff->GetAmount();
                            if (Aura* aur = target->GetAura(SHAMAN_TOTEM_SPELL_SEARING_FLAMES))
                            {
                                stackAmount = aur->GetStackAmount();
                                AddPct(hitDamage, (stackAmount * bonusPct));
                                if (caster->HasAura(99209))
                                    AddPct(hitDamage, (stackAmount * 5));
                                target->RemoveAura(SHAMAN_TOTEM_SPELL_SEARING_FLAMES);
                            }
                        }
                    }
                }

                SetHitDamage(hitDamage);
            }

            void Register()
            {
                OnHit += SpellHitFn(spell_sha_lava_lash_SpellScript::RecalculateDamage);
            }

        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_lava_lash_SpellScript();
        }
};

// 16191 - Mana Tide
/// Updated 4.3.4
class spell_sha_mana_tide_totem : public SpellScriptLoader
{
    public:
        spell_sha_mana_tide_totem() : SpellScriptLoader("spell_sha_mana_tide_totem") { }

        class spell_sha_mana_tide_totem_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_sha_mana_tide_totem_AuraScript);

            void CalculateAmount(AuraEffect const* aurEff, int32& amount, bool& /*canBeRecalculated*/)
            {
                ///@TODO: Exclude the "short term" buffs from the stat value
                if (Unit* caster = GetCaster())
                    if (Unit* owner = caster->GetOwner())
                        amount = CalculatePct(owner->GetStat(STAT_SPIRIT), aurEff->GetAmount());
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_sha_mana_tide_totem_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_MOD_STAT);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_sha_mana_tide_totem_AuraScript();
        }
};

// -51490 - Thunderstorm
class spell_sha_thunderstorm : public SpellScriptLoader
{
    public:
        spell_sha_thunderstorm() : SpellScriptLoader("spell_sha_thunderstorm") { }

        class spell_sha_thunderstorm_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_sha_thunderstorm_SpellScript);

            void HandleKnockBack(SpellEffIndex effIndex)
            {
                // Glyph of Thunderstorm
                if (GetCaster()->HasAura(SPELL_SHAMAN_GLYPH_OF_THUNDERSTORM))
                    PreventHitDefaultEffect(effIndex);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_sha_thunderstorm_SpellScript::HandleKnockBack, EFFECT_2, SPELL_EFFECT_KNOCK_BACK);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_sha_thunderstorm_SpellScript();
        }
};

// 77829 Ancestral Resolve
class spell_sha_ancestral_resolve: public SpellScriptLoader 
{
public:
   spell_sha_ancestral_resolve() : SpellScriptLoader("spell_sha_ancestral_resolve")
   {}

   class spell_sha_ancestral_resolve_AuraScript: public AuraScript 
   {
       PrepareAuraScript(spell_sha_ancestral_resolve_AuraScript);

       uint32 absorbPct;

       bool Load() 
       {
           absorbPct = GetSpellInfo()->Effects[0].CalcValue();
           return true;
       }

       void CalculateAmount(AuraEffect const * /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
       {
           // Set absorbtion amount to unlimited
           amount = -1;
       }

       void Absorb(AuraEffect * /*aurEff*/, DamageInfo &dmgInfo, uint32 &absorbAmount) 
       {
           // reduces all damage taken while Stunned in Cat Form
           if (GetTarget())
               if (GetTarget()->ToPlayer())
                   if ((GetTarget()->ToPlayer()->HasUnitState(UNIT_STATE_CASTING)))
                       absorbAmount = CalculatePct(dmgInfo.GetDamage(), absorbPct);
       }

       void Register() 
       {
           DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_sha_ancestral_resolve_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
           OnEffectAbsorb += AuraEffectAbsorbFn(spell_sha_ancestral_resolve_AuraScript::Absorb, EFFECT_0);
       }
   };

   AuraScript* GetAuraScript() const 
   {
       return new spell_sha_ancestral_resolve_AuraScript();
   }
};

class spell_spirit_link : public SpellScriptLoader
{
    public:
        spell_spirit_link() : SpellScriptLoader("spell_spirit_link") { }

        class spell_spirit_link_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_spirit_link_SpellScript);

            float mediumPct;

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                float pctSum = 0;

                for (std::list<WorldObject*>::const_iterator itr = targets.begin(); itr != targets.end(); ++itr)
                    if ((*itr)->ToUnit())
                        pctSum += (*itr)->ToUnit()->GetHealthPct();

                mediumPct = pctSum / targets.size();
            }

            void HandleDummy(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);

                if (!GetHitUnit() || !GetCaster())
                    return;

                int32 bp0 = 0;
                int32 bp1 = 0;
                uint32 targetHealt = GetHitUnit()->GetMaxHealth() * mediumPct / 100;
                if (GetHitUnit()->GetHealthPct() > mediumPct)
                    bp0 = GetHitUnit()->GetHealth() - targetHealt;
                else
                    bp1 = targetHealt - GetHitUnit()->GetHealth();

                GetCaster()->CastCustomSpell(GetHitUnit(), 98021, &bp0, &bp1, NULL, true, 0, 0, GetCaster()->GetOwnerGUID());
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_spirit_link_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_RAID);
                OnEffectHitTarget += SpellEffectFn(spell_spirit_link_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_spirit_link_SpellScript();
        }
};

// 88766 Fulmination handled in 8042 Earth Shock
class spell_sha_fulmination: public SpellScriptLoader
{
public:
    spell_sha_fulmination() : SpellScriptLoader("spell_sha_fulmination")
    { } 

    class spell_sha_fulminationSpellScript: public SpellScript
    {
        PrepareSpellScript(spell_sha_fulminationSpellScript)

        void HandleFulmination(SpellEffIndex effIndex) 
        {
            // make caster cast a spell on a unit target of effect
            Unit *target = GetHitUnit();

            Unit *caster = GetCaster();

            if (!target || !caster)
                return;

            AuraEffect *fulminationAura = caster->GetDummyAuraEffect(SPELLFAMILY_SHAMAN, 2010, 0);

            if (!fulminationAura)
                return;

            Aura * lightningShield = caster->GetAura(324);

            if (!lightningShield)
                return;

            uint8 lsCharges = lightningShield->GetCharges();

            if (lsCharges <= 3)
                return;

            uint8 usedCharges = lsCharges - 3;

            SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SHAMAN_SPELL_LIGHTNING_SHIELD_PROC);
            int32 basePoints = caster->CalculateSpellDamage(target, spellInfo, 0);
            uint32 damage = caster->SpellDamageBonusDone(target, spellInfo, basePoints, SPELL_DIRECT_DAMAGE);
            damage = target->SpellDamageBonusTaken(caster, spellInfo, damage, SPELL_DIRECT_DAMAGE);
            damage *= usedCharges;
            caster->CastCustomSpell(SHAMAN_SPELL_FULMINATION_TRIGGERED, SPELLVALUE_BASE_POINT0, damage, target, true, NULL, fulminationAura);
            lightningShield->SetCharges(lsCharges - usedCharges);
        }

        // Register functions used in spell script - names of these functions do not matter
        void Register() 
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_fulminationSpellScript::HandleFulmination, EFFECT_1, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    // function which creates SpellScript
    SpellScript *GetSpellScript() const 
    {
        return new spell_sha_fulminationSpellScript();
    }
};

// 6474 - Earthbind Totem - Fix Talent:Earthen Power
class spell_sha_earthbind_totem: public SpellScriptLoader 
{
public:
    spell_sha_earthbind_totem() : SpellScriptLoader("spell_sha_earthbind_totem") { }

    class spell_sha_earthbind_totem_AuraScript: public AuraScript
    {
        PrepareAuraScript(spell_sha_earthbind_totem_AuraScript);

        bool Validate(SpellInfo const * /*spellEntry*/) 
        {
            if (!sSpellStore.LookupEntry(SHAMAN_TOTEM_SPELL_EARTHEN_POWER))
                return false;
            return true;
        }

        void HandleEffectPeriodic(AuraEffect const * aurEff) 
        {
            Unit* target = GetTarget();
            if (Unit *caster = aurEff->GetBase()->GetCaster()->GetOwner())
            {
                Unit* target = GetTarget();
                Unit* totem = GetCaster();

                if (!totem || !target)
                    return;

                if (Unit* caster = aurEff->GetBase()->GetCaster()->GetOwner())
                {
                    // Earthen Power
                    if (AuraEffect* aur = caster->GetDummyAuraEffect(SPELLFAMILY_SHAMAN, 2289, 0))
                        if (roll_chance_i(aur->GetBaseAmount()))
                            target->CastSpell(caster, SHAMAN_TOTEM_SPELL_EARTHEN_POWER, true, NULL, aurEff);

                    // Earth's Grasp               
                    if (GetEffect(0)->GetAmount() == 0)
                    {
                        if ((caster->HasAura(51483) && roll_chance_i(50)) || caster->HasAura(51485))
                        {
                            if (!target->HasAura(64695))
                                totem->CastSpell(target, 64695, true);

                            // Only at apply (hacky way)
                            GetEffect(0)->SetAmount(10);
                        }
                    }
                }
            }
        }

        void Register() 
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sha_earthbind_totem_AuraScript::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

    AuraScript *GetAuraScript() const 
    {
        return new spell_sha_earthbind_totem_AuraScript();
    }
};

// 77746 - Totemic Wrath
/// Updated 4.3.4
class spell_sha_totemic_wrath : public SpellScriptLoader
{
public:
    spell_sha_totemic_wrath() : SpellScriptLoader("spell_sha_totemic_wrath") { }

    class spell_sha_totemic_wrath_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_totemic_wrath_AuraScript);

        bool Validate(SpellInfo const* /*spellInfo*/)
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_TOTEM_TOTEMIC_WRATH))
                return false;

            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_TOTEM_TOTEMIC_WRATH_AURA))
                return false;

            return true;
        }

        void HandleEffectApply(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
        {
            Unit* target = GetTarget();

            if (target->ToPlayer())
                return;

            if (Unit* owner = GetCaster()->GetOwner())
                if (owner->GetDummyAuraEffect(SPELLFAMILY_GENERIC, 2019, 0))
                    target->CastSpell(target, SPELL_SHAMAN_TOTEM_TOTEMIC_WRATH_AURA, true, NULL, aurEff);
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_sha_totemic_wrath_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_sha_totemic_wrath_AuraScript();
    }
};

// 73920 - Healing Rain
class spell_sha_healing_rain : public SpellScriptLoader
{
public:
    spell_sha_healing_rain() : SpellScriptLoader("spell_sha_healing_rain") { }

    class spell_sha_healing_rain_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_healing_rain_AuraScript);
       
        void OnTick(AuraEffect const* aurEff)
        {
            if(!GetCaster())
                return;

            if (DynamicObject* dynObj = GetCaster()->GetDynObject(73920))
            {
                GetCaster()->CastSpell(dynObj->GetPositionX(), dynObj->GetPositionY(), dynObj->GetPositionZ(), 73921, true);
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sha_healing_rain_AuraScript::OnTick, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
        }
        
        public:
            std::list<Unit*> targetList;
    };
    
    AuraScript* GetAuraScript() const
    {
        return new spell_sha_healing_rain_AuraScript();
    }
};

// 61882 Earthquake
class spell_sha_earthquake : public SpellScriptLoader
{
public:
    spell_sha_earthquake() : SpellScriptLoader("spell_sha_earthquake") { }

    class spell_sha_earthquake_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_earthquake_AuraScript);
       
        void OnTick(AuraEffect const* aurEff)
        {
            if(!GetCaster())
                return;

            if (DynamicObject* dynObj = GetCaster()->GetDynObject(61882))
            {
                GetCaster()->CastSpell(dynObj->GetPositionX(), dynObj->GetPositionY(), dynObj->GetPositionZ(), 77478, true);
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sha_earthquake_AuraScript::OnTick, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
        }
        
        public:
            std::list<Unit*> targetList;
    };
    
    AuraScript* GetAuraScript() const
    {
        return new spell_sha_earthquake_AuraScript();
    }
};

// 77478 - 77505 Earthquake damage & stun effect
class spell_sha_earthquake_effect : public SpellScriptLoader
{
public:
    spell_sha_earthquake_effect() : SpellScriptLoader("spell_sha_earthquake_effect")
    { } 

    class spell_sha_earthquake_effect_SpellScript: public SpellScript
    {
        PrepareSpellScript(spell_sha_earthquake_effect_SpellScript)

        void HandleStun(SpellEffIndex effIndex) 
        {
            if (!GetCaster() || !GetHitUnit())
                return;

            if (roll_chance_i(10))
                GetCaster()->CastSpell(GetHitUnit(), 77505, true);
        }

        // Register functions used in spell script - names of these functions do not matter
        void Register() 
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_earthquake_effect_SpellScript::HandleStun, EFFECT_1, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    // function which creates SpellScript
    SpellScript *GetSpellScript() const 
    {
        return new spell_sha_earthquake_effect_SpellScript();
    }
};

// 88756 - Rolling Thunder
class spell_sha_rolling_thunder : public SpellScriptLoader
{
    public:
        spell_sha_rolling_thunder() : SpellScriptLoader("spell_sha_rolling_thunder") { }

        class spell_sha_rolling_thunder_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_sha_rolling_thunder_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_LIGHTNING_SHIELD))
                    return false;
                return true;
            }

            void HandleEffectProc(AuraEffect const* aurEff, ProcEventInfo& /*eventInfo*/)
            {
                if (Aura* aura = GetTarget()->GetAura(SPELL_SHAMAN_LIGHTNING_SHIELD))
                {
                    aura->SetCharges(std::min(aura->GetCharges() + 1, aurEff->GetAmount()));
                    aura->RefreshDuration();
                }
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_sha_rolling_thunder_AuraScript::HandleEffectProc, EFFECT_0, SPELL_AURA_PROC_TRIGGER_SPELL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_sha_rolling_thunder_AuraScript();
        }
};

void AddSC_shaman_spell_scripts()
{
    new spell_sha_improved_lava_lash();
    new spell_sha_frost_shock();
    new spell_sha_unleash_elements();
    new spell_sha_ancestral_awakening_proc();
    new spell_sha_bloodlust();
    new spell_sha_chain_heal();
    new spell_sha_earthbind_totem();
    new spell_sha_earthen_power();
    new spell_sha_fire_nova();
    new spell_sha_flame_shock();
    new spell_sha_healing_stream_totem();
    new spell_sha_heroism();
    new spell_sha_lava_lash();
    new spell_sha_mana_tide_totem();
    new spell_sha_thunderstorm();
    new spell_sha_ancestral_resolve();
    new spell_spirit_link();
    new spell_sha_fulmination();
    new spell_sha_totemic_wrath();
    new spell_sha_healing_rain();
    new spell_sha_earthquake();
    new spell_sha_earthquake_effect();
    new spell_sha_rolling_thunder();
}