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
 * Scripts for spells with SPELLFAMILY_DRUID and SPELLFAMILY_GENERIC spells used by druid players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_dru_".
 */

#include "Player.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "Containers.h"

enum DruidSpells
{
    SPELL_DRUID_EFFLORESCENCE                   = 81262,
    SPELL_DRUID_EFFLORESCENCE_HOT               = 81269,
    SPELL_DRUID_INCREASED_MOONFIRE_DURATION     = 38414,
    SPELL_DRUID_ITEM_T8_BALANCE_RELIC           = 64950,
    SPELL_DRUID_LIFEBLOOM_HOT                   = 33763,
    SPELL_DRUID_LIFEBLOOM_FINAL_HEAL            = 33778,
    SPELL_DRUID_LIFEBLOOM_ENERGIZE              = 64372,
    SPELL_DRUID_NATURES_SPLENDOR                = 57865,
    SPELL_DRUID_REJUVENATION                    = 774,
    SPELL_DRUID_REJUVENATION_ISTANT_SPELL       = 64801,
    SPELL_DRUID_SAVAGE_ROAR                     = 62071,
    SPELL_DRUID_SURVIVAL_INSTINCTS              = 50322,
    SPELL_DRUID_NPC_WILD_MUSHROOM               = 47649,
    SPELL_DRUID_SPELL_WILD_MUSHROOM_SUICIDE     = 92853,
    SPELL_DRUID_SPELL_WILD_MUSHROOM_DAMAGE      = 78777,
    SPELL_DRUID_FUNGAL_GROWTH_GRAPHIC           = 94339 ,
    SPELL_DRUID_FUNGAL_GROWTH_SUMMON            = 81291 ,
    SPELL_ENRAGE_MOD_DAMAGE                     = 51185,
    SPELL_KING_OF_THE_JUNGLE                    = 48492,
    SPELL_TIGER_S_FURY_ENERGIZE                 = 51178,
    SPELL_DRUID_MOONKIN_AURA                    = 24907,
};

//24858 - Moonkin Form
class spell_dru_moonkin_form : public SpellScriptLoader
{
public:
    spell_dru_moonkin_form() : SpellScriptLoader("spell_dru_moonkin_form") { }

    class spell_dru_moonkin_form_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_dru_moonkin_form_SpellScript);
        
        void HandleOnCast()
        {
            if (Unit * caster = GetCaster())
            {
                caster->RemoveMovementImpairingAuras();
            }
        }

        void Register()
        {
            OnCast += SpellCastFn(spell_dru_moonkin_form_SpellScript::HandleOnCast);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_dru_moonkin_form_SpellScript();
    }
};

// 88747 - Wild mushroom
class spell_dru_wild_mushroom : public SpellScriptLoader
{
    public:
        spell_dru_wild_mushroom() : SpellScriptLoader("spell_dru_wild_mushroom") { }

        class spell_dru_wild_mushroom_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_wild_mushroom_SpellScript)

            void HandleSummon(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);

                Unit* caster = GetCaster();
                WorldLocation const* targetDest = GetExplTargetDest();
                SpellInfo const* spellInfo = GetSpellInfo();

                if(caster && targetDest)
                {
                    if (Player* player = caster->ToPlayer())
                    {
                        Position pos;
                        std::list<Creature*> list;

                        Trinity::AnyUnfriendlyCreatureInUnitRangeCheck check(player, SPELL_DRUID_NPC_WILD_MUSHROOM, 100.0f);
                        Trinity::CreatureListSearcher<Trinity::AnyUnfriendlyCreatureInUnitRangeCheck> searcher(player, list, check);
                        player->VisitNearbyGridObject(100.0f, searcher);

                        // Max 3 Wild Mushroom
                        if ((int32)list.size() >= GetEffectValue())
                        {
                            if(list.back())
                            {
                                if(TempSummon* temp = list.back()->ToTempSummon())
                                {
                                    temp->UnSummon();
                                }
                            }
                        }
                        
                        // Summon position
                        targetDest->GetPosition(&pos);

                        // Summon properties
                        const SummonPropertiesEntry* properties = sSummonPropertiesStore.LookupEntry(spellInfo->Effects[effIndex].MiscValueB);
                                                      
                        TempSummon* summon = player->SummonCreature(spellInfo->Effects[0].MiscValue, pos, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, spellInfo->GetDuration());

                        if (!summon)
                            return;
                    
                        summon->SetUInt64Value(UNIT_FIELD_SUMMONEDBY, player->GetGUID());
                        summon->setFaction(player->getFaction());
                        summon->SetUInt32Value(UNIT_CREATED_BY_SPELL, GetSpellInfo()->Id);
                        summon->SetMaxHealth(5);
                        summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                        summon->StopMoving();
                        summon->SetControlled(true, UNIT_STATE_STUNNED);
                    }
                }
            }

            void Register()
            {
                OnEffectHit += SpellEffectFn(spell_dru_wild_mushroom_SpellScript::HandleSummon, EFFECT_0, SPELL_EFFECT_SUMMON);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_wild_mushroom_SpellScript();
        }
};

// 88751 - Wild mushroom : Detonate
class spell_dru_wild_mushroom_detonate : public SpellScriptLoader
{
    public:
        spell_dru_wild_mushroom_detonate() : SpellScriptLoader("spell_dru_wild_mushroom_detonate") { }

        class spell_dru_wild_mushroom_detonate_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_wild_mushroom_detonate_SpellScript)

            bool Load()
            {
                spellRange = GetSpellInfo()->GetMaxRange();

                if (!spellRange)
                    return false;

                if(Unit* caster = GetCaster())
                {
                    if(Player* player = caster->ToPlayer())
                    {
                        std::list<Creature*> list;
                        
                        Trinity::AnyUnfriendlyCreatureInUnitRangeCheck check(player, SPELL_DRUID_NPC_WILD_MUSHROOM, 100.0f);
                        Trinity::CreatureListSearcher<Trinity::AnyUnfriendlyCreatureInUnitRangeCheck> searcher(player, mushroomList, check);
                        player->VisitNearbyGridObject(100.0f, searcher);

                        return true;
                    }
                }

                return false;
            }

            SpellCastResult CheckCast()
            {
                if(Unit* caster = GetCaster())
                {
                    if(Player* player = caster->ToPlayer())
                    {
                        if (mushroomList.empty())
                            return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                        bool inRange = false;

                        for (std::list<Creature*>::const_iterator i = mushroomList.begin(); i != mushroomList.end(); i)
                        {
                            if((*i))
                            {
                                Position pos;
                                (*i)->GetPosition(&pos);

                                // Must have at least one mushroom within 40 yards
                                if (player->IsWithinDist3d(&pos, spellRange))
                                {
                                    return SPELL_CAST_OK;
                                }
                            }

                            i++;
                        }

                        SetCustomCastResultMessage(SPELL_CUSTOM_ERROR_TARGET_TOO_FAR);
                        return SPELL_FAILED_CUSTOM_ERROR;
                    }
                }
                return SPELL_FAILED_CASTER_DEAD;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if(Unit* caster = GetCaster())
                {
                    if(Player* player = caster->ToPlayer())
                    {
                        int32 fungalGrowthSlowSpellId;
                        
                        for (std::list<Creature*>::const_iterator i = mushroomList.begin(); i != mushroomList.end(); i)
                        {
                            Position pos;
                            Creature* tempMushroom = (*i);
                            
                            if(tempMushroom)
                            {
                                tempMushroom->GetPosition(&pos);

                                // Explosion visual and suicide
                                tempMushroom->CastSpell(tempMushroom, SPELL_DRUID_SPELL_WILD_MUSHROOM_SUICIDE, true);

                                // Explosion damage
                                player->CastSpell(
                                    pos.GetPositionX(), 
                                    pos.GetPositionY(), 
                                    pos.GetPositionZ(), 
                                    SPELL_DRUID_SPELL_WILD_MUSHROOM_DAMAGE, true);

                                // Fungal Growth
                                if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 2681, EFFECT_0))
                                {
                                    fungalGrowthSlowSpellId = aurEff->GetMiscValue();
                                    
                                    // Summon fungal
                                    player->CastSpell(
                                        pos.GetPositionX(), 
                                        pos.GetPositionY(), 
                                        pos.GetPositionZ(), 
                                        SPELL_DRUID_FUNGAL_GROWTH_SUMMON, true);
                                }
                            }

                            i++;
                        }

                        // Frees the memory
                        mushroomList.clear();

                        // Fungal Growth spells
                        if(fungalGrowthSlowSpellId)
                        {
                            if(SpellInfo const* fungalGrowthSpellInfo = sSpellMgr->GetSpellInfo(SPELL_DRUID_FUNGAL_GROWTH_SUMMON))
                            {
                                Trinity::AnyUnfriendlyCreatureInUnitRangeCheck check(player, fungalGrowthSpellInfo->Effects[0].MiscValue, 100.0f);
                                Trinity::CreatureListSearcher<Trinity::AnyUnfriendlyCreatureInUnitRangeCheck> searcher(player, mushroomList, check);
                                player->VisitNearbyGridObject(100.0f, searcher);

                                for (std::list<Creature*>::const_iterator i = mushroomList.begin(); i != mushroomList.end(); i)
                                {
                                    Creature* tempFungal = (*i);

                                    if(tempFungal)
                                    {
                                        tempFungal->SetUInt64Value(UNIT_FIELD_SUMMONEDBY, player->GetGUID());
                                        tempFungal->SetUInt32Value(UNIT_CREATED_BY_SPELL, SPELL_DRUID_FUNGAL_GROWTH_SUMMON);
                                        tempFungal->SetMaxHealth(5);
                                        tempFungal->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                                        tempFungal->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                        tempFungal->StopMoving();
                                        tempFungal->SetControlled(true, UNIT_STATE_STUNNED);
                                        
                                        // Graphical effect
                                        tempFungal->CastSpell(tempFungal, SPELL_DRUID_FUNGAL_GROWTH_GRAPHIC, true);
                                        
                                        // Slow effect
                                        tempFungal->CastSpell(tempFungal, fungalGrowthSlowSpellId, true);
                                    }
                                
                                    i++;
                                }
                            }
                        }
                    }
                }
            }
            
        private:
            float spellRange;
            std::list<Creature*> mushroomList;

            void Register() 
            {
                OnCheckCast += SpellCheckCastFn(spell_dru_wild_mushroom_detonate_SpellScript::CheckCast);
                OnEffectHitTarget += SpellEffectFn(spell_dru_wild_mushroom_detonate_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_wild_mushroom_detonate_SpellScript();
        }
};

