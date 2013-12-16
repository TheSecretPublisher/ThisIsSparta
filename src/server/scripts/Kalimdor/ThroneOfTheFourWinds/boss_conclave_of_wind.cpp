/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
 *
 * Copyright (C) 2012 Forgotten Lands <http://www.forgottenlands.eu/>
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

#include "throne_of_the_four_winds.h"

#define MAX_ENERGY 90
#define RATE_ENERGY 1

/*
############
### Boss Anshal
############ 
*/

enum anshalEvents
{
    EVENT_WINTERING_WINDS = 1,
    EVENT_SOOTHING_BREEZE,
    EVENT_DESPAWN_BREEZE,
    EVENT_ANSHAL_CHECK_ENERGY,
    EVENT_NURTURE,
    EVENT_ZEPHYR,
    EVENT_ANSHAL_CHECK_POSITION,
    EVENT_ANSHAL_RESET_ENERGY
};

enum anshalSpells
{
    SPELL_SOOTHING_BREEZE_SUMMON                  = 86205,
    SPELL_SOOTHING_BREEZE_VISUAL                  = 86208,
    SPELL_SOOTHING_BREEZE_HEAL_TRIG               = 86206,
    SPELL_SOOTHING_BREEZE_SILENCE_TRIG            = 86207,
    SPELL_NURTURE                                 = 85422,
    SPELL_NURTURE_VISUAL                          = 85428,
    SPELL_SUMMON_RAVENOUS_CREEPER                 = 85429,
    SPELL_ZEPHYR                                  = 84638,
    SPELL_WINTERING_WILLS                         = 85576,
    SPELL_GATHER_STRENGHT                         = 86307,
};

enum actions
{
    ACTION_RAVENOUS_SUMMON = 1,
};

class boss_anshal: public CreatureScript
{
    public:
        boss_anshal() : CreatureScript("boss_anshal") { }

    struct boss_anshalAI: public BossAI
    {
        boss_anshalAI(Creature* creature) : BossAI(creature, DATA_ANSHAL_EVENT), summons(me) 
        {
            instance = me->GetInstanceScript();
        }

        SummonList summons;
        InstanceScript* instance;
        bool pauseRegen;
        bool castingSpecial;
        bool respawn;
        uint32 energyRegenTimer;
        uint32 respawnTimer;

