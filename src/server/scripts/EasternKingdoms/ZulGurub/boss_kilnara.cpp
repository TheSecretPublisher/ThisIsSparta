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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "zulgurub.h"

enum eSpells
{
};

enum eEvents
{
    EVENT_WAVE_OF_AGONY         = 1,
    EVENT_RETURN_TO_FIGHT       = 2,
    EVENT_TEARS_OF_BLOOD        = 3,
    EVENT_WAIL_OF_SORROW        = 4,
    EVENT_SHADOW_BOLT           = 5,
    EVENT_LASH_OF_ANGUISH       = 6,
    EVENT_MIGHT_OF_BETHEKK      = 7,
    EVENT_PRIMAL_BLESSING       = 8,
    EVENT_PRIMAL_AWAKENING      = 9,
    EVENT_CAMOUFLAGE            = 10,
    EVENT_CAMOUFLAGE_HUNTING    = 11,
    EVENT_CAMOUFLAGE_REMOVE     = 12,
    EVENT_RAVAGE                = 13,
    EVENT_VENGEFUL_SMASH        = 14,
    EVENT_CHECK_ROOM_POSITION   = 15,

    EVENT_GAPING_WOUND          = 1,
    EVENT_AWAKE                 = 2,
};

enum eTexts
{
    SAY_AGGRO                   = 0,
    SAY_WAVE_OF_AGONY           = 1,
    SAY_TRANSFROM_1             = 2,
    SAY_TRANSFROM_2             = 3,
    SAY_DEATH                   = 4,
    SAY_PLAYER_KILL             = 5,
    SAY_PLAYER_KILL_FERAL       = 6,
};

enum eActions
{
    ACTION_WAVE_OF_AGONY        = 1,
};

const Position CaveInSP[13]=
{
    {-11531.5f, -1605.48f, 44.4849f, 0.0f},
    {-11538.2f, -1645.08f, 44.4849f, 0.0f},
    {-11508.8f, -1604.29f, 44.4849f, 0.0f},
    {-11495.3f, -1621.67f, 44.4849f, 0.0f},
    {-11560.4f, -1627.20f, 44.4849f, 0.0f},
    {-11539.6f, -1635.53f, 44.4849f, 0.0f},
    {-11510.0f, -1619.33f, 44.4849f, 0.0f},
    {-11529.0f, -1626.86f, 44.4849f, 0.0f},
    {-11502.0f, -1632.88f, 44.4849f, 0.0f},
    {-11491.3f, -1634.09f, 44.4849f, 0.0f},
    {-11519.9f, -1640.14f, 44.4849f, 0.0f},
    {-11528.5f, -1648.30f, 44.4849f, 0.0f},
    {-11539.6f, -1617.73f, 44.4849f, 0.0f},
};

const Position PrideofBethekkSP[16]=
{
    {-11519.2f, -1605.37f, 44.4849f, 3.56047f},
    {-11518.1f, -1651.48f, 44.4849f, 2.26893f},
    {-11505.6f, -1607.56f, 44.4849f, 2.26893f},
    {-11521.8f, -1651.58f, 44.4849f, 0.97738f},
    {-11504.3f, -1645.56f, 44.4849f, 4.66003f},
    {-11517.2f, -1646.82f, 44.4849f, 3.87463f},
    {-11504.6f, -1603.33f, 44.4849f, 3.87463f},
    {-11506.6f, -1651.04f, 44.4849f, 1.60570f},
    {-11507.0f, -1644.55f, 44.4849f, 4.78220f},
    {-11519.7f, -1609.00f, 44.4849f, 2.26893f},
    {-11523.2f, -1605.96f, 44.4849f, 5.41052f},
    {-11523.2f, -1609.31f, 44.4849f, 0.97738f},
    {-11504.1f, -1650.26f, 44.4849f, 2.26893f},
    {-11520.6f, -1646.00f, 44.4849f, 4.95674f},
    {-11508.3f, -1607.37f, 44.4849f, 0.97738f},
    {-11508.7f, -1603.38f, 44.4849f, 5.41052f},
};

const float RoomCenter[2] = {-11518.8f, -1627.16f};

class boss_kilnara : public CreatureScript
{
    public:
        boss_kilnara() : CreatureScript("boss_kilnara") { }

