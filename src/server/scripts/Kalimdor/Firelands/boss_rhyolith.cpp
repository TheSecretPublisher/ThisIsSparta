/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2008-2013 Forgotten Lands <http://www.forgottenlands.eu/>
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
##### Script Info #####
Author: Nagash (for now)
Progress: 10%
Website: www.forgottenlands.eu

TODO:
spawn vulcani
distruzione vulcani/spawn crateri
eruzione vulcani/crateri
spawn add piccoli
spawn add grosso
passaggio in fase 2
spell hero

*/


#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "PassiveAI.h"
#include "SpellScript.h"
#include "MoveSplineInit.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "firelands.h"



enum Spells
{
    //needs to be filled
    SPELL_ABILITATE_BALANCE_BAR                 = 98226,
    SPELL_OBSIDIAN_ARMOR                        = 98632,
    SPELL_CONCUSSIVE_STOMP                      = 97282,

    SPELL_VOLCANO_ACTIVE                        = 98264,
};

enum Events
{
    // needs to be filled
    EVENT_UPDATE_PATH                   =1, //every 1 sec
    EVENT_STOMP,
    EVENT_SPAWN_VOLCANO,
};

enum Actions
{// needs to be filled!
    ACTION_STEER_RIGHT                          =1,
    ACTION_STEER_LEFT,
    ACTION_UPDATE_FOOT_PATHING,
    ACTION_CHECK_HEALTH,
    ACTION_LOSE_ARMOR,
};

Position const centerPosition =  {-371.52f, -318.9f, 100.3f, 0.0f};

class boss_rhyolith : public CreatureScript
{
    public:
        boss_rhyolith() : CreatureScript("boss_rhyolith") {}

        struct boss_rhyolithAI : public BossAI
        {
            boss_rhyolithAI(Creature * creature) : BossAI(creature, DATA_RHYOLITH), summons(me), vehicle(creature->GetVehicleKit())
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            SummonList summons;
		    Vehicle* vehicle;
            bool introDone;
            uint32 direction;
            uint32 steertimer;
            uint32 killtimer;
            Creature* leftfoot;
            Creature* rightfoot;
            Aura* obsidian;
            bool moving;
            bool phase1;

            void InitializeAI()
            {
                phase1 = true;
                moving = false;
                introDone = false;
                steertimer = 0;
                leftfoot  = NULL;
                rightfoot = NULL;
                obsidian  = NULL;
            } 

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
                if (summon->GetEntry() == LEFT_FOOT_RHYOLITH || summon->GetEntry() == RIGHT_FOOT_RHYOLITH)
                {
                    summon->SetMaxHealth(me->GetMaxHealth() /2);
                    summon->SetHealth(summon->GetMaxHealth());
                }
                if(me->isInCombat())
                    DoZoneInCombat(summon);
            }

            void EnterCombat(Unit* victim)
            {   
                DoCastAOE(SPELL_ABILITATE_BALANCE_BAR);
                if (instance)
                {
                    instance->DoCastSpellOnPlayers(SPELL_ABILITATE_BALANCE_BAR);
                    instance->SetData(DATA_RHYOLITH_EVENT, IN_PROGRESS);
                }
                direction = 25;
                phase1=true;
                steertimer = 0;
                me->SetReactState(REACT_PASSIVE);
                me->SendMovementWalkMode();
                moving = true;
                me->SetSpeed(MOVE_WALK,   0.5f, true);
                me->SetSpeed(MOVE_RUN,    0.5f, true);
                me->SetWalk(true);
                obsidian = me->AddAura(SPELL_OBSIDIAN_ARMOR, me); 
                if (obsidian)
                    obsidian->SetStackAmount(80);
                DoZoneInCombat(me);
                leftfoot = me->SummonCreature(LEFT_FOOT_RHYOLITH,
                    me->GetPositionX(),
                    me->GetPositionY(),
                    me->GetPositionZ() + 12.0f,
                    0,TEMPSUMMON_MANUAL_DESPAWN);
                if (leftfoot)
                {
                    leftfoot->EnterVehicle(me, 0);
                    leftfoot->ClearUnitState(UNIT_STATE_ONVEHICLE);
                }
                rightfoot = me->SummonCreature(RIGHT_FOOT_RHYOLITH,
                    me->GetPositionX(),
                    me->GetPositionY(),
                    me->GetPositionZ() + 12.0f,
                    0,TEMPSUMMON_MANUAL_DESPAWN);
                if (rightfoot)
                {
                    rightfoot->EnterVehicle(me, 1);
                    rightfoot->ClearUnitState(UNIT_STATE_ONVEHICLE);
                }
                
                events.ScheduleEvent(EVENT_UPDATE_PATH, 2000, 0, 0);
                events.ScheduleEvent(EVENT_STOMP, 2000, 0, 0);
            }