        void Reset()
        {
            me->setPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, MAX_ENERGY);
            me->SetPower(POWER_ENERGY, 0);
            pauseRegen = false;
            castingSpecial = false;
            respawn = false;
            events.Reset();
            summons.DespawnAll();
            energyRegenTimer = 0;
            respawnTimer = 0;
            if (instance)
                instance->SetData(DATA_ANSHAL_EVENT, NOT_STARTED);
        }   

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_SOOTHING_BREEZE, 32500, 0, 0); // Offylike
            events.ScheduleEvent(EVENT_ANSHAL_CHECK_POSITION, 1000, 0, 0);
            events.ScheduleEvent(EVENT_NURTURE, urand(20000, 22000), 0, 0); // Not sure
            events.ScheduleEvent(EVENT_ANSHAL_CHECK_ENERGY, 500, 0, 0);

            energyRegenTimer = 1000;

            if (instance)
            {
                instance->SetData(DATA_ANSHAL_EVENT, IN_PROGRESS);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ENABLE_OBJECTIVE, me);
            }
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();
            if (instance)
            {
                instance->SetData(DATA_ANSHAL_EVENT, DONE);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISABLE_OBJECTIVE, me);
            }
        }

        void DamageTaken(Unit* who, uint32 &damage)
        {
            if (damage >= me->GetHealth())
            {
                if (instance)
                {
                    if (instance->GetData(DATA_NEZIR_EVENT) == SPECIAL && instance->GetData(DATA_ROHASH_EVENT) == SPECIAL)
                    {
                        instance->SetData(DATA_CONCLAVE_OF_WIND_EVENT, DONE);

                        if (Creature* nezir = me->FindNearestCreature(BOSS_NEZIR, 500.0f, true))
                        {
                            nezir->LowerPlayerDamageReq(nezir->GetMaxHealth());
                            me->getVictim()->Kill(nezir, false);
                        }

                        if (Creature* rohash = me->FindNearestCreature(BOSS_ROHASH, 500.0f, true))
                            me->getVictim()->Kill(rohash, false);

                        me->getVictim()->Kill(me, false);
                        return;
                    }

                    damage = 0;
                    me->SetHealth(1);
                    pauseRegen = true;
                    respawn = true;
                    
                    if (!me->HasUnitState(UNIT_STATE_CASTING))
                    {
                        respawnTimer = 60000;
                        me->CastSpell(me, SPELL_GATHER_STRENGHT, false);
                    }
                    
                    instance->SetData(DATA_ANSHAL_EVENT, SPECIAL);

                    events.DelayEvents(60000);
                }
            }
        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);

            switch (summoned->GetEntry())
            {
                case NPC_SOOTHING_BREEZE:
                    me->AddAura(SPELL_SOOTHING_BREEZE_VISUAL, summoned);
                    me->AddAura(SPELL_SOOTHING_BREEZE_HEAL_TRIG, summoned);
                    me->AddAura(SPELL_SOOTHING_BREEZE_SILENCE_TRIG, summoned);
                    summoned->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    events.ScheduleEvent(EVENT_DESPAWN_BREEZE, 30000, 0, 0);
                    break;
                case NPC_RAVENOUS_TRIGGER:
                    summoned->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    summoned->AddAura(SPELL_NURTURE_VISUAL, summoned);
                    if (summoned->AI())
                        summoned->AI()->DoAction(ACTION_RAVENOUS_SUMMON);
                    break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (energyRegenTimer <= diff)
            {
                RegenerateEnergy();
                energyRegenTimer = 1000;
            }
            else
                energyRegenTimer -= diff;    

            if (respawnTimer <= diff && respawn)
            {
                pauseRegen = false;
                if (instance)
                    instance->SetData(DATA_ANSHAL_EVENT, IN_PROGRESS);
            }
            else
                respawnTimer -= diff;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_WINTERING_WINDS:
                        if (!me->HasAura(SPELL_WINTERING_WILLS))
                            me->CastSpell(me, SPELL_WINTERING_WILLS, true);
                        break;
                    case EVENT_SOOTHING_BREEZE:
                        me->CastSpell(me, SPELL_SOOTHING_BREEZE_SUMMON, true);
                        events.ScheduleEvent(EVENT_SOOTHING_BREEZE, urand(32500, 36000), 0, 0);
                        break;
                    case EVENT_DESPAWN_BREEZE:
                        summons.DespawnEntry(NPC_SOOTHING_BREEZE);
                        break;
                    case EVENT_NURTURE:
                        me->CastSpell(me->getVictim(), SPELL_NURTURE, true);
                        events.ScheduleEvent(EVENT_NURTURE, urand(80000, 90000), 0, 0); // not sure
                        break;
                    case EVENT_ANSHAL_CHECK_ENERGY:
                        if (me->GetPower(POWER_ENERGY) >= MAX_ENERGY && !castingSpecial)
                        {
                            castingSpecial = true;
                            events.ScheduleEvent(EVENT_ZEPHYR, 1000, 0, 0);
                        }
                        events.ScheduleEvent(EVENT_ANSHAL_CHECK_ENERGY, 500, 0, 0);
                        break;
                    case EVENT_ZEPHYR:
                        castingSpecial = true;  
                        pauseRegen = true;
                        float homeX, homeY, homeZ, homeO;
                        me->GetHomePosition(homeX, homeY, homeZ, homeO);
                        me->SetPosition(homeX, homeY, homeZ, homeO);
                        me->SetPower(POWER_ENERGY, 0);
                        me->CastSpell(me->getVictim(), SPELL_ZEPHYR, true);
                        events.ScheduleEvent(EVENT_ANSHAL_RESET_ENERGY, 1000, 0, 0);
                        events.DelayEvents(5800);
                        break;
                    case EVENT_ANSHAL_RESET_ENERGY:
                        pauseRegen = false;
                        castingSpecial = false;
                        break;
                    case EVENT_ANSHAL_CHECK_POSITION:
                    {
                        float homeX, homeY, homeZ, homeO;
                        me->GetHomePosition(homeX, homeY, homeZ, homeO);
                        if (me->GetDistance(homeX, homeY, homeZ) > 70.0f)
                            events.ScheduleEvent(EVENT_WINTERING_WINDS, 4000, 0, 0);
                        else
                        {
                            me->RemoveAura(SPELL_WINTERING_WILLS);
                            events.CancelEvent(EVENT_WINTERING_WINDS);
                        }

                        events.ScheduleEvent(EVENT_ANSHAL_CHECK_POSITION, 1000, 0, 0);
                        break;
                    }
                }
            }

            DoMeleeAttackIfReady();
        }

        void DoAction(int32 action)
        {
            switch (action)
            {
                case ACTION_ANSHAL_ENTER_IN_COMBAT:
                    if (Player* target = me->SelectNearestPlayer(70.0f))
                    {
                        me->GetMotionMaster()->MoveChase(target, 1.0f, 1.0f);
                        me->Attack(target, true);
                    } else
                    {
                        if (Player* target = me->SelectNearestPlayer(500.0f))
                        {
                            me->Attack(target, false);
                            me->GetMotionMaster()->MoveChase(target, 1.0f, 1.0f);
                        }
                        me->CastSpell(me, SPELL_WINTERING_WILLS, true);
                    }
                    break;
            }
        }

        void RegenerateEnergy()
        {
            if (pauseRegen)
                return;

            me->SetPower(POWER_ENERGY, me->GetPower(POWER_ENERGY) + RATE_ENERGY );
        }
     };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_anshalAI(creature);
    }
};