    private:
        struct boss_kilnaraAI : public BossAI
        {
            boss_kilnaraAI(Creature* creature) : BossAI(creature, DATA_KILNARA) { }

            uint64 WaveofAgonyTargetGUID;
            uint64 CamouflageTargetGUID;
            bool MightofBethekk;

            void InitializeAI()
            {
                Reset();

                if (me->isAlive())
                    JustReachedHome();
            }

            void Reset()
            {
                _Reset();
                me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 43219);
                me->SetReactState(REACT_AGGRESSIVE);
                WaveofAgonyTargetGUID = 0;
                CamouflageTargetGUID = 0;
                MightofBethekk = false;
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }

            void JustReachedHome()
            {
                me->CastSpell(me, 97428, false);
                me->CastSpell(me, 97459, false);

                for (int i = 0; i < 16; ++i)
                    me->SummonCreature(52061, PrideofBethekkSP[i]);
            }

            void JustSummoned(Creature* summon)
            {
                switch (summon->GetEntry())
                {
                    case 52160:
                        me->StopMoving();
                        me->SetFacingTo(me->GetAngle(summon));
                        me->CastSpell(summon, 96457, false);
                        WaveofAgonyTargetGUID = summon->GetGUID();
                        break;
                    case 52147:
                        summon->CastSpell(summon, 96532, false);
                        summon->DespawnOrUnsummon(5000);
                        break;
                    case 52387:
                        summon->CastSpell(summon, 96935, false);
                        return;
                }

                summons.Summon(summon);
            }

            void DoAction(int32 action)
            {
                if (action == ACTION_WAVE_OF_AGONY)
                    if (Creature* target = ObjectAccessor::GetCreature(*me, WaveofAgonyTargetGUID))
                    {
                        WaveofAgonyTargetGUID = 0;
                        me->CastSpell(target, 96542, false);
                        me->CastSpell((Unit*)NULL, 96465, false);
                    }
            }

            void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
            {
                if (!MightofBethekk && me->GetHealthPct() <= 50.0f)
                {
                    MightofBethekk = true;
                    events.Reset();
                    events.ScheduleEvent(EVENT_CHECK_ROOM_POSITION, 1000);
                    events.ScheduleEvent(EVENT_MIGHT_OF_BETHEKK, 250);
                }
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();
                Talk(SAY_AGGRO);
                events.ScheduleEvent(EVENT_TEARS_OF_BLOOD, urand(5000, 10000));
                events.ScheduleEvent(EVENT_SHADOW_BOLT, urand(3000, 7000));
                events.ScheduleEvent(EVENT_LASH_OF_ANGUISH, urand(5000, 15000));
                events.ScheduleEvent(EVENT_CHECK_ROOM_POSITION, 1000);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
            }

            void KilledUnit(Unit* victim)
            {
                if (victim->GetTypeId() == TYPEID_PLAYER)
                    Talk(MightofBethekk ? SAY_PLAYER_KILL_FERAL : SAY_PLAYER_KILL);
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();
                Talk(SAY_DEATH);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_CHECK_ROOM_POSITION:
                            {
                                if (me->GetExactDist2dSq(RoomCenter[0], RoomCenter[1]) > 1500.0f)
                                {
                                    ScriptedAI::EnterEvadeMode();
                                    return;
                                }

                                events.ScheduleEvent(EVENT_CHECK_ROOM_POSITION, 1000);
                            }
                            break;
                        case EVENT_WAVE_OF_AGONY:
                            Talk(SAY_WAVE_OF_AGONY);
                            me->CastSpell((Unit*)NULL, 98270, false);
                            me->SetReactState(REACT_PASSIVE);
                            me->AttackStop();
                            events.ScheduleEvent(EVENT_RETURN_TO_FIGHT, 5000);
                            events.ScheduleEvent(EVENT_TEARS_OF_BLOOD, urand(15000, 25000));
                            break;
                        case EVENT_RETURN_TO_FIGHT:
                            me->SetReactState(REACT_AGGRESSIVE);
                            break;
                        case EVENT_TEARS_OF_BLOOD:
                            me->CastSpell(me, 96438, false);
                            events.ScheduleEvent(EVENT_WAIL_OF_SORROW, 9000);
                            break;
                        case EVENT_WAIL_OF_SORROW:
                            me->CastSpell((Unit*)NULL, 96948, false);
                            events.ScheduleEvent(EVENT_WAVE_OF_AGONY, urand(10000, 20000));
                            break;
                        case EVENT_SHADOW_BOLT:
                            me->CastSpell(me->getVictim(), 96956, false);
                            events.ScheduleEvent(EVENT_SHADOW_BOLT, urand(3000, 7000));
                            break;
                        case EVENT_LASH_OF_ANGUISH:
                            {
                                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 50.0f, true, -96958))
                                    me->CastSpell(target, 96958, false);