            void Reset()
            {
                instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_ABILITATE_BALANCE_BAR);
                events.Reset();
                if (leftfoot)
                    leftfoot->DespawnOrUnsummon();
                if (rightfoot)
                    rightfoot->DespawnOrUnsummon();
                summons.DespawnAll();
                me->LowerPlayerDamageReq(me->GetMaxHealth());
                killtimer =0;

                if (instance)
                {
                    instance->SetData(DATA_RHYOLITH_EVENT, NOT_STARTED);
                }
            }

            void DoAction(int32 actionId)
            {
                switch (actionId)
                {
                    case ACTION_UPDATE_FOOT_PATHING:
                        if (false)
                        {// left foot!
                            float oril = me->GetOrientation() + 4.71f;
                                if (oril > 6.28f) oril-= 6.28f;
                            //foot coordinates according to rhyolith position after 30y, then offstet of the foot by 60° on the left
                            float lx = me->GetPositionX() + /*cos(me->GetOrientation())*30 + */cos(oril)*8;
                            float ly = me->GetPositionX() + /*sin(me->GetOrientation())*30 + */sin(oril)*8;
                            if (leftfoot)
                                leftfoot->GetMotionMaster()->MovePoint(0, lx, ly, me->GetPositionZ() + 12.0f);
                            // right foot here!
                            float orir = me->GetOrientation() + 1.57f;
                                if (orir > 6.28f) orir-= 6.28f;
                            //foot coordinates according to rhyolith position after 30y, then offstet of the foot by 60° on the right
                            float rx = me->GetPositionX() + /*cos(me->GetOrientation())*30 + */cos(orir)*8;
                            float ry = me->GetPositionX() + /*(me->GetOrientation())*30 + */sin(orir)*8;
                            if (rightfoot)
                                rightfoot->GetMotionMaster()->MovePoint(0, rx, ry, me->GetPositionZ() + 12.0f);
                        }
                        break;
                    case ACTION_STEER_LEFT:
                        {
                            if (direction < 50)
                            {
                                me->MonsterSay("steer left", LANG_UNIVERSAL, 0);
                                direction++;
                            }
                            if (instance)
                            {
                                instance->DoSetPowerOnPlayers(POWER_ALTERNATE_POWER, direction);
                            }
                        }
                        break;
                    case ACTION_STEER_RIGHT:
                        {
                            if (direction > 0)
                            {
                                me->MonsterSay("steer right", LANG_UNIVERSAL, 0);
                                direction--;
                            }
                            if (instance)
                            {
                                instance->DoSetPowerOnPlayers(POWER_ALTERNATE_POWER, direction);
                            }
                        }
                        break;
                    case ACTION_CHECK_HEALTH:
                        if (rightfoot && leftfoot)
                        {
                            if (rightfoot->GetHealth()+ leftfoot->GetHealth() <= me->GetMaxHealth()* 0.255f && phase1)
                            {//trigger phase 2 at 40% health
                                rightfoot->DespawnOrUnsummon();
                                leftfoot->DespawnOrUnsummon();
                                phase1= false;
                                //me->SetDisplayId(0);
                            }
                            if (rightfoot->GetHealth()* 1.2f < leftfoot->GetHealth()  || leftfoot->GetHealth()* 1.2f < rightfoot->GetHealth())
                            {//if the difference in health of the two legs is more than 20% of the lowest, redistribute hp
                                uint32 newhealth = (rightfoot->GetHealth() + leftfoot->GetHealth())/2;
                                rightfoot->SetHealth(newhealth);
                                leftfoot->SetHealth(newhealth);
                            }
                        }
                        break;
                    default:
                        break;
                }
            }

            void DamageTaken(Unit* who, uint32 &damage)
            {
                if (!me || !me->isAlive())
                    return;
            }

            void JustDied(Unit* killer)
            {
                me->LowerPlayerDamageReq(me->GetMaxHealth());
                summons.DespawnAll();
                instance->SetData(DATA_RHYOLITH_EVENT, DONE);
            }

            void KilledUnit(Unit* victim)
            {
                if (!victim || victim->GetTypeId() != TYPEID_PLAYER || killtimer > 0)
                    return;
                //me->MonsterYell(SAY_KILL, 0, 0);
                //DoPlaySoundToSet(me, SOU_KILL);
                killtimer = 8000;
            }

            void UpdateAI(uint32 diff)
            {
                if (killtimer>=diff)
                    killtimer -= diff;
                if (steertimer>=diff)
                    steertimer -= diff;

                if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                events.Update(diff);

                while (uint32 eventid = events.ExecuteEvent())
                {
                    switch (eventid)
                    {
                    case EVENT_STOMP:
                        if (!me->HasUnitState(UNIT_STATE_CASTING))
                            DoCast(SPELL_CONCUSSIVE_STOMP);
                        me->GetMotionMaster()->Clear();
                        events.CancelEvent(EVENT_UPDATE_PATH);
                        events.ScheduleEvent(EVENT_STOMP, urand(25000,45000));
                        events.ScheduleEvent(EVENT_SPAWN_VOLCANO, 3000);
                        events.ScheduleEvent(EVENT_UPDATE_PATH, 3000);
                        break;
                    case EVENT_SPAWN_VOLCANO:
                        for (uint32 i = urand(0,1); i<3; i++)
                        {//the pattern is elliptical
                            float dir  = float(rand_norm())*static_cast<float>(2*M_PI);
                            float dist = 25.0f * (float)rand_norm() + 15.0f;
                            me->SummonCreature(NPC_VOLCANO, 
                                               centerPosition.GetPositionX() + dist*cos(dir),
                                               centerPosition.GetPositionY() + 1.2f * dist*sin(dir),
                                               centerPosition.GetPositionZ(),
                                               me->GetOrientation());

                        }
                        break;
                    case EVENT_UPDATE_PATH:
                        {
                            me->MonsterSay("update path", LANG_UNIVERSAL, 0);
                            DoAction(ACTION_CHECK_HEALTH);
                            float ori = me->GetOrientation();
                            ori += M_PI*2 + float((direction - 25) * 0.001f) * 20.0f; //steer by 8.4 degrees per second at max
                            if (ori > M_PI*2) ori-= M_PI*2;
                            if (ori > M_PI*2) ori-= M_PI*2; // double check, it could be greater than 12.56
                            float x = me->GetPositionX() + cos(ori)*5;
                            float y = me->GetPositionX() + sin(ori)*5;
                            me->SetOrientation(ori);
                            me->GetMotionMaster()->MovePoint(0, x, y, me->GetPositionZ());
                            if (direction >25)
                                direction --;
                            else if (direction <25)
                                direction ++;
                             
                            //DoAction(ACTION_UPDATE_FOOT_PATHING);
                            if (instance)
                            {
                                instance->DoSetPowerOnPlayers(POWER_ALTERNATE_POWER, direction);
                            }
                            events.ScheduleEvent(EVENT_UPDATE_PATH, 1000, 0, 0);
                        }
                        break;
                    default:
                        break;
                    }
                }

                if(!phase1)
                    DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_rhyolithAI(creature);
        }
};