enum ravenousTriggerEvents
{
    EVENT_SUMMON_RAVENOUS = 1,
};

class npc_ravenous_creeper_trigger : public CreatureScript
{
public:
    npc_ravenous_creeper_trigger() : CreatureScript("npc_ravenous_creeper_trigger") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ravenous_creeper_triggerAI(creature);
    }

    struct npc_ravenous_creeper_triggerAI: public ScriptedAI
    {
        npc_ravenous_creeper_triggerAI(Creature* c) : ScriptedAI(c)
        { }

        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void DoAction( int32 actionid)
        {
            switch (actionid)
            {
                case ACTION_RAVENOUS_SUMMON:
                    events.ScheduleEvent(EVENT_SUMMON_RAVENOUS, 10000, 0, 0);
                    break;
            }
        }

        void JustSummoned(Creature* summon)
        {
            if (Player* target = summon->SelectNearestPlayer(70.0f))
            {
                summon->GetMotionMaster()->MoveChase(target, 1.0f, 1.0f);
                summon->Attack(target, true);
                DoZoneInCombat(summon);
            }
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_SUMMON_RAVENOUS:
                        me->CastSpell(me, SPELL_SUMMON_RAVENOUS_CREEPER, true);
                        me->RemoveAllAuras();
                    break;
                }
            }
        }
    };
};

enum ravenousCreeperEvents
{
    EVENT_TOXIC_SPORES = 1,
};

#define SPELL_TOXIC_SPORES                        86281

