/*
* Copyright (C) 2012 - 2013 Forgotten Lands <https://www.forgottenlands.eu>
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
* This script is arround 93% complete...
* Hardmode and Double Attack Spellscript must be rewritten.
*/

#include "ScriptPCH.h"
#include "blackwing_descent.h"

enum Events
{
    EVENT_DOUBLE_ATTACK = 1,
    EVENT_CAUSTIC_SLIME,
    EVENT_MASSACRE,
    EVENT_FEUD,
    EVENT_SEC_MASSACRE,
    EVENT_BREAK,
    EVENT_FAILURE,

    EVENT_CHECK_POS,
};

enum Actions
{
    ACTION_BILE_O_TRON_EVENT_START      = 1,
    ACTION_BILE_O_TRON_SYSTEM_FAILURE,
    ACTION_BILE_O_TRON_RESET,
};

enum Spells
{
    // Chimaeron
    SPELL_DOUBLE_ATTACK                 = 88826,
    SPELL_CAUSTIC_SLIME                 = 82935,
    SPELL_CAUSTIC_SLIME_MISSILE         = 82913,
    SPELL_MASSACRE                      = 82848,
    SPELL_FEUD                          = 88872,
    SPELL_BREAK                         = 82881,

    SPELL_MORTALITY                     = 82934,
    SPELL_MORTALITY_RAID_DEBUFF         = 82890,

    // Bile O Tron
    SPELL_FINKLES_MIXTURE               = 82705,
    SPELL_FINKLES_MIXTURE_VISUAL        = 91106,
    SPELL_SYSTEM_FALURE                 = 88853,
    SPELL_REROUTE_POWER                 = 88861,
};

enum ScriptTexts
{
    // Nefarian
    SAY_AGGRO                       = -1851020,
    SAY_FEUD                        = -1851021,
    SAY_OUTRO                       = -1851022,

    // Finkle
    SAY_INTRO                       = -1851023,
    SAY_SYSTEM_FAILURE              = -1851026,
    SAY_FINAL_PHASE                 = -1851027,
    SAY_DEATH                       = -1851028,
};

Position const BilePositions[6] =
{
    {-135.795151f, 15.569847f, 73.165909f, 4.646072f},
    {-129.176636f, -10.488489f, 73.079071f, 5.631739f},
    {-106.186249f, -18.533386f, 72.798332f, 1.555510f},
    {-77.951973f, 0.702321f, 73.093552f, 1.509125f},
    {-77.466125f, 31.038124f, 73.177673f, 4.489712f},
    {-120.426445f, 34.491863f, 72.057610f, 4.116642f},
};