                                events.ScheduleEvent(EVENT_LASH_OF_ANGUISH, urand(5000, 15000));
                            }
                            break;
                        case EVENT_MIGHT_OF_BETHEKK:
                            {
                                for (int i = 0; i < 13; ++i)
                                    me->SummonCreature(52387, CaveInSP[i], TEMPSUMMON_TIMED_DESPAWN, 6000);

                                Talk(SAY_TRANSFROM_1);
                                me->SetReactState(REACT_AGGRESSIVE);
                                me->CastSpell((Unit*)NULL, 97380, false);
                                events.ScheduleEvent(EVENT_PRIMAL_BLESSING, 6000);
                            }
                            break;
                        case EVENT_PRIMAL_BLESSING:
                            me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                            me->CastSpell(me, 96559, false);
                            events.ScheduleEvent(EVENT_PRIMAL_AWAKENING, 2000);
                            break;
                        case EVENT_PRIMAL_AWAKENING:
                            Talk(SAY_TRANSFROM_2);
                            me->CastSpell(me, 96896, false);
                            me->CastSpell((Unit*)NULL, 96530, false);
                            events.ScheduleEvent(EVENT_CAMOUFLAGE, urand(15000, 30000));
                            events.ScheduleEvent(EVENT_RAVAGE, urand(5000, 10000));
                            events.ScheduleEvent(EVENT_VENGEFUL_SMASH, urand(10000, 20000));
                            break;
                        case EVENT_CAMOUFLAGE:
                            {
                                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 50.0f, true))
                                    CamouflageTargetGUID = target->GetGUID();

                                me->CastSpell(me, 96594, false);
                                events.Reset();
                                events.ScheduleEvent(EVENT_CHECK_ROOM_POSITION, 1000);
                                events.ScheduleEvent(EVENT_CAMOUFLAGE_HUNTING, 1500);
                                events.ScheduleEvent(EVENT_CAMOUFLAGE_REMOVE, 24000);
                            }
                            break;
                        case EVENT_CAMOUFLAGE_HUNTING:
                            {
                                if (Unit* target = ObjectAccessor::GetUnit(*me, CamouflageTargetGUID))
                                {
                                    if (me->GetDistance2d(target) <= 1.5f && target->isInBack(me))
                                    {
                                        me->RemoveAura(96594);
                                        me->CastSpell(target, 96592, false);
                                        events.RescheduleEvent(EVENT_CAMOUFLAGE_REMOVE, 500);
                                        return;
                                    }
                                    else
                                    {
                                        float x, y, z;
                                        target->GetNearPoint2D(x, y, 1.0f, target->GetOrientation() - M_PI);
                                        z = target->GetPositionZ();
                                        Movement::MoveSplineInit init(me);
                                        init.MoveTo(x, y, z, false);
                                        init.Launch();
                                    }

                                    events.ScheduleEvent(EVENT_CAMOUFLAGE_HUNTING, 250);
                                }
                            }
                            break;
                        case EVENT_CAMOUFLAGE_REMOVE:
                            events.Reset();
                            events.ScheduleEvent(EVENT_CHECK_ROOM_POSITION, 1000);
                            events.ScheduleEvent(EVENT_CAMOUFLAGE, urand(15000, 30000));
                            events.ScheduleEvent(EVENT_RAVAGE, urand(5000, 10000));
                            events.ScheduleEvent(EVENT_VENGEFUL_SMASH, urand(10000, 20000));
                            break;
                        case EVENT_RAVAGE:
                            me->CastSpell(me->getVictim(), 96592, false);
                            events.ScheduleEvent(EVENT_RAVAGE, urand(10000, 20000));
                            break;
                        case EVENT_VENGEFUL_SMASH:
                            me->CastSpell((Unit*)NULL, 96954, false);
                            events.ScheduleEvent(EVENT_RAVAGE, urand(20000, 40000));
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return GetZulGurubAI<boss_kilnaraAI>(creature);
        }
};