class npc_ravenous_creeper : public CreatureScript
{
public:
    npc_ravenous_creeper() : CreatureScript("npc_ravenous_creeper") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ravenous_creeperAI(creature);
    }

    struct npc_ravenous_creeperAI: public ScriptedAI
    {
        npc_ravenous_creeperAI(Creature* c) : ScriptedAI(c)
        { }

        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void EnterCombat(Unit* pVictim)
        {
            events.ScheduleEvent(EVENT_TOXIC_SPORES, 7000, 0, 0);
            me->CastSpell(me, SPELL_TOXIC_SPORES, me);
        }
        void UpdateAI(uint32 diff)
        {
            events.Update(diff);
            
            if (!UpdateVictim())
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_TOXIC_SPORES:
                    me->CastSpell(me, SPELL_TOXIC_SPORES, me);
                    events.ScheduleEvent(EVENT_TOXIC_SPORES, 7000, 0, 0);
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

/*
############
### Boss Nezir
############ 
*/

enum nezirEvents
{
    EVENT_CHILLING_WINDS = 1,
    EVENT_ICE_PATCH,
    EVENT_PERMAFROST,
    EVENT_WIND_CHILL,
    EVENT_SLEET_STORM,
    EVENT_CHECK_ENERGY,
    EVENT_NEZIR_RESET_ENERGY,
    EVENT_NEZIR_CHECK_POSITION,
    EVENT_CHILLING_WILLS
};

enum nezirSpells
{
    SPELL_ICE_PATCH_VISUAL                        = 86107,
    SPELL_ICE_PATCH_SUMMON                        = 86122,
    SPELL_PERMAFROST                              = 86082, // Target self!
    SPELL_WIND_CHILL                              = 84645,
    SPELL_SLEET_STORM                             = 84644,
    SPELL_CHILLING_WINDS                          = 85578, // need damage
};

class boss_nezir: public CreatureScript
{
    public:
        boss_nezir() : CreatureScript("boss_nezir") { }

    struct boss_nezirAI: public BossAI
    {
        boss_nezirAI(Creature* creature) : BossAI(creature, DATA_NEZIR_EVENT), summons(me)
        {
            instance = me->GetInstanceScript();
        }
        
        SummonList summons;
        InstanceScript* instance;

        bool castingSpecial;
        bool pauseRegen;
        bool respawn;

        uint32 energyRegenTimer;
        uint32 respawnTimer;

        void Reset()
        {
            me->setPowerType(POWER_RUNIC_POWER);
            me->SetMaxPower(POWER_RUNIC_POWER, MAX_ENERGY*10); // runic power go ten by ten
            me->SetPower(POWER_RUNIC_POWER, 0);
            pauseRegen = false;
            castingSpecial = false;
            respawn = false;
            events.Reset();
            energyRegenTimer = 1000;
            respawnTimer = 0;
            summons.DespawnAll();
            if (instance)
                instance->SetData(DATA_NEZIR_EVENT, NOT_STARTED);
        }   

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_CHECK_ENERGY, 500, 0, 0);
            events.ScheduleEvent(EVENT_ICE_PATCH, urand(20000, 25000), 0, 0); // Not sure
            events.ScheduleEvent(EVENT_PERMAFROST, urand(10000, 12000), 0, 0); // Offylike
            events.ScheduleEvent(EVENT_WIND_CHILL, 10000, 0, 0); // Offylike
            events.ScheduleEvent(EVENT_NEZIR_CHECK_POSITION, 1000, 0, 0);

            if (instance)
            {
                instance->SetData(DATA_NEZIR_EVENT, IN_PROGRESS);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ENABLE_OBJECTIVE, me);
            }
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();
            if (instance)
            {
                instance->SetData(DATA_NEZIR_EVENT, DONE);
				instance->SendEncounterUnit(ENCOUNTER_FRAME_DISABLE_OBJECTIVE, me);
            }
            
            me->LowerPlayerDamageReq(me->GetMaxHealth());
        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);
            
            switch (summoned->GetEntry())
            {
                case NPC_ICE_PATCH:
                    summoned->CastSpell(summoned, SPELL_ICE_PATCH_VISUAL, true);
                    // summoned->SetReactState(REACT_PASSIVE);
                    break;
            }
        }

        void DamageTaken(Unit* who, uint32 &damage)
        {
            if (damage >= me->GetHealth())
            {
                if (instance)
                {
                    if (instance->GetData(DATA_ANSHAL_EVENT) == SPECIAL && instance->GetData(DATA_ROHASH_EVENT) == SPECIAL)
                    {
                        instance->SetData(DATA_CONCLAVE_OF_WIND_EVENT, DONE);

                        if (Creature* anshal = me->FindNearestCreature(BOSS_ANSHAL, 500.0f, true))
                            me->getVictim()->Kill(anshal, false);

                        if (Creature* rohash = me->FindNearestCreature(BOSS_ROHASH, 500.0f, true))
                            me->getVictim()->Kill(rohash, false);

                        me->LowerPlayerDamageReq(me->GetMaxHealth());
                        me->getVictim()->Kill(me, false);
                        return;
                    }

                    damage = 0;
                    me->SetHealth(1);
                    pauseRegen = true;
                    respawn = true;
                    
                    if (!me->HasUnitState(UNIT_STATE_CASTING))
                    {
                        respawnTimer = 60000;
                        me->CastSpell(me, SPELL_GATHER_STRENGHT, false);
                    }
                    
                    instance->SetData(DATA_NEZIR_EVENT, SPECIAL);

                    events.DelayEvents(60000);
                }
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (energyRegenTimer <= diff)
            {
                RegenerateEnergy();
                energyRegenTimer = 1000;
            }
            else
                energyRegenTimer -= diff; 

            if (respawnTimer <= diff && respawn)
            {
                pauseRegen = false;
                if (instance)
                    instance->SetData(DATA_NEZIR_EVENT, IN_PROGRESS);
            }
            else
                respawnTimer -= diff;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_CHILLING_WINDS:
                        if (!me->HasAura(SPELL_CHILLING_WINDS))
                            me->CastSpell(me, SPELL_CHILLING_WINDS, true);
                        break;
                    case EVENT_ICE_PATCH:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80.0f, true, 0))
                            me->CastSpell(target, SPELL_ICE_PATCH_SUMMON, true);

                        events.ScheduleEvent(EVENT_ICE_PATCH, urand(20000, 25000), 0, 0);
                        break;
                    case EVENT_PERMAFROST:
                        me->CastSpell(me, SPELL_PERMAFROST, true);
                        events.ScheduleEvent(EVENT_PERMAFROST, urand(10000, 12000), 0, 0);
                        break;
                    case EVENT_WIND_CHILL:
                        me->CastSpell(me, SPELL_WIND_CHILL, true);
                        events.ScheduleEvent(EVENT_WIND_CHILL, 10000, 0, 0);
                        break;
                    case EVENT_CHECK_ENERGY:
                        if (me->GetPower(POWER_RUNIC_POWER) >= MAX_ENERGY * 10 && !castingSpecial)
                        {
                            castingSpecial = true;
                            events.ScheduleEvent(EVENT_SLEET_STORM, 1000, 0, 0);
                        }
                        events.ScheduleEvent(EVENT_CHECK_ENERGY, 500, 0, 0);
                        break;
                    case EVENT_SLEET_STORM:
                        castingSpecial = true;  
                        pauseRegen = true;
                        float homeX, homeY, homeZ, homeO;
                        me->GetHomePosition(homeX, homeY, homeZ, homeO);
                        me->SetPosition(homeX, homeY, homeZ, homeO);
                        me->SetPower(POWER_RUNIC_POWER, 0);
                        me->CastSpell(me->getVictim(), SPELL_SLEET_STORM, true);
                        if (instance)
                            instance->SetData(DATA_SPECIAL, IN_PROGRESS);
                        events.ScheduleEvent(EVENT_NEZIR_RESET_ENERGY, 1000, 0, 0);
                        events.DelayEvents(5800);
                        break;
                    case EVENT_NEZIR_RESET_ENERGY:
                        if (instance)
                            instance->SetData(DATA_SPECIAL, NOT_STARTED);
                        pauseRegen = false;
                        castingSpecial = false;
                        break;
                    case EVENT_NEZIR_CHECK_POSITION:
                    {
                        float homeX, homeY, homeZ, homeO;
                        me->GetHomePosition(homeX, homeY, homeZ, homeO);
                        if (me->GetDistance(homeX, homeY, homeZ) > 70.0f)
                            events.ScheduleEvent(EVENT_CHILLING_WILLS, 4000, 0, 0);
                        else
                        {
                            me->RemoveAura(SPELL_CHILLING_WINDS);
                            events.CancelEvent(EVENT_CHILLING_WILLS);
                        }

                        events.ScheduleEvent(EVENT_NEZIR_CHECK_POSITION, 1000, 0, 0);
                        break;
                    }
                }
            }

            DoMeleeAttackIfReady();
        }

        void DoAction(int32  action)
        {
            switch (action)
            {
                case ACTION_NEZIR_ENTER_IN_COMBAT:
                    if (Player* target = me->SelectNearestPlayer(70.0f))
                    {
                        me->GetMotionMaster()->MoveChase(target, 1.0f, 1.0f);
                        me->Attack(target, true);
                    } else
                    {
                        if (Player* target = me->SelectNearestPlayer(500.0f))
                        {
                            me->Attack(target, false);
                            me->GetMotionMaster()->MoveChase(target, 1.0f, 1.0f);
                        }
                        me->CastSpell(me, SPELL_CHILLING_WINDS, true);
                    }
                    break;
            }
        }
        
        void RegenerateEnergy()
        {
            if (pauseRegen)
                return;

            me->SetPower(POWER_RUNIC_POWER, me->GetPower(POWER_RUNIC_POWER) + RATE_ENERGY*10 );
        }
     };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_nezirAI(creature);
    }
};

