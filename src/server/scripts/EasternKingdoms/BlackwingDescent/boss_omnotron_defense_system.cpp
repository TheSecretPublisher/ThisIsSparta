/*
* Copyright (C) 2005 - 2012 MaNGOS <http://www.getmangos.org/>
*
* Copyright (C) 2008 - 2012 TrinityCore <http://www.trinitycore.org/>
*
* Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
*
* Copyright (C) 2011 - 2012 True Blood <http://www.trueblood-servers.com/>
* By Asardial
*
* Copyright (C) 2012 DeepshjirCataclysm Repack
* By Naios
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

#include "ScriptPCH.h"
#include "blackwing_descent.h"

#define SAY_AGGRO "Hmm... the Omnotron Defense System. Centuries ago these constructs were considered the Dwarves greatest technical achievements. With so many counters to each construct's attacks. I''ll have to rectify these designs for them to provide me any entertainement."
#define SAY_STORY "Stupid Dwarnes and you fascination with runes! Why would you create something that would help your enemy?"
#define SAY_LIGHTNING "Lightning conductor works much better in a crowd,yes?"
#define SAY_TOXITRON_CHEMICAL "Were you planning on using Toxitron's chemical to damage the other construcs?Clever plan, let me ruin that for you."
#define SAY_TOO_BAD "You would like to move away from that, wouldn't you?Too bad."
#define SAY_DEATH "Defense systems obliterated. Powering down...."

#define SAY_SHIELD_POISON "Toxitron unit shield system onlines."
#define SAY_SHIELD_FLAMME "Magmatron unit shield system onlines."
#define SAY_SHIELD_ELECTRON "Electron unit shield system onlines."
#define SAY_SHIELD_ARCANOTRON "Arcanotron unit shield system onlines."
#define SAY_ACTIVATION_TOXITRON "Toxitron unit activated."
#define SAY_ACTIVATION_MAGMATRON "Magmatron unit activated."
#define SAY_ACTIVATION_ELECTRON "Electron unit activated."
#define SAY_ACTIVATION_ARCANOTRON "Arcanotron unit activated."
#define SAY_REROUTING_ENERGY "Rerouting excess energy to Magmatron unit. Engage flamethrower device."

enum Spells
{
    // Omnitron
    SPELL_INACTIVE                                = 78726,
    SPELL_SHUTTING_DOWN                           = 78746,
    SPELL_ACTIVATED                               = 78740,

    // Electron
    SPELL_LIGHTNING_CONDUCTOR                     = 79888,
    SPELL_ELECTRICAL_DISCHARGE                    = 91465,
    SPELL_UNSTABLE_SHIELD                         = 91447,
    // Toxitron
    SPELL_CHEMICAL_BOMB                           = 80157,
    SPELL_POISON_SOAKED_SHELL                     = 91501,
    SPELL_POISON_PROTOCOL                         = 80053,
    // Magmatron
    SPELL_BARRIER                                 = 79582,
    SPELL_ACQUIRING_TARGET                        = 79501,
    SPELL_FLAMETHROWER                            = 79504,
    SPELL_INCINERATION_SECURITY_MEASURE           = 79023,
    // Arcanotron
    SPELL_POWER_GENERATOR                         = 79626, // E' inutile che fai faccine del cazzo, non andava una sega a sei un cojone
    SPELL_ARCANE_ANNIHILATOR                      = 79710,
    SPELL_POWER_CONVERSION                        = 79729,

    // Poison Bomb
    SPELL_FIXER                                   = 80094,
    SPELL_BOMB                                    = 80092,
};

enum Summons
{
    MOB_POISON_BOMB = 42897,
};

enum Events
{
    // General
    EVENT_SHUT_DOWN = 1,

    // Omnotron
    EVENT_ACTIVATE_NEXT_CONSTRUCT,
    EVENT_UPDATE_HEALTH,

    // Magmatron
    EVENT_ACQUIRING_TARGET,
    EVENT_INCINERATION_SECURITY_MEASURE,
    EVENT_BARRIER,
    EVENT_FLAMETHROWER,

    // Toxitron
    EVENT_CHEMICAL_BOMB,
    EVENT_POISON_PROTOCOL,
    EVENT_POISON_SOAKED_SHELL,

    // Electron
    EVENT_LIGHTNING_CONDUCTOR,
    EVENT_ELECTRICAL_DISCHARGE,
    EVENT_UNSTABLE_SHIELD,
    EVENT_STATIC_SHOCK,

    // Arcanotron
    EVENT_POWER_CONVERSION,
    EVENT_POWER_GENERATOR,
    EVENT_ARCANE_ANNIHILATOR,

};

enum Actions
{
    ACTION_OMNOTRON_START_EVENT,
    ACTION_OMNOTRON_RESET,
    ACTION_OMNNOTRON_EVENT_FINISHED,

    ACTION_TRON_ACTIVATE,
    ACTION_EVENT_FAILED,
    ACTION_DEACTIVATE,
};

enum Misc
{
    DATA_IS_FIRST_TRON,
};

Position const wayPos[2] =
{
    {-315.853f, -400.56f, 213.974f,0},
    {-334.152f, -400.321f, 214.005f,0},
};

class boss_omnotron : public CreatureScript
{
public:
    boss_omnotron() : CreatureScript("boss_omnotron") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_omnotronAI (creature);
    }

    struct boss_omnotronAI : public ScriptedAI
    {
        boss_omnotronAI(Creature* creature) : ScriptedAI(creature), eventActive(false), intialized(false)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;
        bool intialized;
        bool isEncounterDone;

        Creature* trons[4];

        uint8 activateTron;
        bool eventActive;

        void UpdateAI(uint32 diff)
        {
            if(!intialized)
            {
                trons[0] = ObjectAccessor::GetCreature(*me, instance->GetData64(NPC_MAGMATRON));
                trons[1] = ObjectAccessor::GetCreature(*me, instance->GetData64(NPC_ELECTRON));
                trons[2] = ObjectAccessor::GetCreature(*me, instance->GetData64(NPC_ARCANOTRON));
                trons[3] = ObjectAccessor::GetCreature(*me, instance->GetData64(NPC_TOXITRON));

                for(uint8 i = 0; i<=3; i++)
                    if(trons[i] == NULL)
                        return;

                me->SetMaxHealth(trons[0]->GetMaxHealth());

                eventActive = true;
                intialized = true;
                DoAction(ACTION_OMNOTRON_RESET);
            }else
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_ACTIVATE_NEXT_CONSTRUCT:
                            ActivateNextTron();

                            events.ScheduleEvent(EVENT_ACTIVATE_NEXT_CONSTRUCT, 45000);
                            break;

                        case EVENT_UPDATE_HEALTH:
                            for(uint8 i = 0; i<=3; i++)
                                trons[i]->SetHealth(me->GetHealth());

                            events.ScheduleEvent(EVENT_UPDATE_HEALTH, 1000);
                            break;

                        default:
                            break;
                    }
                }		
            }
        }

        void DoAction(int32 action)
        {
            switch(action)
            {
            case ACTION_OMNOTRON_START_EVENT:
                // Start Encounter

                if (instance)
                    instance->SetBossState(DATA_OMNOTRON_DEFENSE_SYSTEM, IN_PROGRESS);

                eventActive = true;

                if(me->GetMap()->IsHeroic())
                    me->SummonCreature(NPC_NEFARIAN_HELPER_HEROIC,-302.121f, -349.35f, 220.48f, 4.682203f,TEMPSUMMON_MANUAL_DESPAWN);

                events.ScheduleEvent(EVENT_ACTIVATE_NEXT_CONSTRUCT, 45000);
                events.ScheduleEvent(EVENT_UPDATE_HEALTH, 1000);
                break;

            case ACTION_OMNOTRON_RESET:
                // Resets Encounter

                if(eventActive)
                {
                    me->SetFullHealth();
                    eventActive = false;

                    DespawnMinions();
                    events.Reset();

                    ResetTrons();

                    if (instance)
                    instance->SetBossState(DATA_OMNOTRON_DEFENSE_SYSTEM, FAIL);
                }
                break;

            case ACTION_OMNNOTRON_EVENT_FINISHED:

                DespawnMinions();

                if (instance)
                    instance->SetBossState(DATA_OMNOTRON_DEFENSE_SYSTEM, DONE);
                
                instance->SetBossState(DATA_MAGMAW, DONE);

                events.Reset();
                eventActive = false;
                break;

            default:
                break;
            }
        }

        void ResetTrons()
        {
            for(uint8 i = 0; i<=3; i++)
                if(trons[i] == NULL)
                    return;

            for(uint8 i = 0; i<=3; i++)
                trons[i]->AI()->SetData(DATA_IS_FIRST_TRON, 0);

            uint8 a = urand(15,25);
            Creature* tronCache;
            for(uint8 i = 0; i<=a; i++)
            {
                uint8 moveDest = urand(0,3);
                uint8 moveTarget = urand(0,3);

                tronCache = trons[moveTarget];
                trons[moveTarget] = trons[moveDest];
                trons[moveDest] = tronCache;
            }

            trons[0]->AI()->SetData(DATA_IS_FIRST_TRON, 1);

            for(uint8 i = 0; i<=3; i++)
                trons[i]->AI()->DoAction(ACTION_EVENT_FAILED);
        };

        void ActivateNextTron()
        {
            for(uint8 i = 0; i<=3; i++)
                if(trons[i] == NULL)
                    return;

            // Select next Tron
            Creature* tronCache = trons[0];

            // Push tron list one step to first place
            for(uint8 i = 1; i<=3; i++)
                trons[i-1] = trons[i];

            trons[3] = tronCache;

            // Activate first Tron
            trons[0]->AI()->DoAction(ACTION_TRON_ACTIVATE);
            return;
        }

    private:
        inline void DespawnMinions()
        {
            DespawnCreatures(NPC_POISON_BOMB);
            DespawnCreatures(NPC_POISON_CLOUD);
            DespawnCreatures(NPC_NEFARIAN_HELPER_HEROIC);
            DespawnCreatures(NPC_POWER_GENERATOR);
        }

        void DespawnCreatures(uint32 entry)
        {
            std::list<Creature*> creatures;
            GetCreatureListWithEntryInGrid(creatures, me, entry, 100.0f);

            if (creatures.empty())
                return;

            for (std::list<Creature*>::iterator iter = creatures.begin(); iter != creatures.end(); ++iter)
                (*iter)->DespawnOrUnsummon();
        }
    };
};

class boss_trons : public CreatureScript
{
public:
    boss_trons() : CreatureScript("boss_trons") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_tronsAI (creature);
    }

    struct boss_tronsAI : public ScriptedAI
    {
        boss_tronsAI(Creature* creature) : ScriptedAI(creature), activated(false), isFirstTron(false)
        {
            instance = creature->GetInstanceScript();

            creature->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            creature->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
            creature->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);

            homePosition = creature->GetHomePosition();
        }

        InstanceScript* instance;
        EventMap events;
        bool activated;
        bool isFirstTron;
        bool isMovingHome;
        bool staticShockCd;
        Position homePosition;
        Creature* omnotron;
        Unit* flameTarget;

        void EnterCombat(Unit * who)
        {
            if(isFirstTron)
            {
                if (Creature* omnotron = ObjectAccessor::GetCreature(*me,instance->GetData64(BOSS_OMNOTRON)))
                    omnotron->AI()->DoAction(ACTION_OMNOTRON_START_EVENT);

                DoAction(ACTION_TRON_ACTIVATE);
            }

            flameTarget = NULL;
        }

        void JustDied(Unit* /*Killer*/)
        {
            me->MonsterYell(SAY_DEATH, 0, 0);
            
            if (instance)
                instance->HandleGameObject(instance->GetData64(GOB_DOOR_PRE_BOSSES), true);

            me->LowerPlayerDamageReq(me->GetMaxHealth());
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE || id > 2)
                return;

            me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);

            switch(id)
            {
            case 0:
                if(!isFirstTron && isMovingHome)
                {
                    isMovingHome = false;
                    me->NearTeleportTo(homePosition.GetPositionX(),homePosition.GetPositionY(),homePosition.GetPositionZ(),homePosition.GetOrientation());
                    me->SetOrientation(homePosition.GetOrientation());
                    me->AddAura(SPELL_INACTIVE, me);
                    WorldPacket data;
                    me->SendMessageToSet(&data, false);
                }
                break;
            case 1: 
                me->GetMotionMaster()->MovePoint(2, wayPos[1]);
                break;
            case 2:
                me->GetMotionMaster()->MovePoint(1, wayPos[0]);
                break;
            }

        }

        void Reset()
        {
            if (Creature* omnotron = ObjectAccessor::GetCreature(*me,instance->GetData64(BOSS_OMNOTRON)))
                omnotron->AI()->DoAction(ACTION_OMNOTRON_RESET);

            staticShockCd = false;
            events.Reset();
            flameTarget = NULL;

            me->LowerPlayerDamageReq(me->GetHealth());
        };

        void DoAction(int32 action)
        {
            events.Reset();

            switch(action)
            {
                case ACTION_TRON_ACTIVATE:
                    me->RemoveAllAuras();
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    DoZoneInCombat(me);
                    me->AddAura(SPELL_ACTIVATED, me);
                    activated = true;
                    isMovingHome = false;

                    omnotron = ObjectAccessor::GetCreature(*me,instance->GetData64(BOSS_OMNOTRON));

                    // Intialize Events
                    switch(me->GetEntry())
                    {

                        case NPC_MAGMATRON:
                            events.ScheduleEvent(EVENT_ACQUIRING_TARGET, 20000);
                            events.ScheduleEvent(EVENT_INCINERATION_SECURITY_MEASURE, 10000);
                            events.ScheduleEvent(EVENT_BARRIER, 42000);
                            break;

                        case NPC_TOXITRON:
                            events.ScheduleEvent(EVENT_CHEMICAL_BOMB, 25000);
                            events.ScheduleEvent(EVENT_POISON_PROTOCOL, 3800);
                            events.ScheduleEvent(EVENT_POISON_SOAKED_SHELL, 42000);
                            break;

                        case NPC_ELECTRON:
                            events.ScheduleEvent(EVENT_LIGHTNING_CONDUCTOR, 15000);
                            events.ScheduleEvent(EVENT_ELECTRICAL_DISCHARGE, 25000);
                            events.ScheduleEvent(EVENT_UNSTABLE_SHIELD, 42000);
                            break;

                        case NPC_ARCANOTRON:
                            events.ScheduleEvent(EVENT_POWER_CONVERSION, 42000);
                            events.ScheduleEvent(EVENT_POWER_GENERATOR, 15000);
                            events.ScheduleEvent(EVENT_ARCANE_ANNIHILATOR, 8000);
                            break;
                    }
                    
                    return;
                break;

                case ACTION_EVENT_FAILED:
                    if(!isFirstTron)
                    { 
                        // is not First Tron
                        DoAction(ACTION_DEACTIVATE);
                    }else
                    { 
                        // is First Tron
                        me->SetReactState(REACT_AGGRESSIVE);
                        me->RemoveAllAuras();
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                        me->GetMotionMaster()->MovePoint(1, wayPos[0]);
                        activated = true;
                        isMovingHome = false;
                    }
                break;

                case ACTION_DEACTIVATE:
                    me->SetReactState(REACT_PASSIVE);
                    me->AttackStop();
                    me->RemoveAllAuras();
                    me->GetMotionMaster()->MovePoint(0, homePosition);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    activated = false;
                    isMovingHome = true;
                break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim() || !activated)
                return;

            if(!me->HasAura(SPELL_ACTIVATED) && !isMovingHome)
            {
                DoAction(ACTION_DEACTIVATE);
                return;
            }

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    // Magmatron
                    case EVENT_ACQUIRING_TARGET:
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        {
                            DoCast(pTarget, SPELL_ACQUIRING_TARGET);
                            flameTarget = pTarget;
                        }

                        me->MonsterYell(SAY_REROUTING_ENERGY, 0, 0);
                        
                        events.ScheduleEvent(EVENT_FLAMETHROWER, 4000);
                        events.ScheduleEvent(EVENT_ACQUIRING_TARGET, 35000);
                        break;

                    case EVENT_FLAMETHROWER:
                        if (flameTarget)
                            DoCast(flameTarget, 79505, true);
                        break;
                    case EVENT_INCINERATION_SECURITY_MEASURE:
                        DoCastAOE(SPELL_INCINERATION_SECURITY_MEASURE);
                        events.ScheduleEvent(EVENT_INCINERATION_SECURITY_MEASURE, 25000);
                        break;
                    case EVENT_BARRIER:
                        DoCast(me, SPELL_BARRIER);
                        me->MonsterYell(SAY_SHIELD_FLAMME, 0, 0);
                        break;

                    // Toxitron
                    case EVENT_CHEMICAL_BOMB:
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, SPELL_CHEMICAL_BOMB);
                        events.ScheduleEvent(EVENT_CHEMICAL_BOMB, 45000);
                        break;

                    case EVENT_POISON_PROTOCOL:
                        DoCast(me, SPELL_POISON_PROTOCOL);
                        events.ScheduleEvent(EVENT_POISON_PROTOCOL, 38000);
                        break;

                    case EVENT_POISON_SOAKED_SHELL:
                        DoCast(me, SPELL_POISON_SOAKED_SHELL);
                        me->MonsterYell(SAY_SHIELD_POISON, 0, 0);
                        break;

                    // Electron
                    case EVENT_LIGHTNING_CONDUCTOR:
                        for (uint8 i = 0; i < RAID_MODE(1, 3); i++)
                        {
                            if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                DoCast(pTarget, SPELL_LIGHTNING_CONDUCTOR);
                        }

                        me->MonsterYell(SAY_LIGHTNING, 0, 0);
                        events.ScheduleEvent(EVENT_LIGHTNING_CONDUCTOR, urand(10000, 15000));
                        break;
                
                    case EVENT_ELECTRICAL_DISCHARGE:
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, SPELL_ELECTRICAL_DISCHARGE);
                        events.ScheduleEvent(EVENT_ELECTRICAL_DISCHARGE, 25000);
                        break;

                    case EVENT_UNSTABLE_SHIELD:
                        DoCast(me, SPELL_UNSTABLE_SHIELD);
                        me->MonsterYell(SAY_SHIELD_ELECTRON, 0, 0);
                        break;

                    case EVENT_STATIC_SHOCK:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                            me->CastSpell(target, 79911, true);

                        staticShockCd = false;
                        break;

                    // Arcanotron
                    case EVENT_POWER_CONVERSION:
                        DoCast(me, SPELL_POWER_CONVERSION);
                        me->MonsterYell(SAY_SHIELD_ARCANOTRON, 0, 0);
                        break;

                    case EVENT_POWER_GENERATOR:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                        {
                            Position pos;
                            target->GetPosition(&pos);
                            if (Creature* powerGenerator = me->SummonCreature(42733, pos, TEMPSUMMON_TIMED_DESPAWN, 60000, 0))
                            {
                                powerGenerator->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                                powerGenerator->AddAura(91559, powerGenerator);
                            }
                        }
                        events.ScheduleEvent(EVENT_POWER_GENERATOR, 30000);
                        break;

                    case EVENT_ARCANE_ANNIHILATOR:
                        for (uint8 i = 0; i < RAID_MODE(1, 3); i++)
                        {
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                            {
                                DoCast(target, SPELL_ARCANE_ANNIHILATOR);
                            }
                        }

                        events.ScheduleEvent(EVENT_ARCANE_ANNIHILATOR, 8000);
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature* summon)
        {
            switch (summon->GetEntry())
            {
                case 42934:
                    summon->SetReactState(REACT_PASSIVE);
                    summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
                    summon->AddAura(80162, summon);
                    break;
                case 42897:
                    DoZoneInCombat(summon);
                    break;
            }
        }

        void SetData(uint32 Type, uint32 Data)
        {
            if(Type != DATA_IS_FIRST_TRON)
                return;

            me->SetFullHealth();

            isFirstTron = (Data == 0) ? false : true;
        }

        void DamageTaken(Unit* who, uint32& damage)
        {
            if (me->GetEntry() == NPC_ELECTRON && me->HasAura(SPELL_UNSTABLE_SHIELD) && damage > 0 && !staticShockCd)
            {
                staticShockCd = true;
                events.ScheduleEvent(EVENT_STATIC_SHOCK, 1000, 0, 0);
            }

            if (Creature* omnotron = ObjectAccessor::GetCreature(*me,instance->GetData64(BOSS_OMNOTRON)))
            {
                if(damage >= omnotron->GetHealth())
                {
                    if (!who)
                        return;

                    omnotron->AI()->DoAction(ACTION_OMNNOTRON_EVENT_FINISHED);

                    Creature* trons[4];
                    trons[0] = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_MAGMATRON));
                    trons[1] = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_ELECTRON));
                    trons[2] = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_ARCANOTRON));
                    trons[3] = ObjectAccessor::GetCreature(*me,instance->GetData64(NPC_TOXITRON));

                    for(uint8 i = 0; i<=3; i++)
                    {
                        if (trons[i])
                        {
                            if(trons[i] != me)
                                trons[i]->DisappearAndDie();
                        }
                    }
                }
                else
                    omnotron->SetHealth(omnotron->GetHealth()-damage);
            }

        }

    };
};