class spell_dru_istant_rejuvenation : public SpellScriptLoader
{
    public:
        spell_dru_istant_rejuvenation() : SpellScriptLoader("spell_dru_istant_rejuvenation") { }

        class spell_dru_istant_rejuvenation_SpellScript : public SpellScript 
        {
            PrepareSpellScript(spell_dru_istant_rejuvenation_SpellScript);

            void ChangeHeal(SpellEffIndex /*effIndex*/) 
            {
                Unit* caster = GetCaster();
                Unit* target = GetExplTargetUnit();

                if (!caster || !target)
                    return;

                if(Aura* rejAura = target->GetAura(SPELL_DRUID_REJUVENATION, caster->GetGUID()))
                {
                    // Gift of the Earthmother calculation
                    if(AuraEffect* earthmother = caster->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_DRUID, 3186, EFFECT_0))
                    {
                        // Calculates Rejuvenation total heal
                        int32 rejuvenationTickHeal = caster->SpellHealingBonusDone(target, rejAura->GetSpellInfo(), rejAura->GetEffect(EFFECT_0)->GetAmount(), HEAL);
                        int32 healAmount = rejuvenationTickHeal * (rejAura->GetMaxDuration() / rejAura->GetSpellInfo()->Effects[EFFECT_0].Amplitude);

                        // Applies talent mod
                        ApplyPct(healAmount, earthmother->GetAmount());

                        SetHitHeal(healAmount);
                    }
                }
            }

            void Register() 
            {
                OnEffectHitTarget += SpellEffectFn(spell_dru_istant_rejuvenation_SpellScript::ChangeHeal, EFFECT_0, SPELL_EFFECT_HEAL);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_istant_rejuvenation_SpellScript();
        }
};

// 774 - Rejuvenation
class spell_dru_rejuvenation : public SpellScriptLoader
{
public:
    spell_dru_rejuvenation() : SpellScriptLoader("spell_dru_rejuvenation") { }

    class spell_dru_rejuvenation_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_dru_rejuvenation_AuraScript);

        void OnApplyAndReapply(AuraEffect const* aurEff, AuraEffectHandleModes mode)
        {
            Unit* caster = GetCaster();
            Unit* target = GetTarget();

            if(!caster || !target)
                return;
            
            // Gift of the Earthmother check
            if(caster->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_DRUID, 3186, EFFECT_0))
            {
                // Casts istant heal
                caster->CastSpell(target, SPELL_DRUID_REJUVENATION_ISTANT_SPELL, true);
            }

            if(mode == AURA_EFFECT_HANDLE_REAL)
            {
                // Update the rejvenation counter for the druid caster
                caster->ModRejuvenationCounter(true);

                // Nature's Bounty calculation (add)
                if(AuraEffect* naturesBounty = caster->GetAuraEffect(SPELL_AURA_ADD_PCT_MODIFIER, SPELLFAMILY_DRUID, 197, EFFECT_1))
                {
                    if(caster->GetRejuvenationCounter() >= 3)
                    {
                        // Here the miscValueB is used like a variable for keeping the real basepoint to change is 3 rej are present
                        int32 newAmount = naturesBounty->GetSpellInfo()->Effects[EFFECT_1].MiscValueB;

                        if(naturesBounty->GetAmount() != newAmount)
                        {
                            naturesBounty->ChangeAmount(newAmount);
                        }
                    }
                }
            }
        }

        void AfterRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();

            if(!caster)
                return;
            
            caster->ModRejuvenationCounter(false);
            
            // Nature's Bounty calculation (remove)
            if(AuraEffect* naturesBounty = caster->GetAuraEffect(SPELL_AURA_ADD_PCT_MODIFIER, SPELLFAMILY_DRUID, 197, EFFECT_1))
            {
                if(caster->GetRejuvenationCounter() < 3 && naturesBounty->GetAmount() != 0)
                {
                    naturesBounty->ChangeAmount(0);
                }
            }
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_dru_rejuvenation_AuraScript::OnApplyAndReapply, EFFECT_0, SPELL_AURA_PERIODIC_HEAL, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
            AfterEffectRemove += AuraEffectRemoveFn(spell_dru_rejuvenation_AuraScript::AfterRemove, EFFECT_0, SPELL_AURA_PERIODIC_HEAL, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_dru_rejuvenation_AuraScript();
    }
};

// 81262 - Efflorescence
class spell_dru_efflorescence : public SpellScriptLoader
{
public:
    spell_dru_efflorescence() : SpellScriptLoader("spell_dru_efflorescence") { }

    class spell_dru_efflorescence_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_dru_efflorescence_AuraScript);

        void OnPeriodic(AuraEffect const* /*aurEff*/)
        {
            if(!GetCaster())
                return;

            if (DynamicObject* dynObj = GetCaster()->GetDynObject(SPELL_DRUID_EFFLORESCENCE))
            {
                GetCaster()->CastSpell(dynObj->GetPositionX(), dynObj->GetPositionY(), dynObj->GetPositionZ(), SPELL_DRUID_EFFLORESCENCE_HOT, true);
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_dru_efflorescence_AuraScript::OnPeriodic, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_dru_efflorescence_AuraScript();
    }
};

// 5185/50464 Empowered Touch
class spell_dru_empowered_touch: public SpellScriptLoader 
{
public:
    spell_dru_empowered_touch() :SpellScriptLoader("spell_dru_empowered_touch") {}

    class spell_dru_empowered_touch_SpellScript: public SpellScript 
    {
        PrepareSpellScript(spell_dru_empowered_touch_SpellScript);

        void BeforeEffect(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!target || !caster)
                return;

            if (Aura* aur = target->GetAura(SPELL_DRUID_LIFEBLOOM_HOT))
                if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 2251, EFFECT_1))
                    if (roll_chance_i(aurEff->GetAmount()))
                        aur->RefreshDuration();
        }

        void Register() 
        {
            OnEffectHitTarget += SpellEffectFn(spell_dru_empowered_touch_SpellScript::BeforeEffect, EFFECT_0, SPELL_EFFECT_HEAL);
        }
    };

    SpellScript* GetSpellScript() const 
    {
        return new spell_dru_empowered_touch_SpellScript();
    }
};