/*
############
### Boss Rohash
############ 
*/

enum rohashEvents
{
    EVENT_DEAFENING_WINDS = 1,
    EVENT_WIND_BLAST,
    EVENT_SLICING_GALE,
    EVENT_ROHASH_CHECK_ENERGY,
    EVENT_ROHASH_RESET_ENERGY,
    EVENT_HURRICANE
};

enum rohashSpells
{
    SPELL_SLICING_GALE                            = 86182,
    SPELL_WIND_BLAST_DBM                          = 86193,
    SPELL_WIND_BLAST                              = 85480,
    SPELL_DEFEATING_WINDS                         = 85573,
    SPELL_HURRICANE                               = 84643,
    SPELL_STORM_SHIELD                            = 93059,
};  

class boss_rohash: public CreatureScript
{
    public:
        boss_rohash() : CreatureScript("boss_rohash") { }

    struct boss_rohashAI: public BossAI
    {
        boss_rohashAI(Creature* creature) : BossAI(creature, DATA_ROHASH_EVENT), summons(me)      
        {
            instance = me->GetInstanceScript();
        }
        
        SummonList summons;
        InstanceScript* instance;
        uint32 energyRegenTimer;
        uint32 castWindBlastTimer;
        uint32 respawnTimer;

        bool pauseRegen;
        bool castWind;
        bool castingSpecial;
        bool respawn;