class npc_poison_bomb : public CreatureScript
{
public:
    npc_poison_bomb() : CreatureScript("npc_poison_bomb") { }

    struct npc_poison_bombAI : public ScriptedAI
    {
        npc_poison_bombAI(Creature * pCreature) : ScriptedAI(pCreature) {}

        uint32 uiFixe;
        uint32 uiDisappear;

        void Reset()
        {
            uiFixe = 2000;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (who->HasAura(SPELL_FIXER) && me->GetDistance(who) < 2.0f)
            {
                me->CastSpell(me, 80092, true);
                uiDisappear = 500;
            }
        }

        void UpdateAI(uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if(uiFixe <= uiDiff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1, 100.0f, true))
                {
                    DoCast(target, SPELL_FIXER);
                    me->Attack(target, true);
                    me->AddThreat(target, 1000000.0f);
                }
            } else uiFixe -= uiDiff;

            if(uiDisappear <= uiDiff)
            {
                Position pos;
                me->GetPosition(&pos);
                if (Creature* puddle = me->SummonCreature(42920, pos))
                {
                    puddle->SetReactState(REACT_PASSIVE);
                    puddle->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
                    if (!puddle->HasAura(80095))
                        puddle->AddAura(80095, puddle);
                    me->CastSpell(me, SPELL_BOMB, false);
                }
                me->DisappearAndDie();
            } else uiFixe -= uiDisappear;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_poison_bombAI(creature);
    }
};

class npc_power_generator : public CreatureScript
{
public:
    npc_power_generator() : CreatureScript("npc_power_generator") { }

    struct npc_power_generatorAI : public ScriptedAI
    {
        npc_power_generatorAI(Creature * pCreature) : ScriptedAI(pCreature) {}

        void Reset()
        {
            if (!me->HasAura(91559))
                me->AddAura(91559, me);
        }

        void UpdateAI(uint32 diff)
        {
            if (!me->HasAura(91559))
                me->AddAura(91559, me);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_power_generatorAI(creature);
    }
};



void AddSC_boss_omnotron_defense_system()
{
    new boss_omnotron();
    new boss_trons();
    new npc_poison_bomb();
    new npc_power_generator();
}