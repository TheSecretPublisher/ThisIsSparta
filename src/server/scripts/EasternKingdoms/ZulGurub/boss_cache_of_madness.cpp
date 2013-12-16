/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
#include "SpellAuraEffects.h"
#include "zulgurub.h"

enum Spells
{
};

enum Events
{
    // npc_ritual_tiki_mask
    EVENT_MOVE_AROUND_PLAYER            = 1,
    EVENT_MOVE_CIRCLE                   = 2,
    EVENT_MOVE_CIRCLE_GO                = 3,
    EVENT_EVADE                         = 4,
    EVENT_TIKI_BURN                     = 5,
    // npc_ancient_artifact
    ACTION_START_FLY                    = 1,
    EVENT_MOVE_AROUND                   = 2,
    EVENT_MOVE_AROUND_CIRCLE            = 3,
    EVENT_SUMMON_BOSS_VISUAL            = 4,
    EVENT_SHATTER_ARTIFACT              = 5,
    // boss_renataki
    EVENT_DEADLY_POISON                 = 1,
    EVENT_VANISH                        = 2,
    EVENT_AMBUSH                        = 3,
    EVENT_RETURN_TO_FIGHT               = 4,
    EVENT_THOUSAND_BLADES               = 5,
    EVENT_CHARGE_TARGET_DEST            = 6,
    EVENT_REMOVE_THOUSAND_BLADES        = 7,
};

enum Yells
{
    // boss_renataki
    YELL_AMBUSH                         = 0,
    YELL_THOUSAND_BLADES                = 1,
    YELL_AGGRO                          = 2,
    YELL_PLAYER_KILL                    = 3,
    YELL_DIED                           = 4,
    EMOTE_FRENZY                        = 5,
};

enum Misc
{
    POINT_MOVE_CIRCLE                   = 1,
};

const float TikiCenter[3] = {-11877.9f, -1874.97f, 63.5755f};

class npc_ritual_tiki_mask : public CreatureScript
{
    public:
        npc_ritual_tiki_mask() : CreatureScript("npc_ritual_tiki_mask") { }