class boss_chimaeron : public CreatureScript
{
public:
    boss_chimaeron() : CreatureScript("boss_chimaeron") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_chimaeronAI (creature);
    }

    struct boss_chimaeronAI: public BossAI
    {
        boss_chimaeronAI(Creature* creature) : BossAI(creature, DATA_CHIMAERON)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;
        uint8 phase;

        void Reset()
        {
            events.Reset();
            me->SetReactState(REACT_PASSIVE);
            phase = 1;

            me->RemoveAura(SPELL_DOUBLE_ATTACK);
            me->RemoveAura(SPELL_MORTALITY);
            me->RemoveAura(SPELL_MORTALITY_RAID_DEBUFF);

            if(Creature* finkle_einhorn = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_FINKLE_EINHORN)))
                finkle_einhorn->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

            if(Creature* bile_o_tron = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_BILE_O_TRON)))
                bile_o_tron->AI()->DoAction(ACTION_BILE_O_TRON_RESET);

            if(Creature* nefarianHelperheroic = me->FindNearestCreature(NPC_NEFARIAN_HELPER_HEROIC,50.0f,true))
                nefarianHelperheroic->DisappearAndDie();

            instance->SetData(DATA_CHIMAERON, NOT_STARTED);
            _Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            if(me->GetMap()->IsHeroic())
                me->SummonCreature(NPC_NEFARIAN_HELPER_HEROIC,-115.5546f, 45.403f, 79.078f, 4.57f ,TEMPSUMMON_MANUAL_DESPAWN);

            events.ScheduleEvent(EVENT_MASSACRE, urand(30000,35000));
            events.ScheduleEvent(EVENT_DOUBLE_ATTACK, urand(13000,15000));
            events.ScheduleEvent(EVENT_CAUSTIC_SLIME, urand(10000,12000));
            events.ScheduleEvent(EVENT_BREAK, urand(14000,16000));
            events.ScheduleEvent(EVENT_CHECK_POS, 1000);
            instance->SetData(DATA_CHIMAERON, IN_PROGRESS);
            _EnterCombat();
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if(me->GetHealthPct() < 20 && phase == 1)
            {
                phase = 2;

                DoCast(me, SPELL_MORTALITY);
                DoCastAOE(SPELL_MORTALITY_RAID_DEBUFF);

                events.CancelEvent(EVENT_MASSACRE);
                events.CancelEvent(EVENT_BREAK);
                events.CancelEvent(EVENT_CAUSTIC_SLIME);
            }

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {

                case EVENT_MASSACRE:
                    DoCastVictim(SPELL_MASSACRE);
                    me->AttackStop();
                    if(urand(0, 2) == 0)
                        events.ScheduleEvent(EVENT_FAILURE, 1000, 0, 0);
                    else
                        events.ScheduleEvent(EVENT_MASSACRE, 27000);
                    break;

                case EVENT_FEUD:
                    DoCast(me,SPELL_FEUD);
                    break;

                case EVENT_FAILURE:
                    if(Creature* bile_o_tron = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_BILE_O_TRON)))
                    {
                        bile_o_tron->AI()->DoAction(ACTION_BILE_O_TRON_SYSTEM_FAILURE);

                        events.ScheduleEvent(EVENT_MASSACRE, 35000);
                        events.ScheduleEvent(EVENT_FEUD, 1000);
                    }
                    break;

                case EVENT_DOUBLE_ATTACK:
                    DoCast(me, SPELL_DOUBLE_ATTACK);
                    events.ScheduleEvent(EVENT_DOUBLE_ATTACK, urand(13000, 15000));
                    break;

                case EVENT_CAUSTIC_SLIME:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                        me->CastSpell(target, SPELL_CAUSTIC_SLIME_MISSILE, false);

                    events.ScheduleEvent(EVENT_CAUSTIC_SLIME, urand(10000, 12000));
                    break;

                case EVENT_BREAK:
                    DoCastVictim(SPELL_BREAK);
                    events.ScheduleEvent(EVENT_BREAK, 14000);
                    break;

                case EVENT_CHECK_POS:
                    if (me->GetDistance2d(-107.521f, 12.371f) > 60.0f)
                    {
                        me->AI()->EnterEvadeMode();
                        me->SetHealth(me->GetMaxHealth());
                    }
                    events.ScheduleEvent(EVENT_CHECK_POS, 1000);
                    break;
                default:
                    break;
                }
            }		

            if(!me->HasAura(SPELL_FEUD))
                DoMeleeAttackIfReady();
        }

        void DamageTaken(Unit* who, uint32& damage)
        {
            if(me->HasReactState(REACT_PASSIVE))
            {
                me->SetReactState(REACT_AGGRESSIVE);
                DoZoneInCombat(me);
            }
        }

        void JustDied(Unit* /*killer*/)
        {
            me->RemoveAllAuras();

            if(Creature* bile_o_tron = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_BILE_O_TRON)))
                bile_o_tron->AI()->DoAction(ACTION_BILE_O_TRON_RESET);

            if(Creature* nefarianHelperheroic = me->FindNearestCreature(NPC_NEFARIAN_HELPER_HEROIC,50.0f,true))
                nefarianHelperheroic->DisappearAndDie();

            _JustDied();
            instance->SetData(DATA_CHIMAERON, DONE);
        }
    };
};

class mob_finkle_einhorn : public CreatureScript
{
public:
    mob_finkle_einhorn() : CreatureScript("mob_finkle_einhorn") { }

    bool OnGossipHello(Player* pPlayer, Creature* creature)
    {

        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Help us with your Bille-O-Tron 800!", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
        pPlayer->SEND_GOSSIP_MENU(1,creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* creature, uint32 uiSender, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();

        pPlayer->CLOSE_GOSSIP_MENU();

        if(InstanceScript* instance = creature->GetInstanceScript())
        {
            if(Creature* bile_o_tron = ObjectAccessor::GetCreature(*creature,instance->GetData64(NPC_BILE_O_TRON)))
            {
                bile_o_tron->AI()->DoAction(ACTION_BILE_O_TRON_EVENT_START);
                creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            }
        }
        return true;
    }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_finkle_einhornAI(creature);
    }