class spell_dru_enrage : public SpellScriptLoader
{
    public:
        spell_dru_enrage() : SpellScriptLoader("spell_dru_enrage") { }

        class spell_dru_enrage_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_enrage_AuraScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(5229))
                    return false;
                return true;
            }

            void AfterApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster=GetCaster())
                {
                    if (caster->GetShapeshiftForm() == FORM_BEAR)
                    {
                        if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 2850, 0))
                        {
                            int32 bp0 = aurEff->GetAmount();
                            caster->CastCustomSpell(caster, 51185, &bp0, 0, 0, true); // King of the Jungle
                        }
                    }   
                }
            }

            void AfterRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_dru_enrage_AuraScript::AfterApply, EFFECT_0, SPELL_AURA_PERIODIC_ENERGIZE, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_dru_enrage_AuraScript::AfterRemove, EFFECT_0, SPELL_AURA_PERIODIC_ENERGIZE, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_enrage_AuraScript();
        }
};


// 54846 Glyph of Starfire
class spell_dru_glyph_of_starfire : public SpellScriptLoader
{
    public:
        spell_dru_glyph_of_starfire() : SpellScriptLoader("spell_dru_glyph_of_starfire") { }

        class spell_dru_glyph_of_starfire_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_glyph_of_starfire_SpellScript);

            bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DRUID_INCREASED_MOONFIRE_DURATION) || !sSpellMgr->GetSpellInfo(SPELL_DRUID_NATURES_SPLENDOR))
                    return false;
                return true;
            }

            void HandleScriptEffect(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                if (Unit* unitTarget = GetHitUnit())
                    if (AuraEffect const* aurEff = unitTarget->GetAuraEffect(SPELL_AURA_PERIODIC_DAMAGE, SPELLFAMILY_DRUID, 0x00000002, 0, 0, caster->GetGUID()))
                    {
                        Aura* aura = aurEff->GetBase();

                        uint32 countMin = aura->GetMaxDuration();
                        uint32 countMax = aura->GetSpellInfo()->GetMaxDuration() + 9000;
                        if (caster->HasAura(SPELL_DRUID_INCREASED_MOONFIRE_DURATION))
                            countMax += 3000;
                        if (caster->HasAura(SPELL_DRUID_NATURES_SPLENDOR))
                            countMax += 3000;

                        if (countMin < countMax)
                        {
                            aura->SetDuration(uint32(aura->GetDuration() + 3000));
                            aura->SetMaxDuration(countMin + 3000);
                        }
                    }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_dru_glyph_of_starfire_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_glyph_of_starfire_SpellScript();
        }
};

class spell_dru_insect_swarm : public SpellScriptLoader
{
    public:
        spell_dru_insect_swarm() : SpellScriptLoader("spell_dru_insect_swarm") { }

        class spell_dru_insect_swarm_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_insect_swarm_AuraScript);

            void CalculateAmount(AuraEffect const* aurEff, int32 & amount, bool & /*canBeRecalculated*/)
            {
                if (Unit* caster = GetCaster())
                    if (AuraEffect const* relicAurEff = caster->GetAuraEffect(SPELL_DRUID_ITEM_T8_BALANCE_RELIC, EFFECT_0))
                        amount += relicAurEff->GetAmount() / aurEff->GetTotalTicks();
            }

            void Register()
            {
                 DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_insect_swarm_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_insect_swarm_AuraScript();
        }
};

enum EclipseSpells
{
    SPELL_DRUID_WRATH                    = 5176,
    SPELL_DRUID_STARFIRE                 = 2912,
    SPELL_DRUID_STARSURGE                = 78674,
    SPELL_DRUID_ECLIPSE_GENERAL_ENERGIZE = 89265,
    SPELL_DRUID_STARSURGE_ENERGIZE       = 86605,
    SPELL_DRUID_LUNAR_ECLIPSE_MARKER     = 67484, // Will make the yellow arrow on eclipse bar point to the blue side (lunar)
    SPELL_DRUID_SOLAR_ECLIPSE_MARKER     = 67483, // Will make the yellow arrow on eclipse bar point to the yellow side (solar)
    SPELL_DRUID_SOLAR_ECLIPSE            = 48517,
    SPELL_DRUID_LUNAR_ECLIPSE            = 48518,
    SPELL_DRUID_GLYPH_OF_TYPHOON            = 62135,
    SPELL_DRUID_IDOL_OF_FERAL_SHADOWS       = 34241,
    SPELL_DRUID_IDOL_OF_WORSHIP             = 60774,
    SPELL_DRUID_LIVING_SEED_HEAL            = 48503,
    SPELL_DRUID_LIVING_SEED_PROC            = 48504,
};

// 2912, 5176, 78674 - Starfire, Wrath, and Starsurge
class spell_dru_eclipse_energize : public SpellScriptLoader
{
    public:
        spell_dru_eclipse_energize() : SpellScriptLoader("spell_dru_eclipse_energize") { }

        class spell_dru_eclipse_energize_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_eclipse_energize_SpellScript);

            int32 energizeAmount;

            bool Load()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return false;

                if (GetCaster()->ToPlayer()->getClass() != CLASS_DRUID)
                    return false;

                energizeAmount = 0;

                return true;
            }

            void HandleEnergize(SpellEffIndex effIndex)
            {
                if(!GetCaster())
                {
                    return;
                }

                Player* caster = GetCaster()->ToPlayer();

                // No boomy, no deal.
                if (caster->GetPrimaryTalentTree(caster->GetActiveSpec()) != TALENT_TREE_DRUID_BALANCE)
                    return;

                switch (GetSpellInfo()->Id)
                {
                    case SPELL_DRUID_WRATH:
                    {
                        energizeAmount = -GetSpellInfo()->Effects[effIndex].BasePoints; // -13

                        // Euphoria
                        if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 4431, 0))
                            if (!caster->HasAura(48517))
                                if (roll_chance_i(aurEff->GetAmount()))
                                    energizeAmount *= 2;

                        // If we are set to fill the lunar side or we've just logged in with 0 power..
                        if ((!caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER) && caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER))
                            || caster->GetPower(POWER_ECLIPSE) == 0)
                        {
                            caster->CastCustomSpell(caster, SPELL_DRUID_ECLIPSE_GENERAL_ENERGIZE, &energizeAmount, 0, 0, true);
                            // If the energize was due to 0 power, cast the eclipse marker aura
                            if (!caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER))
                                caster->CastSpell(caster, SPELL_DRUID_LUNAR_ECLIPSE_MARKER, true);
                        }
                        // The energizing effect brought us out of the solar eclipse, remove the aura
                        if (caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE) && caster->GetPower(POWER_ECLIPSE) <= 0)
                        {
                            caster->RemoveAurasDueToSpell(SPELL_DRUID_SOLAR_ECLIPSE);
                            caster->RemoveAura(94338);
                        }
                        break;
                    }
                    case SPELL_DRUID_STARFIRE:
                    {
                        energizeAmount = GetSpellInfo()->Effects[effIndex].BasePoints; // 20

                        // Euphoria
                        if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 4431, 0))
                            if (!caster->HasAura(48518))
                                if (roll_chance_i(aurEff->GetAmount()))
                                    energizeAmount *= 2;

                        // If we are set to fill the solar side or we've just logged in with 0 power..
                        if ((!caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER) && caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER))
                            || caster->GetPower(POWER_ECLIPSE) == 0)
                        {
                            caster->CastCustomSpell(caster, SPELL_DRUID_ECLIPSE_GENERAL_ENERGIZE, &energizeAmount, 0, 0, true);
                            // If the energize was due to 0 power, cast the eclipse marker aura
                            if (!caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER))
                                caster->CastSpell(caster, SPELL_DRUID_SOLAR_ECLIPSE_MARKER, true);
                        }
                        // The energizing effect brought us out of the lunar eclipse, remove the aura
                        if (caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE) && caster->GetPower(POWER_ECLIPSE) >= 0)
                        {
                            caster->RemoveAura(SPELL_DRUID_LUNAR_ECLIPSE);
                        }
                        // Operation done the the Druid reaches 100 Solar Energy with starfire
                        if (!caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE) && caster->GetPower(POWER_ECLIPSE) == 100)
                        {
                            caster->CastSpell(caster, SPELL_DRUID_SOLAR_ECLIPSE, true);
                            caster->RemoveAurasDueToSpell(SPELL_DRUID_SOLAR_ECLIPSE_MARKER);
                            caster->CastSpell(caster, SPELL_DRUID_LUNAR_ECLIPSE_MARKER, true);

                            // Nature's Grace
                            caster->RemoveSpellCooldown(16886); 

                           // Sunfire
                           if (AuraEffect* aura = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 3262, 0))
                               caster->CastSpell(caster, 94338, true);
                        }
                        break;
                    }
                    case SPELL_DRUID_STARSURGE:
                    {
                        // If we are set to fill the solar side or we've just logged in with 0 power (confirmed with sniffs)
                        if ((!caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER) && caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER))
                            || caster->GetPower(POWER_ECLIPSE) == 0)
                        {
                            energizeAmount = GetSpellInfo()->Effects[effIndex].BasePoints; // 15

                            // Euphoria
                            if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 4431, 0))
                                if (!caster->HasAura(48518))
                                    if (roll_chance_i(aurEff->GetAmount()))
                                        energizeAmount *= 2;

                            caster->CastCustomSpell(caster, SPELL_DRUID_STARSURGE_ENERGIZE, &energizeAmount, 0, 0, true);

                            // If the energize was due to 0 power, cast the eclipse marker aura
                            if (!caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER))
                                caster->CastSpell(caster, SPELL_DRUID_SOLAR_ECLIPSE_MARKER, true);
                        }
                        else if (!caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER) && caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER))
                        {
                            energizeAmount = -GetSpellInfo()->Effects[effIndex].BasePoints; // -15

                            // Euphoria
                            if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 4431, 0))
                                if (!caster->HasAura(48517))
                                    if (roll_chance_i(aurEff->GetAmount()))
                                        energizeAmount *= 2;

                            caster->CastCustomSpell(caster, SPELL_DRUID_STARSURGE_ENERGIZE, &energizeAmount, 0, 0, true);
                        }
                        // The energizing effect brought us out of the lunar eclipse, remove the aura
                        if (caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE) && caster->GetPower(POWER_ECLIPSE) >= 0)
                            caster->RemoveAura(SPELL_DRUID_LUNAR_ECLIPSE);
                        // The energizing effect brought us out of the solar eclipse, remove the aura
                        else if (caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE) && caster->GetPower(POWER_ECLIPSE) <= 0)
                        {
                            caster->RemoveAurasDueToSpell(SPELL_DRUID_SOLAR_ECLIPSE);
                            caster->RemoveAura(94338);
                        }

                        // Glyph of Starsurge
                        if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 1957, EFFECT_0))
                            caster->ToPlayer()->ReduceSpellCooldown(48505, aurEff->GetAmount()*IN_MILLISECONDS);
                        break;
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_dru_eclipse_energize_SpellScript::HandleEnergize, EFFECT_1, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_eclipse_energize_SpellScript;
        }
};