class right_foot_rhyolith : public CreatureScript //Riplimb
{
public:
	right_foot_rhyolith() : CreatureScript("right_foot_rhyolith"){}

	CreatureAI* GetAI(Creature* creature) const
	{
		return new right_foot_rhyolithAI(creature);
	}

	struct right_foot_rhyolithAI : public ScriptedAI
	{
		right_foot_rhyolithAI(Creature *c) : ScriptedAI(c)
		{
			instance = me->GetInstanceScript();
			Reset();
            rhyolith = NULL;
		}

		InstanceScript* instance;
		EventMap events;
        Creature *rhyolith;

		void Reset()
		{
			me->RemoveAllAuras();
			events.Reset();
		}

		void KilledUnit(Unit * /*victim*/)
		{
		}

		void JustDied(Unit * /*victim*/)
		{
		}

        void DamageTaken(Unit* who, uint32 &damage)
        {// every hit that originally should have hit for more than 15k will cause rhyolith to steer
            if (!me || !me->isAlive())
                return;
            uint32 treshold = 15000; //threshold of damage that will cause rhyolith to steer
            uint32 stacks =0;
            if (me->GetAura(SPELL_OBSIDIAN_ARMOR))
                stacks = me->GetAura(SPELL_OBSIDIAN_ARMOR)->GetStackAmount();
            treshold -= treshold /100 * stacks;
            if (!rhyolith)
                rhyolith = me->FindNearestCreature(BOSS_RHYOLITH, 100, true);
            if (damage >= treshold && rhyolith)
            {
                me->MonsterSay("steer right", LANG_UNIVERSAL, 0);
                rhyolith->GetAI()->DoAction(ACTION_STEER_RIGHT); //steer that direction
            }
            // damage = 0;
        }

