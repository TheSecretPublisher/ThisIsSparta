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

/* ScriptData
SDName: boss_echo_of_sylvanas
SD%Complete: 
SDComment:
EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "end_time.h"
#include "SpellInfo.h"

enum Spells
{
    SPELL_SUMMON_GHOUL_N            = 100894,
    SPELL_SUMMON_GHOUL_NE           = 100917,
    SPELL_SUMMON_GHOUL_NW           = 100918,
    SPELL_SUMMON_GHOUL_E            = 100919,
    SPELL_SUMMON_GHOUL_W            = 100920,
    SPELL_SUMMON_GHOUL_S            = 100921,
    SPELL_SUMMON_GHOUL_SE           = 100923,
    SPELL_SUMMON_GHOUL_SW           = 100924,
    SPELL_SUMMON_GHOUL              = 101200,
    SPELL_WRACKING_PAIN_LINK        = 100862,
    SPELL_TELEPORT                  = 101398,
    SPELL_DEATH_GRIP                = 101397,
    SPELL_GHOUL_CIRCLE              = 100867,
    SPELL_CALLING_IMMUNITY          = 100686,
    SPELL_CALLING_OF_THE_HIGHBORNE  = 102581,
    SPELL_CALLING_SHADOWS           = 105766,
    SPELL_JUMP                      = 101528,



};

enum Events
{
    EVENT_TELEPORT = 1,
    EVENT_WRACKING_PAIN_LINK,
    EVENT_DEATH_GRIP,
    EVENT_SUMMON_GHOUL,
    EVENT_CALLING_SHADOWS,
    EVENT_MOVE,
    EVENT_FOLLOW
};

enum Misc
{
    NPC_SYLVANAS = 54123,
    NPC_GHOUL = 54197,
    NPC_RISEN_GHOUL = 54191
};

const float TelePoint [4] = 
{ 
    3845.41f, 911.09f, 56.0422f, 0.4015f 
};

class boss_echo_of_sylvanas : public CreatureScript
{
    public:
        boss_echo_of_sylvanas() : CreatureScript("boss_echo_of_sylvanas") { }

        struct boss_echo_of_sylvanasAI : public BossAI
        {
            boss_echo_of_sylvanasAI(Creature* creature) : BossAI(creature, DATA_SYLVANAS), Summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;
            SummonList Summons;

            void Reset()
            {
                _Reset();
                events.Reset();

                Summons.DespawnAll();

                me->SetReactState(REACT_AGGRESSIVE);
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();
                events.ScheduleEvent(EVENT_TELEPORT, 10000);
                DoZoneInCombat();
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_TELEPORT:
                            
                            me->NearTeleportTo(TelePoint[0], TelePoint[1], TelePoint[2], TelePoint[3]);
                            
                            me->CastSpell(me, SPELL_TELEPORT, false);
                            me->CastSpell(me, SPELL_CALLING_IMMUNITY, false);
                            
                            events.ScheduleEvent(EVENT_DEATH_GRIP, 2000);
                            break;
                        case EVENT_DEATH_GRIP:
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_N, false);
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_NE, false);
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_NW, false);
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_E, false);
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_W, false);
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_S, false);
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_SE, false);
                            me->CastSpell(me, SPELL_SUMMON_GHOUL_SW, false);

                            me->CastSpell(me, SPELL_DEATH_GRIP, false);
                            me->SetReactState(REACT_PASSIVE);
                            break;

                        
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_echo_of_sylvanasAI(creature);
        }
};

class mob_ghoul_summoner : public CreatureScript
{
    public:
        mob_ghoul_summoner() : CreatureScript("mob_ghoul_summoner") { }

        struct mob_ghoul_summonerAI : public ScriptedAI
        {
            mob_ghoul_summonerAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void InitializeAI()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_PASSIVE);
                me->SetTarget(GetClosestCreatureWithEntry(me, NPC_SYLVANAS, 100.0f)->GetGUID());
            }

            void IsSummonedBy(Unit* summoner)
            {

                me->CastSpell(me, SPELL_GHOUL_CIRCLE, false);
                events.ScheduleEvent(EVENT_SUMMON_GHOUL, 1000);
                events.ScheduleEvent(EVENT_CALLING_SHADOWS, 3000);
                events.ScheduleEvent(EVENT_FOLLOW, 6000);
            }

            void UpdateAI(uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_SUMMON_GHOUL:
                            me->CastSpell(me, SPELL_SUMMON_GHOUL, false);
                            break;
                        case EVENT_CALLING_SHADOWS:
                            me->CastSpell(me, SPELL_CALLING_SHADOWS, false);
                            break;
                        case EVENT_FOLLOW:
                            //if(Creature* summon = GetClosestCreatureWithEntry(me, NPC_RISEN_GHOUL, 20.0f))
                                //me->GetMotionMaster()->MoveFollow(summon->ToUnit(), 0.0f, 0.0f);
                            break;


                    }
                }
            }

        
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_ghoul_summonerAI(creature);
        }
};

class mob_risen_ghoul : public CreatureScript
{
    public:
        mob_risen_ghoul() : CreatureScript("mob_risen_ghoul") { }

        struct mob_risen_ghoulAI : public ScriptedAI
        {
            mob_risen_ghoulAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void InitializeAI()
            {
                me->SetReactState(REACT_PASSIVE);
                me->SetTarget(GetClosestCreatureWithEntry(me, NPC_SYLVANAS, 100.0f)->GetGUID());
                me->SetSpeed(MOVE_WALK, 1.0f, false);
                me->SetWalk(true);
            }

            void IsSummonedBy(Unit* summoner)
            {
                events.ScheduleEvent(EVENT_WRACKING_PAIN_LINK, 4000);
            }

            void UpdateAI(uint32 diff)
            {
                /*if (!UpdateVictim())
                    return;*/

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_WRACKING_PAIN_LINK:
                            me->CastSpell(GetClosestCreatureWithEntry(me, NPC_RISEN_GHOUL, 100.0f), SPELL_WRACKING_PAIN_LINK, false);
                            me->GetMotionMaster()->MovePoint(0, TelePoint[0], TelePoint[1], TelePoint[2], TelePoint[3]);
                            break;
                    }
                }
            }

        
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_risen_ghoulAI(creature);
        }
};

/*class GhoulCheck
{
public:
    bool operator()(const WorldObject* target) const
    {
        if (target->GetEntry() != NPC_RISEN_GHOUL)
            return true;

        return false;
    }
};

class spell_wracking_pain_link : public SpellScriptLoader
{
    public:
        spell_wracking_pain_link() : SpellScriptLoader("spell_wracking_pain_link") { }

        class spell_wracking_pain_link_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_wracking_pain_link_SpellScript);
            
            void CountTargets(std::list<WorldObject*>& targets)
            {
                targets.remove_if(GhoulCheck());
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_wracking_pain_link_SpellScript::CountTargets, EFFECT_0,  TARGET_UNIT_SRC_AREA_ALLY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_wracking_pain_link_SpellScript();
        }
};*/

void AddSC_boss_echo_of_sylvanas()
{
    new boss_echo_of_sylvanas();
    new mob_ghoul_summoner();
    new mob_risen_ghoul();
    //new spell_wracking_pain_link();
}