// -1850 - Dash
class spell_dru_dash : public SpellScriptLoader
{
    public:
        spell_dru_dash() : SpellScriptLoader("spell_dru_dash") { }

        class spell_dru_dash_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_dash_AuraScript);

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
            {
                // do not set speed if not in cat form
                if (GetUnitOwner()->GetShapeshiftForm() != FORM_CAT)
                    amount = 0;
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_dash_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_MOD_INCREASE_SPEED);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_dash_AuraScript();
        }
};


// 34246 - Idol of the Emerald Queen
// 60779 - Idol of Lush Moss
class spell_dru_idol_lifebloom : public SpellScriptLoader
{
    public:
        spell_dru_idol_lifebloom() : SpellScriptLoader("spell_dru_idol_lifebloom") { }

        class spell_dru_idol_lifebloom_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_idol_lifebloom_AuraScript);

            void HandleEffectCalcSpellMod(AuraEffect const* aurEff, SpellModifier*& spellMod)
            {
                if (!spellMod)
                {
                    spellMod = new SpellModifier(GetAura());
                    spellMod->op = SPELLMOD_DOT;
                    spellMod->type = SPELLMOD_FLAT;
                    spellMod->spellId = GetId();
                    spellMod->mask = GetSpellInfo()->Effects[aurEff->GetEffIndex()].SpellClassMask;
                }
                spellMod->value = aurEff->GetAmount() / 7;
            }

            void Register()
            {
                DoEffectCalcSpellMod += AuraEffectCalcSpellModFn(spell_dru_idol_lifebloom_AuraScript::HandleEffectCalcSpellMod, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_idol_lifebloom_AuraScript();
        }
};

// -33763 - Lifebloom
// 94447 - Lifebloom (Tree of Life)
class spell_dru_lifebloom : public SpellScriptLoader
{
    public:
        spell_dru_lifebloom() : SpellScriptLoader("spell_dru_lifebloom") { }

        class spell_dru_lifebloom_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_lifebloom_AuraScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DRUID_LIFEBLOOM_FINAL_HEAL))
                    return false;
                if (!sSpellMgr->GetSpellInfo(SPELL_DRUID_LIFEBLOOM_ENERGIZE))
                    return false;
                return true;
            }

            void AfterRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
            {
                // Final heal only on duration end
                if (GetTargetApplication()->GetRemoveMode() != AURA_REMOVE_BY_EXPIRE)
                    return;

                // final heal
                int32 stack = GetStackAmount();
                int32 healAmount = aurEff->GetAmount();
                if (Unit* caster = GetCaster())
                {
                    healAmount = caster->SpellHealingBonusDone(GetTarget(), GetSpellInfo(), healAmount, HEAL, stack);
                    healAmount = GetTarget()->SpellHealingBonusTaken(caster, GetSpellInfo(), healAmount, HEAL, stack);

                    GetTarget()->CastCustomSpell(GetTarget(), SPELL_DRUID_LIFEBLOOM_FINAL_HEAL, &healAmount, NULL, NULL, true, NULL, aurEff, GetCasterGUID());
                    return;
                }

                GetTarget()->CastCustomSpell(GetTarget(), SPELL_DRUID_LIFEBLOOM_FINAL_HEAL, &healAmount, NULL, NULL, true, NULL, aurEff, GetCasterGUID());
            }

            void HandleDispel(DispelInfo* dispelInfo)
            {
                if (Unit* target = GetUnitOwner())
                {
                    if (AuraEffect const* aurEff = GetEffect(EFFECT_1))
                    {
                        // final heal
                        int32 healAmount = aurEff->GetAmount();
                        if (Unit* caster = GetCaster())
                        {
                            healAmount = caster->SpellHealingBonusDone(target, GetSpellInfo(), healAmount, HEAL, dispelInfo->GetRemovedCharges());
                            healAmount = target->SpellHealingBonusTaken(caster, GetSpellInfo(), healAmount, HEAL, dispelInfo->GetRemovedCharges());

                            target->CastCustomSpell(target, SPELL_DRUID_LIFEBLOOM_FINAL_HEAL, &healAmount, NULL, NULL, true, NULL, NULL, GetCasterGUID());
                            return;
                        }

                        target->CastCustomSpell(target, SPELL_DRUID_LIFEBLOOM_FINAL_HEAL, &healAmount, NULL, NULL, true, NULL, NULL, GetCasterGUID());
                    }
                }
            }

            void Register()
            {
                AfterEffectRemove += AuraEffectRemoveFn(spell_dru_lifebloom_AuraScript::AfterRemove, EFFECT_1, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
                AfterDispel += AuraDispelFn(spell_dru_lifebloom_AuraScript::HandleDispel);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_lifebloom_AuraScript();
        }
};

// -48496 - Living Seed
class spell_dru_living_seed : public SpellScriptLoader
{
    public:
        spell_dru_living_seed() : SpellScriptLoader("spell_dru_living_seed") { }

        class spell_dru_living_seed_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_living_seed_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DRUID_LIVING_SEED_PROC))
                    return false;
                return true;
            }

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& eventInfo)
            {
                PreventDefaultAction();
                int32 amount = CalculatePct(eventInfo.GetHealInfo()->GetHeal(), aurEff->GetAmount());
                GetTarget()->CastCustomSpell(SPELL_DRUID_LIVING_SEED_PROC, SPELLVALUE_BASE_POINT0, amount, eventInfo.GetProcTarget(), true, NULL, aurEff);
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_dru_living_seed_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_living_seed_AuraScript();
        }
};