		void EnterCombat(Unit * who)
		{	
			DoZoneInCombat();
            rhyolith = me->FindNearestCreature(BOSS_RHYOLITH, 100, true);
		}

        void DoAction(int32 actionId)
            {
                switch (actionId)
                {
                    case 0:
                        break;
                    default:
                        break;
                }
            }

		void UpdateAI(uint32 diff)
		{
			if (!me->getVictim()) {}

			events.Update(diff);

			while (uint32 eventId = events.ExecuteEvent())
			{
				switch (eventId)
				{
				case 0:
					break;
				default:
					break;
				}
			}

			if (!UpdateVictim())
				return;

		}
	};
};


class left_foot_rhyolith : public CreatureScript //Riplimb
{
public:
	left_foot_rhyolith() : CreatureScript("left_foot_rhyolith"){}

	CreatureAI* GetAI(Creature* creature) const
	{
		return new left_foot_rhyolithAI(creature);
	}

	struct left_foot_rhyolithAI : public ScriptedAI
	{
		left_foot_rhyolithAI(Creature *c) : ScriptedAI(c)
		{
			instance = me->GetInstanceScript();
			Reset();
            rhyolith = NULL;
		}

		InstanceScript* instance;
		EventMap events;
        Creature *rhyolith;

		void Reset()
		{
			me->RemoveAllAuras();
			events.Reset();
		}

		void KilledUnit(Unit * /*victim*/)
		{
		}

		void JustDied(Unit * /*victim*/)
		{
		}

        void DamageTaken(Unit* who, uint32 &damage)
        {// every hit that originally should have hit for more than 15k will cause rhyolith to steer
            if (!me || !me->isAlive())
                return;
            uint32 treshold = 15000; //threshold of damage that will cause rhyolith to steer
            uint32 stacks =0;
            if (me->GetAura(SPELL_OBSIDIAN_ARMOR))
                stacks = me->GetAura(SPELL_OBSIDIAN_ARMOR)->GetStackAmount();
            treshold -= treshold /100 * stacks;
            if (!rhyolith)
                rhyolith = me->FindNearestCreature(BOSS_RHYOLITH, 100, true);
            if (damage >= treshold && rhyolith)
            {
                me->MonsterSay("steer left", LANG_UNIVERSAL, 0);
                rhyolith->GetAI()->DoAction(ACTION_STEER_LEFT); //steer that direction
            }
        }

		void EnterCombat(Unit * who)
		{	
			DoZoneInCombat();
            rhyolith = me->FindNearestCreature(BOSS_RHYOLITH, 100, true);
		}

        void DoAction(int32 actionId)
            {
                switch (actionId)
                {
                    case 0:
                        break;
                    default:
                        break;
                }
            }

		void UpdateAI(uint32 diff)
		{
			if (!me->getVictim()) {}

			events.Update(diff);

			while (uint32 eventId = events.ExecuteEvent())
			{
				switch (eventId)
				{
				case 0:
					break;
				default:
					break;
				}
			}

			if (!UpdateVictim())
				return;

		}
	};
};

class npc_rhyolith_volcano : public CreatureScript //Shannox Spear
{
public:
    npc_rhyolith_volcano() : CreatureScript("npc_rhyolith_volcano"){}

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_rhyolith_volcanoAI(creature);
    }

    struct npc_rhyolith_volcanoAI : public ScriptedAI
    {
        npc_rhyolith_volcanoAI(Creature *c) : ScriptedAI(c)
        {
        }

        uint32 timer;
        bool activated;
 
        void InitializeAI()
        {
            activated= false;
            timer = urand(5000, 35000);
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->AddAura(92211, me);
        }
 
        void UpdateAI(uint32 diff)
        {
            if (timer <= diff)
            {
                if (!activated)
                {
                    activated = true;
                    me->AddAura(SPELL_VOLCANO_ACTIVE, me);
                }
            }
            else
                timer -= diff;
        }
    };
};

void AddSC_boss_rhyolith()
{
    new boss_rhyolith();
    new right_foot_rhyolith();
    new left_foot_rhyolith();
}