class npc_pride_of_bethekk : public CreatureScript
{
    public:
        npc_pride_of_bethekk() : CreatureScript("npc_pride_of_bethekk") { }

    private:
        struct npc_pride_of_bethekkAI : public ScriptedAI
        {
            npc_pride_of_bethekkAI(Creature* creature) : ScriptedAI(creature) { }

            bool Sleep;
            EventMap events;

            void InitializeAI()
            {
                Reset();
            }

            void Reset()
            {
                Sleep = true;
                me->SetReactState(REACT_PASSIVE);
            }

            void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
            {
                if (Sleep)
                {
                    Sleep = false;
                    events.ScheduleEvent(EVENT_AWAKE, 300);
                }
            }

            void SpellHit(Unit* /*caster*/, SpellInfo const* spell)
            {
                if (Sleep && spell->Id == 96530)
                {
                    Sleep = false;
                    me->SetInCombatWithZone();
                    events.ScheduleEvent(EVENT_AWAKE, 3000);
                }
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_AWAKE:
                            me->RemoveAura(96446);
                            me->SetReactState(REACT_AGGRESSIVE);
                            events.ScheduleEvent(EVENT_GAPING_WOUND, urand(3000, 7000));
                            break;
                        case EVENT_GAPING_WOUND:
                            {
                                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 50.0f, true))
                                    me->CastSpell(target, 97355, false, NULL, NULL, me->ToTempSummon()->GetSummoner()->GetGUID());

                                events.ScheduleEvent(EVENT_GAPING_WOUND, urand(5000, 15000));
                            }
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return GetZulGurubAI<npc_pride_of_bethekkAI>(creature);
        }
};

class spell_wave_of_agony_selector : public SpellScriptLoader
{
    public:
        spell_wave_of_agony_selector() : SpellScriptLoader("spell_wave_of_agony_selector") { }

    private:
        class spell_wave_of_agony_selector_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_wave_of_agony_selector_SpellScript)

            void TriggerSpell(SpellEffIndex effIndex)
            {
                GetCaster()->CastSpell(GetHitUnit(), GetSpellInfo()->Effects[effIndex].BasePoints, true);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_wave_of_agony_selector_SpellScript::TriggerSpell, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript *GetSpellScript() const
        {
            return new spell_wave_of_agony_selector_SpellScript();
        }
};

class spell_wave_of_agony_periodic : public SpellScriptLoader
{
    public:
        spell_wave_of_agony_periodic() : SpellScriptLoader("spell_wave_of_agony_periodic") { }

    private:
        class spell_wave_of_agony_periodic_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_wave_of_agony_periodic_AuraScript)

            void HandlePeriodicTick(AuraEffect const* /*aurEff*/)
            {
                if (Creature* caster = GetCaster()->ToCreature())
                    caster->AI()->DoAction(ACTION_WAVE_OF_AGONY);
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_wave_of_agony_periodic_AuraScript::HandlePeriodicTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_wave_of_agony_periodic_AuraScript();
        }
};

class spell_tears_of_blood : public SpellScriptLoader
{
    public:
        spell_tears_of_blood() : SpellScriptLoader("spell_tears_of_blood") { }

    private:
        class spell_tears_of_blood_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_tears_of_blood_SpellScript)

            void Trigger(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);
                GetCaster()->CastSpell(GetCaster(), GetSpellInfo()->Effects[effIndex].TriggerSpell, false);
            }

            void Register()
            {
                OnEffectLaunch += SpellEffectFn(spell_tears_of_blood_SpellScript::Trigger, EFFECT_1, SPELL_EFFECT_TRIGGER_SPELL);
            }
        };

        SpellScript *GetSpellScript() const
        {
            return new spell_tears_of_blood_SpellScript();
        }
};

void AddSC_boss_kilnara()
{
    new boss_kilnara();
    new npc_pride_of_bethekk();

    new spell_wave_of_agony_selector();
    new spell_wave_of_agony_periodic();
    new spell_tears_of_blood();
}