// 48504 - Living Seed (Proc)
class spell_dru_living_seed_proc : public SpellScriptLoader
{
    public:
        spell_dru_living_seed_proc() : SpellScriptLoader("spell_dru_living_seed_proc") { }

        class spell_dru_living_seed_proc_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_living_seed_proc_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DRUID_LIVING_SEED_HEAL))
                    return false;
                return true;
            }

            void HandleProc(AuraEffect const* aurEff, ProcEventInfo& /*eventInfo*/)
            {
                PreventDefaultAction();
                GetTarget()->CastCustomSpell(SPELL_DRUID_LIVING_SEED_HEAL, SPELLVALUE_BASE_POINT0, aurEff->GetAmount(), GetTarget(), true, NULL, aurEff);
            }

            void Register()
            {
                OnEffectProc += AuraEffectProcFn(spell_dru_living_seed_proc_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_living_seed_proc_AuraScript();
        }
};

// 48391 - Owlkin Frenzy
class spell_dru_owlkin_frenzy : public SpellScriptLoader
{
    public:
        spell_dru_owlkin_frenzy() : SpellScriptLoader("spell_dru_owlkin_frenzy") { }

        class spell_dru_owlkin_frenzy_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_owlkin_frenzy_AuraScript);

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
            {
                amount = CalculatePct(GetUnitOwner()->GetCreatePowers(POWER_MANA), amount);
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_owlkin_frenzy_AuraScript::CalculateAmount, EFFECT_2, SPELL_AURA_PERIODIC_ENERGIZE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_owlkin_frenzy_AuraScript();
        }
};

// -16972 - Predatory Strikes
class spell_dru_predatory_strikes : public SpellScriptLoader
{
    public:
        spell_dru_predatory_strikes() : SpellScriptLoader("spell_dru_predatory_strikes") { }

        class spell_dru_predatory_strikes_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_predatory_strikes_AuraScript);

            void UpdateAmount(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Player* target = GetTarget()->ToPlayer())
                    target->UpdateAttackPowerAndDamage();
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_dru_predatory_strikes_AuraScript::UpdateAmount, EFFECT_ALL, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_CHANGE_AMOUNT_MASK);
                AfterEffectRemove += AuraEffectRemoveFn(spell_dru_predatory_strikes_AuraScript::UpdateAmount, EFFECT_ALL, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_CHANGE_AMOUNT_MASK);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_predatory_strikes_AuraScript();
        }
};

// 33851 - Primal Tenacity
class spell_dru_primal_tenacity : public SpellScriptLoader
{
    public:
        spell_dru_primal_tenacity() : SpellScriptLoader("spell_dru_primal_tenacity") { }

        class spell_dru_primal_tenacity_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_primal_tenacity_AuraScript);

            uint32 absorbPct;

            bool Load()
            {
                absorbPct = GetSpellInfo()->Effects[EFFECT_1].CalcValue(GetCaster());
                return true;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
            {
                // Set absorbtion amount to unlimited
                amount = -1;
            }

            void Absorb(AuraEffect* /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                // reduces all damage taken while Stunned in Cat Form
                if (GetTarget()->GetShapeshiftForm() == FORM_CAT && GetTarget()->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED) && GetTarget()->HasAuraWithMechanic(1<<MECHANIC_STUN))
                    absorbAmount = CalculatePct(dmgInfo.GetDamage(), absorbPct);
            }

            void Register()
            {
                 DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_primal_tenacity_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
                 OnEffectAbsorb += AuraEffectAbsorbFn(spell_dru_primal_tenacity_AuraScript::Absorb, EFFECT_1);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_primal_tenacity_AuraScript();
        }
};

// -1079 - Rip
class spell_dru_rip : public SpellScriptLoader
{
    public:
        spell_dru_rip() : SpellScriptLoader("spell_dru_rip") { }

        class spell_dru_rip_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_rip_AuraScript);

            bool Load()
            {
                Unit* caster = GetCaster();
                return caster && caster->GetTypeId() == TYPEID_PLAYER;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = false;

                if (Unit* caster = GetCaster())
                {
                    // 0.01 * $AP * cp
                    uint8 cp = caster->ToPlayer()->GetComboPoints();

                    // Idol of Feral Shadows. Can't be handled as SpellMod due its dependency from CPs
                    if (AuraEffect const* idol = caster->GetAuraEffect(SPELL_DRUID_IDOL_OF_FERAL_SHADOWS, EFFECT_0))
                        amount += cp * idol->GetAmount();
                    // Idol of Worship. Can't be handled as SpellMod due its dependency from CPs
                    else if (AuraEffect const* idol = caster->GetAuraEffect(SPELL_DRUID_IDOL_OF_WORSHIP, EFFECT_0))
                        amount += cp * idol->GetAmount();

                    amount += int32(CalculatePct(caster->GetTotalAttackPowerValue(BASE_ATTACK), cp));
                }
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_rip_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_rip_AuraScript();
        }
};

// 62606 - Savage Defense
class spell_dru_savage_defense : public SpellScriptLoader
{
    public:
        spell_dru_savage_defense() : SpellScriptLoader("spell_dru_savage_defense") { }

        class spell_dru_savage_defense_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_savage_defense_AuraScript);

            uint32 absorbPct;
            int32 absAmount;

            bool Load()
            {
                absorbPct = GetSpellInfo()->Effects[EFFECT_0].CalcValue(GetCaster());
                return true;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
            {
                if (Unit* caster = GetCaster())
                {
                    absAmount = uint32 (CalculatePct(caster->GetTotalAttackPowerValue(BASE_ATTACK), absorbPct));
                        // Savage Defender (Mastery Druid Feral)
                        if (caster->HasAura(86470))  
                        {
                            if (caster->ToPlayer()->GetPrimaryTalentTree(caster->ToPlayer()->GetActiveSpec()) == BS_DRUID_FERAL_COMBAT)
                            {
                                absAmount *= 1.0f + (0.04f *  caster->ToPlayer()->GetMasteryPoints());
                            }
                        }

                    amount = absAmount;
                }
            }

            void Absorb(AuraEffect* aurEff, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                aurEff->SetAmount(absAmount);
                absAmount = absAmount - dmgInfo.GetDamage() < 0 ? 0 : absAmount - dmgInfo.GetDamage();
            }

            void AfterEffect (AuraEffect* aurEff, DamageInfo& dmgInfo, uint32& absorbAmount)
            {
                if (Unit* caster = GetTarget()) 
                    if (absAmount <= 0)
                        caster->RemoveAura(62606);
            }

            void Register()
            {
                 DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_savage_defense_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
                 OnEffectAbsorb += AuraEffectAbsorbFn(spell_dru_savage_defense_AuraScript::Absorb, EFFECT_0);
                 AfterEffectAbsorb += AuraEffectAbsorbFn(spell_dru_savage_defense_AuraScript::AfterEffect, EFFECT_0);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_savage_defense_AuraScript();
        }
};

// 52610 - Savage Roar
class spell_dru_savage_roar : public SpellScriptLoader
{
    public:
        spell_dru_savage_roar() : SpellScriptLoader("spell_dru_savage_roar") { }

        class spell_dru_savage_roar_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_savage_roar_SpellScript);

            SpellCastResult CheckCast()
            {
                Unit* caster = GetCaster();
                if (caster->GetShapeshiftForm() != FORM_CAT)
                    return SPELL_FAILED_ONLY_SHAPESHIFT;

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dru_savage_roar_SpellScript::CheckCast);
            }
        };

        class spell_dru_savage_roar_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_savage_roar_AuraScript);

            bool Validate(SpellInfo const* /*spellInfo*/)
            {
                if (!sSpellMgr->GetSpellInfo(SPELL_DRUID_SAVAGE_ROAR))
                    return false;
                return true;
            }

            void AfterApply(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
            {
                Unit* target = GetTarget();
                target->CastSpell(target, SPELL_DRUID_SAVAGE_ROAR, true, NULL, aurEff, GetCasterGUID());
            }

            void AfterRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                GetTarget()->RemoveAurasDueToSpell(SPELL_DRUID_SAVAGE_ROAR);
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_dru_savage_roar_AuraScript::AfterApply, EFFECT_1, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_dru_savage_roar_AuraScript::AfterRemove, EFFECT_1, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_savage_roar_SpellScript();
        }

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_savage_roar_AuraScript();
        }
};