        void Reset()
        {
            me->setPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, MAX_ENERGY);
            me->SetPower(POWER_ENERGY, 0);
            pauseRegen = false;
            castWind = false;
            castingSpecial = false;
            respawn = false;
            events.Reset();
            energyRegenTimer = 0;
            castWindBlastTimer = 0;
            respawnTimer = 0;
            if (instance)
                instance->SetData(DATA_ROHASH_EVENT, NOT_STARTED);
        }

        void AttackStart(Unit* who)
        {
           if (!who)
               return;

           AttackStartNoMove(who);
        }

        void EnterCombat(Unit* who)
        {
            energyRegenTimer = 1000;
            events.ScheduleEvent(EVENT_SLICING_GALE, 4000, 0, 0);
            events.ScheduleEvent(EVENT_WIND_BLAST, urand(22000, 25000), 0, 0);
            events.ScheduleEvent(EVENT_ROHASH_CHECK_ENERGY, 500, 0, 0);

            if (instance)
            {
                instance->SetData(DATA_ROHASH_EVENT, IN_PROGRESS);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ENABLE_OBJECTIVE, me);
            }
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();

            if (instance)
            {
                instance->SetData(DATA_ROHASH_EVENT, DONE);
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISABLE_OBJECTIVE, me);
            }
        }

        void JustSummoned(Creature* summoned)
        {
            summons.Summon(summoned);
        }

        void DamageTaken(Unit* who, uint32 &damage)
        {
            if (damage >= me->GetHealth())
            {
                if (instance)
                {
                    if (instance->GetData(DATA_ANSHAL_EVENT) == SPECIAL && instance->GetData(DATA_NEZIR_EVENT) == SPECIAL)
                    {
                        instance->SetData(DATA_CONCLAVE_OF_WIND_EVENT, DONE);

                        if (Creature* anshal = me->FindNearestCreature(BOSS_ANSHAL, 500.0f, true))
                            me->getVictim()->Kill(anshal, false);

                        if (Creature* nezir = me->FindNearestCreature(BOSS_NEZIR, 500.0f, true))
                        {
                            nezir->LowerPlayerDamageReq(nezir->GetMaxHealth());
                            me->getVictim()->Kill(nezir, false);
                        }

                        me->getVictim()->Kill(me, false);
                        return;
                    }

                    damage = 0;
                    me->SetHealth(1);
                    pauseRegen = true;
                    respawn = true;
                    
                    if (!me->HasUnitState(UNIT_STATE_CASTING))
                    {
                        respawnTimer = 60000;
                        me->CastSpell(me, SPELL_GATHER_STRENGHT, false);
                    }
                    
                    instance->SetData(DATA_ROHASH_EVENT, SPECIAL);

                    events.DelayEvents(60000);
                }
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (energyRegenTimer <= diff)
            {
                RegenerateEnergy();
                energyRegenTimer = 1000;
            }
            else
                energyRegenTimer -= diff;            

            
            if (castWindBlastTimer <= diff && castWind)
            {
                castWind = false;
                me->CastSpell(me, SPELL_WIND_BLAST, true);
                if (me->GetMap()->IsHeroic())
                    me->CastSpell(me, SPELL_STORM_SHIELD, true);

                events.ScheduleEvent(EVENT_WIND_BLAST, 60000, 0, 0);
            }
            else
                castWindBlastTimer -= diff;    

            if (respawnTimer <= diff && respawn)
            {
                pauseRegen = false;
                if (instance)
                    instance->SetData(DATA_ROHASH_EVENT, IN_PROGRESS);
            }
            else
                respawnTimer -= diff;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_DEAFENING_WINDS:
                        if (!me->HasAura(SPELL_DEFEATING_WINDS))
                            me->CastSpell(me, SPELL_DEFEATING_WINDS, true);
                        break;
                    case EVENT_SLICING_GALE:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 70.0f, true, 0))
                        {
                            me->CastSpell(target, SPELL_SLICING_GALE, false);
                            events.CancelEvent(EVENT_DEAFENING_WINDS);
                            me->RemoveAura(SPELL_DEFEATING_WINDS);
                        }
                        else 
                        {
                            if (instance)
                            {
                                if (instance->GetData(DATA_ROHASH_EVENT) != SPECIAL)
                                    events.ScheduleEvent(EVENT_DEAFENING_WINDS, 6000, 0, 0);
                            } else
                                events.ScheduleEvent(EVENT_DEAFENING_WINDS, 6000, 0, 0);
                        }
                            
                        events.ScheduleEvent(EVENT_SLICING_GALE, 2100, 0, 0);
                        break;
                    case EVENT_WIND_BLAST:
                        me->CastSpell(me, SPELL_WIND_BLAST_DBM, true);
                        castWindBlastTimer = 5000;
                        castWind = true;
                        break;
                    case EVENT_ROHASH_CHECK_ENERGY:
                        if (me->GetPower(POWER_ENERGY) >= MAX_ENERGY && !castingSpecial)
                        {
                            castingSpecial = true;
                            events.ScheduleEvent(EVENT_HURRICANE, 1000, 0, 0);
                        }
                        events.ScheduleEvent(EVENT_ROHASH_CHECK_ENERGY, 500, 0, 0);
                        break;
                    case EVENT_HURRICANE:
                        castingSpecial = true;  
                        pauseRegen = true;
                        float homeX, homeY, homeZ, homeO;
                        me->GetHomePosition(homeX, homeY, homeZ, homeO);
                        me->SetPosition(homeX, homeY, homeZ, homeO);
                        me->SetPower(POWER_ENERGY, 0);
                        me->CastSpell(me->getVictim(), SPELL_HURRICANE, true);
                        events.ScheduleEvent(EVENT_ROHASH_RESET_ENERGY, 1000, 0, 0);
                        events.DelayEvents(5800);
                        break;
                    case EVENT_ROHASH_RESET_ENERGY:
                        pauseRegen = false;
                        castingSpecial = false;
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }

        void DoAction(int32  action)
        {
            switch (action)
            {
                case ACTION_ROHASH_ENTER_IN_COMBAT:
					if (Player* target = me->SelectNearestPlayer(70.0f))
                        me->Attack(target, false);
                    else
                    {
                        me->CastSpell(me, SPELL_DEFEATING_WINDS, true);
                        if (Player* target = me->SelectNearestPlayer(500.0f))
                            me->Attack(target, false);
                    }
                    break;
            }
        }

        void RegenerateEnergy()
        {
            if (pauseRegen)
                return;

            me->SetPower(POWER_ENERGY, me->GetPower(POWER_ENERGY) + RATE_ENERGY);
        }
     };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_rohashAI(creature);
    }
};

void AddSC_boss_conclave_of_wind()
{
    new boss_anshal();
    new npc_ravenous_creeper_trigger();
    new npc_ravenous_creeper();
    new boss_nezir();
    new boss_rohash();
}