    private:
        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_ritual_tiki_maskAI(creature);
        }

        struct npc_ritual_tiki_maskAI : public ScriptedAI
        {
            npc_ritual_tiki_maskAI(Creature* creature) : ScriptedAI(creature), instance(me->GetInstanceScript()) {}

            InstanceScript* instance;
            EventMap events;
            bool MoveCircle;

            void InitializeAI()
            {
                ASSERT(instance);

                if (me->GetPositionZ() >= 65.0f)
                    MoveCircle = true;
                else
                    MoveCircle = false;

                Reset();
            }

            void Reset()
            {
                events.Reset();

                if (MoveCircle)
                    events.ScheduleEvent(EVENT_MOVE_CIRCLE, 100);
            }

            void EnterEvadeMode()
            {
                instance->SetData(DATA_TIKI_MASK_ID, NOT_STARTED);
                me->SetControlled(false, UNIT_STATE_ROOT);
                ScriptedAI::EnterEvadeMode();
                me->ClearUnitState(UNIT_STATE_EVADE);
            }

            void EnterCombat(Unit* /*who*/)
            {
                me->SetControlled(true, UNIT_STATE_ROOT);
                me->StopMoving();
                events.Reset();
                events.ScheduleEvent(EVENT_MOVE_AROUND_PLAYER, 200);
                events.ScheduleEvent(EVENT_TIKI_BURN, 1000 * instance->GetData(DATA_TIKI_MASK_ID));
                instance->SetData(DATA_TIKI_MASK_ID, IN_PROGRESS);
            }

            void FillCirclePath(Position const& centerPos, float radius, float z, Movement::PointsArray& path, bool clockwise, bool randDist)
            {
                float step = clockwise ? -M_PI / 8.0f : M_PI / 8.0f;
                float angle = centerPos.GetAngle(me->GetPositionX(), me->GetPositionY());

                for (uint8 i = 0; i < 16; angle += step, ++i)
                {
                    G3D::Vector3 point;
                    float _dist = randDist ? frand(-3.0f, 3.0f) : 0.0f;
                    point.x = centerPos.GetPositionX() + (radius + _dist) * cosf(angle);
                    point.y = centerPos.GetPositionY() + (radius + _dist) * sinf(angle);
                    point.z = z;
                    path.push_back(point);
                }
            }

            void UpdateAI(uint32 diff)
            {
                events.Update(diff);

                if (!UpdateVictim())
                {
                    if (uint32 eventId = events.ExecuteEvent())
                    {
                        switch (eventId)
                        {
                            case EVENT_MOVE_CIRCLE:
                                {
                                    if (me->isMoving())
                                        me->StopMoving();

                                    float x, y, z, angle = frand(-M_PI, M_PI), dist = frand(5.0f, 15.0f);
                                    x = TikiCenter[0] + dist * cos(angle);
                                    y = TikiCenter[1] + dist * sin(angle);
                                    z = TikiCenter[2] + frand(5.0f, 10.0f);
                                    me->GetMotionMaster()->MovePoint(POINT_MOVE_CIRCLE, x, y, z);
                                    events.ScheduleEvent(EVENT_MOVE_CIRCLE_GO, 6000);
                                    events.ScheduleEvent(EVENT_MOVE_CIRCLE, urand(60000, 360000));
                                }
                                break;
                            case EVENT_MOVE_CIRCLE_GO:
                                {
                                    Movement::MoveSplineInit init(me);
                                    FillCirclePath(*me, 7.0f, me->GetPositionZ(), init.Path(), bool(urand(0, 1)), false);
                                    //TODO: must be flag enter cycle
                                    init.SetCyclic();
                                    init.SetFly();
                                    init.SetSmooth();
                                    init.SetVelocity(5.0f);
                                    init.Launch();
                                }
                                break;
                        }
                    }

                    return;
                }

                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_MOVE_AROUND_PLAYER:
                            {
                                if (Unit* target = me->getVictim())
                                {
                                    Movement::MoveSplineInit init(me);
                                    FillCirclePath(*target, 7.0f, target->GetPositionZ() + frand(3.0f, 7.0f), init.Path(), bool(urand(0, 1)), true);
                                    init.SetFly();
                                    init.SetSmooth();
                                    init.SetVelocity(10.0f);
                                    init.Launch();
                                }

                                events.ScheduleEvent(EVENT_MOVE_AROUND_PLAYER, urand(2000, 5000));
                            }
                            break;
                        case EVENT_TIKI_BURN:
                            me->CastSpell(me, 96861, true);
                            break;
                    }
                }
            }
        };
};

const float ArtifactWP[25][3]=
{
    {-11883.58f, -1884.578f, 65.00301f},
    {-11885.81f, -1880.564f, 65.00301f},
    {-11884.55f, -1876.148f, 65.00301f},
    {-11880.54f, -1873.918f, 65.00301f},
    {-11876.12f, -1875.179f, 65.00301f},
    {-11873.89f, -1879.193f, 65.00301f},
    {-11875.15f, -1883.609f, 65.00301f},
    {-11879.17f, -1885.839f, 65.00301f},

    {-11885.75f, -1874.650f, 65.00301f},
    {-11879.23f, -1872.431f, 65.00301f},
    {-11873.05f, -1875.474f, 65.00301f},
    {-11870.83f, -1881.995f, 65.00301f},
    {-11873.88f, -1888.175f, 65.00301f},
    {-11880.40f, -1890.394f, 65.00301f},
    {-11886.58f, -1887.351f, 65.00301f},
    {-11888.80f, -1880.830f, 65.00301f},

    {-11870.02f, -1877.223f, 65.00301f},
    {-11870.71f, -1886.381f, 65.00301f},
    {-11877.67f, -1892.373f, 65.00301f},
    {-11886.83f, -1891.687f, 65.00301f},
    {-11892.82f, -1884.725f, 65.00301f},
    {-11892.14f, -1875.567f, 65.00301f},
    {-11885.17f, -1869.575f, 65.00301f},
    {-11876.02f, -1870.261f, 65.00301f},

    {-11880.74f, -1881.625f, 65.00301f},
};