// -50294 - Starfall (AOE)
class spell_dru_starfall_aoe : public SpellScriptLoader
{
    public:
        spell_dru_starfall_aoe() : SpellScriptLoader("spell_dru_starfall_aoe") { }

        class spell_dru_starfall_aoe_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_starfall_aoe_SpellScript);

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                targets.remove(GetExplTargetUnit());
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_dru_starfall_aoe_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_starfall_aoe_SpellScript();
        }
};

// -50286 - Starfall (Dummy)
class spell_dru_starfall_dummy : public SpellScriptLoader
{
    public:
        spell_dru_starfall_dummy() : SpellScriptLoader("spell_dru_starfall_dummy") { }

        class spell_dru_starfall_dummy_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_starfall_dummy_SpellScript);

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                Trinity::Containers::RandomResizeList(targets, 2);
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                // Shapeshifting into an animal form or mounting cancels the effect
                if (caster->GetCreatureType() == CREATURE_TYPE_BEAST || caster->IsMounted())
                {
                    if (SpellInfo const* spellInfo = GetTriggeringSpell())
                        caster->RemoveAurasDueToSpell(spellInfo->Id);
                    return;
                }

                // Any effect which causes you to lose control of your character will supress the starfall effect.
                if (caster->HasUnitState(UNIT_STATE_CONTROLLED))
                    return;

                caster->CastSpell(GetHitUnit(), uint32(GetEffectValue()), true);
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_dru_starfall_dummy_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
                OnEffectHitTarget += SpellEffectFn(spell_dru_starfall_dummy_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_starfall_dummy_SpellScript();
        }
};

// 40121 - Swift Flight Form (Passive)
class spell_dru_swift_flight_passive : public SpellScriptLoader
{
    public:
        spell_dru_swift_flight_passive() : SpellScriptLoader("spell_dru_swift_flight_passive") { }

        class spell_dru_swift_flight_passive_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_swift_flight_passive_AuraScript);

            bool Load()
            {
                return GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }

            void CalculateAmount(AuraEffect const* /*aurEff*/, int32 & amount, bool & /*canBeRecalculated*/)
            {
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->GetSkillValue(SKILL_RIDING) >= 375)
                        amount = 310;
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_swift_flight_passive_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_MOD_INCREASE_VEHICLE_FLIGHT_SPEED);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_swift_flight_passive_AuraScript();
        }
};

class spell_dru_tiger_s_fury : public SpellScriptLoader
{
    public:
        spell_dru_tiger_s_fury() : SpellScriptLoader("spell_dru_tiger_s_fury") { }

        class spell_dru_tiger_s_fury_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_tiger_s_fury_AuraScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(5217))
                    return false;
                return true;
            }

            void AfterApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster=GetCaster())
                {
                    if (AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 2850, 1))
                    {
                        int32 bp0 = aurEff->GetAmount();
                        caster->CastCustomSpell(caster, 51178, &bp0, 0, 0, true); // King of the Jungle
                    }
                    if (caster->HasAura(80316)) // Primal Madness (rank 1)
                        caster->CastSpell(caster, 80879, true);

                    if (caster->HasAura(80317)) // Primal Madness (rank 1)
                        caster->CastSpell(caster, 80886, true);
                }
            }

            void AfterRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster=GetCaster())
                {
                    if (caster->HasAura(80316))
                        caster->RemoveAura(80879);

                    if (caster->HasAura(80317))
                        caster->RemoveAura(80886);
                }
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_dru_tiger_s_fury_AuraScript::AfterApply, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_dru_tiger_s_fury_AuraScript::AfterRemove, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_tiger_s_fury_AuraScript();
        }
};

class spell_dru_t10_restoration_4p_bonus : public SpellScriptLoader
{
    public:
        spell_dru_t10_restoration_4p_bonus() : SpellScriptLoader("spell_dru_t10_restoration_4p_bonus") { }

        class spell_dru_t10_restoration_4p_bonus_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_t10_restoration_4p_bonus_SpellScript);

            bool Load()
            {
                return GetCaster()->GetTypeId() == TYPEID_PLAYER;
            }

            void FilterTargets(std::list<WorldObject*>& targets)
            {
                if (!GetCaster()->ToPlayer()->GetGroup())
                {
                    targets.clear();
                    targets.push_back(GetCaster());
                }
                else
                {
                    targets.remove(GetExplTargetUnit());
                    std::list<Unit*> tempTargets;
                    for (std::list<WorldObject*>::const_iterator itr = targets.begin(); itr != targets.end(); ++itr)
                        if ((*itr)->GetTypeId() == TYPEID_PLAYER && GetCaster()->IsInRaidWith((*itr)->ToUnit()))
                            tempTargets.push_back((*itr)->ToUnit());

                    if (tempTargets.empty())
                    {
                        targets.clear();
                        FinishCast(SPELL_FAILED_DONT_REPORT);
                        return;
                    }

                    Unit* target = Trinity::Containers::SelectRandomContainerElement(tempTargets);
                    targets.clear();
                    targets.push_back(target);
                }
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_dru_t10_restoration_4p_bonus_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ALLY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_t10_restoration_4p_bonus_SpellScript();
        }
};

class spell_dru_ferocious_bite: public SpellScriptLoader
{
public:
    spell_dru_ferocious_bite() : SpellScriptLoader("spell_dru_ferocious_bite")
    { }

    class spell_dru_ferocious_bite_SpellScript: public SpellScript
    {
        PrepareSpellScript(spell_dru_ferocious_bite_SpellScript)

            void HandleOnHit()
            {
                if (Unit* caster=GetCaster())
                {
                    if (Unit* target=GetHitUnit())
                    {
                        // Blood in the Water
                        if (caster->GetAuraEffect(SPELL_AURA_DUMMY,SPELLFAMILY_DRUID, 4399, EFFECT_0))
                        {
                            if (target->HealthBelowPct(25))
                            {
                                if (AuraEffect const *aurEff = target->GetAuraEffect(SPELL_AURA_PERIODIC_DAMAGE, SPELLFAMILY_DRUID, 0x0080000, 0x00000000, 0x00200000, caster->GetGUID()))
                                {
                                    aurEff->GetBase()->RefreshDuration();
                                }
                            }
                        }
                    }
                }
            }

            void Register() 
            {
                OnHit += SpellHitFn(spell_dru_ferocious_bite_SpellScript::HandleOnHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_ferocious_bite_SpellScript();
        }
};

class spell_dru_eclipse : public SpellScriptLoader
{
    public:
        spell_dru_eclipse() : SpellScriptLoader("spell_dru_eclipse") { }

        class spell_dru_eclipse_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_eclipse_AuraScript);

            void CalculateBonus(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = true;

                if (!GetCaster())
                    return;

                // Total Eclipse (Druid Balance Mastery)
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->HasAuraType(SPELL_AURA_MASTERY))
                        if (caster->GetPrimaryTalentTree(caster->GetActiveSpec()) == BS_DRUID_BALANCE)
                            amount += int32(2.0f * caster->GetMasteryPoints());
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_eclipse_AuraScript::CalculateBonus, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_eclipse_AuraScript();
        }
};


class spell_dru_harmony_periodic : public SpellScriptLoader
{
    public:
        spell_dru_harmony_periodic() : SpellScriptLoader("spell_dru_harmony_periodic") { }

        class spell_dru_harmony_periodic_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_harmony_periodic_AuraScript);

            void CalculateBonus(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = true;

                if (!GetCaster())
                    return;

                // Harmony (Druid Restoration Mastery)
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->HasAuraType(SPELL_AURA_MASTERY))
                        if (caster->GetPrimaryTalentTree(caster->GetActiveSpec()) == BS_DRUID_RESTORATION)
                            amount += int32(1.25f * caster->GetMasteryPoints());
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_harmony_periodic_AuraScript::CalculateBonus, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER);
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_harmony_periodic_AuraScript::CalculateBonus, EFFECT_1, SPELL_AURA_ADD_PCT_MODIFIER);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_harmony_periodic_AuraScript();
        }
};