    struct mob_finkle_einhornAI : public ScriptedAI
    {
        mob_finkle_einhornAI(Creature* creature) : ScriptedAI(creature)
        {
            timer = 1000;
        }

        uint32 timer;

        void MoveInLineOfSight(Unit* who)
        { }

        void UpdateAI(uint32 diff) 
        { }
    };
};

class mob_bile_o_tron : public CreatureScript
{
public:
    mob_bile_o_tron() : CreatureScript("mob_bile_o_tron") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_bile_o_tronAI (creature);
    }

    struct mob_bile_o_tronAI : public ScriptedAI
    {
        mob_bile_o_tronAI(Creature* creature) : ScriptedAI(creature), waypoint(7), uiSystemFailureTimer(0), activated(false)
        {
            instance = creature->GetInstanceScript();
            creature->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);

            isFailureActive = false;
        }

        InstanceScript* instance;
        uint8 waypoint;
        uint32 uiSystemFailureTimer;
        bool activated;
        bool isFailureActive;

        void UpdateAI(uint32 diff)
        {
            if(!activated)
                return;

            if(!me->HasAura(SPELL_SYSTEM_FALURE) && !me->HasAura(SPELL_FINKLES_MIXTURE))
                me->AddAura(SPELL_FINKLES_MIXTURE, me);

            if(uiSystemFailureTimer <= diff && isFailureActive)
            { 
                // Reroute Power
                me->RemoveAura(SPELL_SYSTEM_FALURE);
                me->GetMotionMaster()->MovePoint(1,BilePositions[waypoint]);

                isFailureActive = false;
                DoCast(me,SPELL_FINKLES_MIXTURE_VISUAL,true);
            }
            else uiSystemFailureTimer -= diff;
        }

        void DoAction(int32 action)
        {

            Map::PlayerList const &PlayerList = me->GetMap()->GetPlayers();

            switch(action)
            {

            case ACTION_BILE_O_TRON_EVENT_START:
                DoCast(me,SPELL_FINKLES_MIXTURE_VISUAL,true);
                waypoint = 8;
                me->GetMotionMaster()->MovePoint(1, BilePositions[0]);
                activated = true;
                isFailureActive = false;
                break;

            case ACTION_BILE_O_TRON_SYSTEM_FAILURE:
                if(!activated)
                    break;

                me->RemoveAllAuras();
                DoCast(me,SPELL_REROUTE_POWER, true);
                DoCast(me,SPELL_SYSTEM_FALURE, true);
                isFailureActive = true;
                uiSystemFailureTimer = 26000;
                break;

            case ACTION_BILE_O_TRON_RESET:
                me->RemoveAllAuras();
                me->GetMotionMaster()->MoveTargetedHome();
                waypoint = 7;
                uiSystemFailureTimer = 0;
                activated = false;
                break;
            }
        }

        void JustReachedHome()
        {
            me->RemoveAllAuras();
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE || waypoint == 7)
                return;

            if(waypoint >= 5)
                waypoint = 0;
            else
                waypoint++;

            me->GetMotionMaster()->MovePoint(1,BilePositions[waypoint]);               
        }
    };
};

class spell_finkles_mixture : public SpellScriptLoader {
public:
	spell_finkles_mixture() : SpellScriptLoader("spell_finkles_mixture") 
    { }

	class spell_finkles_mixture_AuraScript: public AuraScript 
    {
		PrepareAuraScript(spell_finkles_mixture_AuraScript);

		void CalculateAmount(AuraEffect const * /*aurEff*/, int32 & amount, bool & canBeRecalculated)
        {
			// Set absorbtion amount to unlimited
			amount = -1;
		}

		void Absorb(AuraEffect * aurEff, DamageInfo &dmgInfo, uint32 & absorbAmount) 
        {
			Unit * target = GetTarget();
			if (dmgInfo.GetDamage() < target->GetHealth())
				return;

            if (target->GetHealth() < 10000)
                return;

			target->SetHealth(1);
			absorbAmount = dmgInfo.GetDamage();
		}

		void Register() 
        {
			DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_finkles_mixture_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
			OnEffectAbsorb += AuraEffectAbsorbFn(spell_finkles_mixture_AuraScript::Absorb, EFFECT_1);
		}
	};

	AuraScript *GetAuraScript() const 
    {
		return new spell_finkles_mixture_AuraScript();
	}
};

void AddSC_boss_chimaeron()
{
    new boss_chimaeron();
    new mob_finkle_einhorn();
    new mob_bile_o_tron();
    new spell_finkles_mixture();
}