const Position PortalSP = {-11880.47f, -1880.661f, 64.04917f, 1.553343f};

class npc_ancient_artifact : public CreatureScript
{
    public:
        npc_ancient_artifact() : CreatureScript("npc_ancient_artifact") { }

    private:
        bool OnGossipHello(Player* player, Creature* creature)
        {
            if (player->GetMaxSkillValue(SKILL_ARCHAEOLOGY) >= 225)
            {
                creature->AI()->DoAction(ACTION_START_FLY);
                creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            }

            return true;
        }

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_ancient_artifactAI (creature);
        }

        struct npc_ancient_artifactAI : public ScriptedAI
        {
            npc_ancient_artifactAI(Creature* creature) : ScriptedAI(creature) { }

            EventMap events;
            uint8 pathId;
            bool active;

            void InitializeAI()
            {
                pathId = 0;
                active = false;
                me->SetSpeed(MOVE_FLIGHT, 0.25f);
            }

            void DoAction(int32 action)
            {
                if (action == ACTION_START_FLY && !active)
                {
                    active = true;
                    me->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ() + 2.0f);

                    if (InstanceScript* instance = me->GetInstanceScript())
                    {
                        events.ScheduleEvent(EVENT_MOVE_AROUND, 2000);
                        pathId = instance->GetData(DATA_CACHE_OF_MADNESS_ARTIFACT);
                        instance->SetData(DATA_CACHE_OF_MADNESS_ARTIFACT, IN_PROGRESS);
                    }
                }
            }

            void MovementInform(uint32 type, uint32 id)
            {
                if (type == POINT_MOTION_TYPE && id == POINT_MOVE_CIRCLE)
                    if (pathId < 3)
                        events.ScheduleEvent(pathId < 3 ? EVENT_MOVE_AROUND_CIRCLE : EVENT_SUMMON_BOSS_VISUAL, 250);
            }

            void UpdateAI(uint32 diff)
            {
                events.Update(diff);

                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_MOVE_AROUND:
                            {
                                me->CastSpell(me, 97040, false);
                                me->GetMotionMaster()->MovePoint(POINT_MOVE_CIRCLE, ArtifactWP[pathId * 8][0], ArtifactWP[pathId * 8][1], ArtifactWP[pathId * 8][2]);

                                if (pathId == 3)
                                    if (Creature* bunny = me->SummonCreature(45979, PortalSP))
                                    {
                                        bunny->CastSpell(bunny, 97081, false);
                                        bunny->DespawnOrUnsummon(30000);
                                        events.ScheduleEvent(EVENT_SHATTER_ARTIFACT, 12000);
                                    }
                            }
                            break;
                        case EVENT_MOVE_AROUND_CIRCLE:
                            {
                                Movement::MoveSplineInit init(me);

                                for (uint8 i = pathId * 8; i < pathId * 8 + 8; ++i)
                                {
                                    G3D::Vector3 vertice(ArtifactWP[i][0], ArtifactWP[i][1], ArtifactWP[i][2]);
                                    init.Path().push_back(vertice);
                                }

                                // TODO: here must be flag Enter_Cycle, and npc should go into the room center before start move around circle
                                init.SetFly();
                                init.SetSmooth();
                                init.SetCyclic();
                                init.Launch();
                            }
                            break;
                        case EVENT_SHATTER_ARTIFACT:
                            {
                                const uint32 ArtifactEntry[4]=
                                {
                                    52452,
                                    52454,
                                    52450,
                                    52446,
                                };

                                for (int i = 0; i < 4; ++i)
                                    if (me->GetEntry() != ArtifactEntry[i])
                                        if (Creature* artifact = me->FindNearestCreature(ArtifactEntry[i], 30.0f))
                                        {
                                            artifact->CastSpell(artifact, 97065, false);
                                            artifact->StopMoving();
                                            artifact->DespawnOrUnsummon(1000);
                                        }

                                me->CastSpell(me, 97065, false);
                                me->StopMoving();
                                me->DespawnOrUnsummon(1000);
                            }
                            break;
                    }
                }
            }
        };
};