class spell_dru_harmony : public SpellScriptLoader
{
    public:
        spell_dru_harmony() : SpellScriptLoader("spell_dru_harmony") { }

        class spell_dru_harmony_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_harmony_AuraScript);

            void CalculateBonus(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
            {
                canBeRecalculated = true;

                if (!GetCaster())
                    return;

                // Harmony (Druid Restoration Mastery)
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->HasAuraType(SPELL_AURA_MASTERY))
                        if (caster->GetPrimaryTalentTree(caster->GetActiveSpec()) == BS_DRUID_RESTORATION)
                            amount += int32(1.25f * caster->GetMasteryPoints());
            }

            void Register()
            {
                DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dru_harmony_AuraScript::CalculateBonus, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_harmony_AuraScript();
        }
};

class spell_dru_feral_swiftness : public SpellScriptLoader
{
    public:
        spell_dru_feral_swiftness() : SpellScriptLoader("spell_dru_feral_swiftness") { }

        class spell_dru_feral_swiftness_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_feral_swiftness_SpellScript);

            void OnHit()
            {
                if (Unit* caster=GetCaster())
                    if (Unit* target=GetHitUnit())
                        if(AuraEffect * aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 67, EFFECT_1))
                            if(roll_chance_i(aurEff->GetAmount()))
                                target->RemoveMovementImpairingAuras();
            }

            void Register()
            {
                
                AfterHit += SpellHitFn(spell_dru_feral_swiftness_SpellScript::OnHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_feral_swiftness_SpellScript();
        }
};

class spell_dru_typhoon : public SpellScriptLoader
{
    public:
        spell_dru_typhoon() : SpellScriptLoader("spell_dru_typhoon") { }

        class spell_dru_typhoon_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_typhoon_SpellScript);

            void HandleKnockBack(SpellEffIndex effIndex)
            {
                // Glyph of Typhoon
                if (GetCaster()->HasAura(SPELL_DRUID_GLYPH_OF_TYPHOON))
                    PreventHitDefaultEffect(effIndex);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_dru_typhoon_SpellScript::HandleKnockBack, EFFECT_0, SPELL_EFFECT_KNOCK_BACK);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_typhoon_SpellScript();
        }
};

class spell_dru_ravage : public SpellScriptLoader
{
    public:
        spell_dru_ravage() : SpellScriptLoader("spell_dru_ravage") { }

        class spell_dru_ravage_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_ravage_SpellScript);

            void OnHit()
            {
                if (Unit* caster=GetCaster())
                    if (Unit* target=GetHitUnit())
                    {
                        if (caster->HasAura(48483))
                            caster->CastSpell(target, 58179, true);

                        if (caster->HasAura(48484))
                            caster->CastSpell(target, 58180, true);

                        if (caster->HasAura(109881))
                            caster->RemoveAura(109881);
                    }
            }

            void Register()
            {
                
                AfterHit += SpellHitFn(spell_dru_ravage_SpellScript::OnHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_ravage_SpellScript();
        }
};

class spell_dru_feral_charge : public SpellScriptLoader
{
    public:
        spell_dru_feral_charge() : SpellScriptLoader("spell_dru_feral_charge") { }

        class spell_dru_feral_charge_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_feral_charge_SpellScript);

            SpellCastResult CheckCast()
            {
                if (Unit* caster = GetCaster())
                {
                    if (caster->HasUnitState(UNIT_STATE_ROOT))
                    {
                        SetCustomCastResultMessage(SPELL_CUSTOM_ERROR_CANT_DO_WHILE_ROOTED);
                        return SPELL_FAILED_CUSTOM_ERROR;
                    }
                }

                return SPELL_CAST_OK;
            }

            void OnHit()
            {
                if (Unit* caster=GetCaster())
                {
                    if (caster->GetShapeshiftForm() == FORM_CAT)
                    {
                        if (caster->HasAura(78892))
                            caster->CastSpell(caster,81021, true);

                        if (caster->HasAura(78893))
                            caster->CastSpell(caster,81022, true);
                    }
                    else if (caster->GetShapeshiftForm() == FORM_BEAR)
                    {
                        if (caster->HasAura(78892))
                            caster->CastSpell(caster,81016, true);

                        if (caster->HasAura(78893))
                            caster->CastSpell(caster,81017, true);
                    }
                }
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dru_feral_charge_SpellScript::CheckCast);
                AfterHit += SpellHitFn(spell_dru_feral_charge_SpellScript::OnHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_feral_charge_SpellScript();
        }
};

class spell_dru_pulverize : public SpellScriptLoader
{
    public:
        spell_dru_pulverize() : SpellScriptLoader("spell_dru_pulverize") { }

        class spell_dru_pulverize_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_pulverize_SpellScript);

            void OnHit()
            {
                if (Unit* caster=GetCaster())
                {
                    if (Unit* target=GetHitUnit())
                    {
                        if (AuraEffect const* lacerate = target->GetAuraEffect(SPELL_AURA_PERIODIC_DAMAGE,SPELLFAMILY_DRUID,0x00000000,0x00000100,0x00000000,caster->GetGUID()))
                        {
                            int32 bp0 = 3*lacerate->GetBase()->GetStackAmount();
                            caster->CastCustomSpell(caster,80951,&bp0,0,0,true);
                            target->RemoveAura(lacerate->GetBase());
                        }
                    }
                }
            }

            void Register()
            {
                
                AfterHit += SpellHitFn(spell_dru_pulverize_SpellScript::OnHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_pulverize_SpellScript();
        }
};

class spell_dru_berserk : public SpellScriptLoader
{
    public:
        spell_dru_berserk() : SpellScriptLoader("spell_dru_berserk") { }
        
        class spell_dru_berserk_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_berserk_SpellScript);

            SpellCastResult CheckCast()
            {
                if (!GetCaster()->IsInFeralForm())
                {
                    SetCustomCastResultMessage(SPELL_CUSTOM_ERROR_MUST_BE_IN_FERAL_FORM);
                    return SPELL_FAILED_CUSTOM_ERROR;
                }

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dru_berserk_SpellScript::CheckCast);
            }
        };

        class spell_dru_berserk_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_berserk_AuraScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(50334))
                    return false;
                return true;
            }

            void AfterApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster=GetCaster())
                {
                    if (caster->GetShapeshiftForm() == FORM_CAT)
                    {
                        if (caster->HasAura(80316)) // Primal Madness (rank 1)
                            caster->CastSpell(caster, 80879, true);

                        if (caster->HasAura(80317)) // Primal Madness (rank 2)
                            caster->CastSpell(caster, 80886, true);
                    }
                }
            }

            void AfterRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster=GetCaster())
                {
                    if (caster->GetShapeshiftForm() == FORM_CAT)
                    {
                        if (caster->HasAura(80316))
                            caster->RemoveAura(80879);

                        if (caster->HasAura(80317))
                            caster->RemoveAura(80886);
                    }
                }
            }

            void Register()
            {
                AfterEffectApply += AuraEffectApplyFn(spell_dru_berserk_AuraScript::AfterApply, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
                AfterEffectRemove += AuraEffectRemoveFn(spell_dru_berserk_AuraScript::AfterRemove, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER, AURA_EFFECT_HANDLE_REAL);
            }
        };
        
        SpellScript* GetSpellScript() const
        {
            return new spell_dru_berserk_SpellScript();
        }

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_berserk_AuraScript();
        }
};

class spell_dru_lacerate : public SpellScriptLoader
{
    public:
        spell_dru_lacerate() : SpellScriptLoader("spell_dru_lacerate") { }

        class spell_dru_lacerate_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_dru_lacerate_AuraScript);

            bool Validate(SpellInfo const* /*spell*/)
            {
                if (!sSpellMgr->GetSpellInfo(50334))
                    return false;
                return true;
            }

            void OnPeriodic(AuraEffect const* aurEff)
            {
                if(Unit* caster = GetCaster())
                {
                    if (Player* player = caster->ToPlayer())
                    {   
                        // Berserk
                        if(player->HasTalent(50334, player->GetActiveSpec()))
                        {
                            if(roll_chance_i(50))
                            {
                                player->RemoveSpellCooldown(33878, true);
                                player->CastSpell(player, 93622, true);
                            }
                        }
                    }
                }
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_dru_lacerate_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_dru_lacerate_AuraScript();
        }
};

class spell_dru_lunar_shower : public SpellScriptLoader
{
    public:
        spell_dru_lunar_shower() : SpellScriptLoader("spell_dru_lunar_shower") { }

        class spell_dru_lunar_shower_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_lunar_shower_SpellScript);

            int32 energizeAmount;

            bool Load()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return false;

                if (GetCaster()->ToPlayer()->getClass() != CLASS_DRUID)
                    return false;

                energizeAmount = 0;

                return true;
            }

            void HandleEnergize(SpellEffIndex effIndex)
            {
                Player* caster = GetCaster()->ToPlayer();

                // No boomy, no deal.
                if (caster->GetPrimaryTalentTree(caster->GetActiveSpec()) != TALENT_TREE_DRUID_BALANCE)
                    return;

                switch (GetSpellInfo()->Id)
                {
                    case 8921:
                    {
                        if (caster->HasAura(81006) || caster->HasAura(81191) || caster->HasAura(81192))
                        {
                            // Lunar Shower
                            energizeAmount = 8;
                            // If we are set to fill the solar side or we've just logged in with 0 power..
                            if ((!caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER) && caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER))
                                || caster->GetPower(POWER_ECLIPSE) == 0)
                            {
                                caster->CastCustomSpell(caster, SPELL_DRUID_ECLIPSE_GENERAL_ENERGIZE, &energizeAmount, 0, 0, true);
                                // If the energize was due to 0 power, cast the eclipse marker aura
                                if (!caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER))
                                    caster->CastSpell(caster, SPELL_DRUID_SOLAR_ECLIPSE_MARKER, true);
                            }
                            // The energizing effect brought us out of the lunar eclipse, remove the aura
                            if (caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE) && caster->GetPower(POWER_ECLIPSE) >= 0)
                                caster->RemoveAura(SPELL_DRUID_LUNAR_ECLIPSE);
                        }
                        break;
                    }
                    case 93402:
                    {
                        // Lunar Shower
                        if (caster->HasAura(81006) || caster->HasAura(81191) || caster->HasAura(81192)) 
                        {
                            energizeAmount = -8;
                        // If we are set to fill the lunar side or we've just logged in with 0 power..
                        if ((!caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE_MARKER) && caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER))
                            || caster->GetPower(POWER_ECLIPSE) == 0)
                        {
                            caster->CastCustomSpell(caster, SPELL_DRUID_ECLIPSE_GENERAL_ENERGIZE, &energizeAmount, 0, 0, true);
                            // If the energize was due to 0 power, cast the eclipse marker aura
                            if (!caster->HasAura(SPELL_DRUID_LUNAR_ECLIPSE_MARKER))
                                caster->CastSpell(caster, SPELL_DRUID_LUNAR_ECLIPSE_MARKER, true);
                        }
                        // The energizing effect brought us out of the solar eclipse, remove the aura
                        if (caster->HasAura(SPELL_DRUID_SOLAR_ECLIPSE) && caster->GetPower(POWER_ECLIPSE) <= 0)
                            caster->RemoveAurasDueToSpell(SPELL_DRUID_SOLAR_ECLIPSE);
                        }
                        break;
                    }
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_dru_lunar_shower_SpellScript::HandleEnergize, EFFECT_1, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_lunar_shower_SpellScript;
        }
};

class spell_dru_survival_instincts : public SpellScriptLoader
{
    public:
        spell_dru_survival_instincts() : SpellScriptLoader("spell_dru_survival_instincts") { }

        class spell_dru_survival_instincts_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_survival_instincts_SpellScript);

            SpellCastResult CheckCast()
            {
                if (Unit* caster = GetCaster())
                {
                    if (!caster->IsInFeralForm())
                    {
                        SetCustomCastResultMessage(SPELL_CUSTOM_ERROR_MUST_BE_IN_FERAL_FORM);
                        return SPELL_FAILED_CUSTOM_ERROR;
                    }
                }

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dru_survival_instincts_SpellScript::CheckCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_survival_instincts_SpellScript;
        }
};

class spell_dru_skull_bash : public SpellScriptLoader
{
    public:
        spell_dru_skull_bash() : SpellScriptLoader("spell_dru_skull_bash") { }

        class spell_dru_skull_bash_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dru_skull_bash_SpellScript);

            SpellCastResult CheckCast()
            {
                if (Unit* caster = GetCaster())
                {
                    if (caster->HasUnitState(UNIT_STATE_ROOT))
                    {
                        SetCustomCastResultMessage(SPELL_CUSTOM_ERROR_CANT_DO_WHILE_ROOTED);
                        return SPELL_FAILED_CUSTOM_ERROR;
                    }
                }

                return SPELL_CAST_OK;
            }

            void Register()
            {
                OnCheckCast += SpellCheckCastFn(spell_dru_skull_bash_SpellScript::CheckCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dru_skull_bash_SpellScript;
        }
};

class spell_dru_regrowth : public SpellScriptLoader
{
public:
    spell_dru_regrowth() : SpellScriptLoader("spell_dru_regrowth") { }
    
    class spell_dru_regrowth_SpellScript: public SpellScript 
    {
        PrepareSpellScript(spell_dru_regrowth_SpellScript);

        void BeforeEffect(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!target || !caster)
                return;

            if (Aura* aur = target->GetAura(SPELL_DRUID_LIFEBLOOM_HOT))
                if(AuraEffect* aurEff = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 2251, EFFECT_1))
                    if (roll_chance_i(aurEff->GetAmount()))
                        aur->RefreshDuration();
        }

        void Register() 
        {
            OnEffectHitTarget += SpellEffectFn(spell_dru_regrowth_SpellScript::BeforeEffect, EFFECT_0, SPELL_EFFECT_HEAL);
        }
    };

    class spell_dru_regrowth_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_dru_regrowth_AuraScript);

        void OnPeriodic(AuraEffect const* aurEff)
        {
            // Glyph of Regrowth
            if(Unit* caster = GetCaster())
                if(Unit* target = GetTarget())
                    if(AuraEffect *aurGlyph = caster->GetDummyAuraEffect(SPELLFAMILY_DRUID, 197, EFFECT_0))
                        if(target->HealthBelowPct(aurGlyph->GetAmount()))
                            aurEff->GetBase()->RefreshDuration();
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_dru_regrowth_AuraScript::OnPeriodic, EFFECT_1, SPELL_AURA_PERIODIC_HEAL);
        }
    };

    SpellScript* GetSpellScript() const 
    {
        return new spell_dru_regrowth_SpellScript();
    }

    AuraScript* GetAuraScript() const
    {
        return new spell_dru_regrowth_AuraScript();
    }
};

void AddSC_druid_spell_scripts()
{
    new spell_dru_moonkin_form();
    new spell_dru_wild_mushroom();
    new spell_dru_wild_mushroom_detonate();
    new spell_dru_istant_rejuvenation();
    new spell_dru_rejuvenation();
    new spell_dru_efflorescence();
    new spell_dru_empowered_touch();
    new spell_dru_dash();
    new spell_dru_eclipse_energize();
    new spell_dru_enrage();
    new spell_dru_glyph_of_starfire();
    new spell_dru_idol_lifebloom();
    new spell_dru_insect_swarm();
    new spell_dru_lifebloom();
    new spell_dru_living_seed();
    new spell_dru_living_seed_proc();
    new spell_dru_owlkin_frenzy();
    new spell_dru_predatory_strikes();
    new spell_dru_primal_tenacity();
    new spell_dru_rip();
    new spell_dru_savage_defense();
    new spell_dru_savage_roar();
    new spell_dru_starfall_aoe();
    new spell_dru_starfall_dummy();
    new spell_dru_swift_flight_passive();
    new spell_dru_tiger_s_fury();
    new spell_dru_typhoon();
    new spell_dru_t10_restoration_4p_bonus();
    new spell_dru_ferocious_bite();
    new spell_dru_eclipse();
    new spell_dru_harmony_periodic();
    new spell_dru_harmony();
    new spell_dru_feral_swiftness();
    new spell_dru_ravage();
    new spell_dru_feral_charge();
    new spell_dru_pulverize();
    new spell_dru_berserk();
    new spell_dru_lacerate();
    new spell_dru_lunar_shower();
    new spell_dru_survival_instincts();
    new spell_dru_skull_bash();
    new spell_dru_regrowth();
}