class spell_cursed_portal : public SpellScriptLoader
{
    public:
        spell_cursed_portal() : SpellScriptLoader("spell_cursed_portal") { }

    private:
        class spell_cursed_portalAuraScript : public AuraScript
        {
            PrepareAuraScript(spell_cursed_portalAuraScript)

            void EffectApply(AuraEffect const * aurEff, AuraEffectHandleModes /*mode*/)
            {
                if (InstanceScript* instance = GetTarget()->GetInstanceScript())
                    instance->SetData(DATA_CACHE_OF_MADNESS_ARTIFACT, DONE);

                aurEff->GetBase()->SetDuration(7000);
            }

            void Register()
            {
                OnEffectApply += AuraEffectApplyFn(spell_cursed_portalAuraScript::EffectApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript *GetAuraScript() const
        {
            return new spell_cursed_portalAuraScript();
        }
};

class boss_renataki : public CreatureScript
{
    public:
        boss_renataki() : CreatureScript("boss_renataki") { }

    private:
        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_renatakiAI(creature);
        }

        struct boss_renatakiAI : public BossAI
        {
            boss_renatakiAI(Creature* creature) : BossAI(creature, DATA_CACHE_OF_MADNESS) { }

            bool Frenzy;

            void Reset()
            {
                _Reset();
                me->SetReactState(REACT_AGGRESSIVE);
                Frenzy = false;
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            }

            void DamageTaken(Unit* /*done_by*/, uint32 & /*damage*/)
            {
                if (!Frenzy && me->GetHealthPct() <= 30.0f)
                {
                    Frenzy = true;
                    Talk(EMOTE_FRENZY);
                    me->CastSpell(me, 8269, false);
                }
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();
                Talk(YELL_AGGRO);
                events.ScheduleEvent(EVENT_VANISH, urand(7000, 21000));
                events.ScheduleEvent(EVENT_DEADLY_POISON, urand(3000, 6000));
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
            }

            void KilledUnit(Unit* victim)
            {
                if (victim->GetTypeId() == TYPEID_PLAYER)
                    Talk(YELL_PLAYER_KILL);
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();
                Talk(YELL_DIED);
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
                        case EVENT_VANISH:
                            me->CastSpell(me, 96639, false);
                            me->SetReactState(REACT_PASSIVE);
                            me->AttackStop();
                            events.Reset();
                            events.ScheduleEvent(EVENT_AMBUSH, 2000);
                            break;
                        case EVENT_AMBUSH:
                            {
                                if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST, 0, 50.0f, true))
                                    me->CastSpell(target, 96640, true);

                                me->RemoveAura(96639);
                                Talk(YELL_AMBUSH);
                                events.ScheduleEvent(EVENT_DEADLY_POISON, urand(3000, 6000));
                                events.ScheduleEvent(EVENT_RETURN_TO_FIGHT, 2000);
                                events.ScheduleEvent(EVENT_THOUSAND_BLADES, urand(10000, 20000));
                            }
                            break;
                        case EVENT_RETURN_TO_FIGHT:
                            me->SetReactState(REACT_AGGRESSIVE);
                            break;
                        case EVENT_THOUSAND_BLADES:
                            Talk(YELL_THOUSAND_BLADES);
                            me->CastSpell(me, 96646, false);
                            events.ScheduleEvent(EVENT_CHARGE_TARGET_DEST, urand(1000, 2000));
                            events.ScheduleEvent(EVENT_REMOVE_THOUSAND_BLADES, urand(10000, 15000));
                            break;
                        case EVENT_CHARGE_TARGET_DEST:
                            {
                                if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST, 0, 50.0f, true))
                                    me->CastSpell(target, 72700, true);

                                if (me->HasAura(96646))
                                    events.ScheduleEvent(EVENT_CHARGE_TARGET_DEST, urand(1000, 2000));
                            }
                            break;
                        case EVENT_DEADLY_POISON:
                            me->CastSpell(me->getVictim(), 96648, false);
                            events.ScheduleEvent(EVENT_DEADLY_POISON, urand(3000, 6000));
                            break;
                        case EVENT_REMOVE_THOUSAND_BLADES:
                            me->RemoveAura(96646);
                            events.ScheduleEvent(EVENT_VANISH, urand(10000, 20000));
                            break;
                    }
                }

                DoMeleeAttackIfReady();
                EnterEvadeIfOutOfCombatArea(diff);
            }
        };
};

class spell_thousand_blades_damage : public SpellScriptLoader
{
    public:
        spell_thousand_blades_damage() : SpellScriptLoader("spell_thousand_blades_damage") { }

    private:
        class spell_thousand_blades_damage_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_thousand_blades_damage_SpellScript);

            void CalculateDamage(SpellEffIndex /*effIndex*/)
            {
                float dist = 1.0f - GetCaster()->GetDistance(GetHitUnit()) / 100;
                SetHitDamage(int32(GetHitDamage() * dist));
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_thousand_blades_damage_SpellScript::CalculateDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_thousand_blades_damage_SpellScript();
        }
};

class boss_grilek : public CreatureScript
{
    public:
        boss_grilek() : CreatureScript("boss_grilek") { }

    private:
        struct boss_grilekAI : public BossAI
        {
            boss_grilekAI(Creature* creature) : BossAI(creature, DATA_CACHE_OF_MADNESS)
            {
            }

            void Reset()
            {
            }

            void EnterCombat(Unit* /*who*/)
            {
            }

            void JustDied(Unit* /*killer*/)
            {
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;
                /*
                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        default:
                            break;
                    }
                }
                */

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_grilekAI(creature);
        }
};

class boss_wushoolay : public CreatureScript
{
    public:
        boss_wushoolay() : CreatureScript("boss_wushoolay") { }

    private:
        struct boss_wushoolayAI : public BossAI
        {
            boss_wushoolayAI(Creature* creature) : BossAI(creature, DATA_CACHE_OF_MADNESS)
            {
            }

            void Reset()
            {
            }

            void EnterCombat(Unit* /*who*/)
            {
            }

            void JustDied(Unit* /*killer*/)
            {
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;
                /*
                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        default:
                            break;
                    }
                }
                */

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_wushoolayAI(creature);
        }
};

class boss_hazzarah : public CreatureScript
{
    public:
        boss_hazzarah() : CreatureScript("boss_hazzarah") { }

    private:
        struct boss_hazzarahAI : public BossAI
        {
            boss_hazzarahAI(Creature* creature) : BossAI(creature, DATA_CACHE_OF_MADNESS)
            {
            }

            void Reset()
            {
            }

            void EnterCombat(Unit* /*who*/)
            {
            }

            void JustDied(Unit* /*killer*/)
            {
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;
                /*
                if (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        default:
                            break;
                    }
                }
                */

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_hazzarahAI(creature);
        }
};

void AddSC_boss_grilek()
{
    //new boss_grilek();
    //new boss_wushoolay();
    //new boss_hazzarah();
    new boss_renataki();
    new npc_ritual_tiki_mask();
    new npc_ancient_artifact();

    new spell_cursed_portal();
    new spell_thousand_blades_damage();
}
