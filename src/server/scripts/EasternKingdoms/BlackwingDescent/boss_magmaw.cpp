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

#include "ScriptPCH.h"
#include "blackwing_descent.h"

enum Spells
{
    SPELL_MAGMA_SPIT                    = 78068,
    SPELL_LAVA_SPEW                     = 77690,
    SPELL_BERSERK                       = 26662,
    SPELL_MOLTEN_TANTRUM                = 78403,

    SPELL_SWELTERING_ARMOR              = 78199,

    SPELL_MASSIVE_CRASH                 = 91921,

    // Pillar of Flame
    SPELL_PILLAR_OF_FLAME               = 78006,
    SPELL_PARASITE_SPAWN                = 77970, 
    SPELL_LAVA_EFFECT                   = 91918,

    SPELL_PARASITIC_INFECTION           = 78941,

    // Ignition
    SPELL_IGNITION_AURA                 = 92131,
    SPELL_IGNITION_TRIGGER_SPAWN        = 92121,

    // Magmas Head
    SPELL_POINT_OF_VULNERABILITY        = 79011,
    SPELL_RIDE_VEHICLE                  = 78360, 

    SPELL_LAUNCH_HOOK                   = 77917,

    SPELL_CUSTOM_STATE_05               = 45799,
    SPELL_COSMETIC_CHAINS               = 65612,
    SPELL_LAVA_ERRUPT_EMOTE             = 79461,
};

enum Events
{
    EVENT_MAGMA_SPIT = 1,
    EVENT_PILLAR_OF_FLAME,
    EVENT_LAVA_SPEW,
    EVENT_IN_RANGE_CHECK,
    EVENT_MANGLE,
    EVENT_MASSIVE_CRASH,
    EVENT_LEAVE_HEAD_PHASE,
    EVENT_LEAVE_GROUND_PHASE,

    EVENT_BERSERK,
};

enum Actions
{
    ACTION_START_GROUND_PHASE,
};

Position const HeroicPositions[1] =
{
    {-302.969055f, -7.754232f, 245.336243f, 4.261655f}, // Nefarians Position
};

class boss_magmaw : public CreatureScript
{
public:
    boss_magmaw() : CreatureScript("boss_magmaw") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_magmawAI (creature);
    }

    struct boss_magmawAI : public BossAI
    {
        boss_magmawAI(Creature* creature) : BossAI(creature, DATA_MAGMAW)
        {
            instance = creature->GetInstanceScript();
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
        }

        InstanceScript* instance;
        EventMap events;
        bool isInManglePhase;
        uint32 emoteTimer;

        void Reset()
        {
            events.Reset();
            isInManglePhase = false;
            DespawnMinions();
            emoteTimer = 20000;

            me->SetReactState(REACT_PASSIVE);

            if (instance)
                instance->SetData(DATA_MAGMAW, NOT_STARTED);

            _Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoZoneInCombat();
            if(Creature* head = ObjectAccessor::GetCreature(*me, instance->GetData64(NPC_MAGMAWS_HEAD)))
                head->AI()->DoZoneInCombat(head);

            events.ScheduleEvent(EVENT_MAGMA_SPIT, urand(11000, 13000));
            events.ScheduleEvent(EVENT_LAVA_SPEW, urand(20000, 25000));
            events.ScheduleEvent(EVENT_PILLAR_OF_FLAME, 30000);
            events.ScheduleEvent(EVENT_MANGLE, 45000);
            events.ScheduleEvent(EVENT_BERSERK, 600000); // 10 Min

            if(me->GetMap()->IsHeroic())
            {
                if (Creature* nefarian = me->SummonCreature(NPC_NEFARIAN_HELPER_HEROIC, HeroicPositions[0], TEMPSUMMON_MANUAL_DESPAWN))
                    nefarian->AI()->DoZoneInCombat();
            }

            _EnterCombat();

            if (instance)
                instance->SetData(DATA_MAGMAW, IN_PROGRESS);
        }

        void UpdateAI(uint32 diff)
        {
            if(!me->isInCombat())
            {
                if (emoteTimer <= diff) 
                {
                    DoCast(me, SPELL_LAVA_ERRUPT_EMOTE, true);

                    emoteTimer = 30000;
                } else
                    emoteTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_MAGMA_SPIT:
                        // Cast spell to 3-8 players
                        for (uint8 i = 0; i < RAID_MODE(3, 8); i++)
                        {
                            if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200.0f, true))
                                me->CastSpell(target, SPELL_MAGMA_SPIT, true);
                        }

                        events.ScheduleEvent(EVENT_MAGMA_SPIT, urand(15000, 17000));
                        break;
                    case EVENT_LAVA_SPEW:
                        DoCastAOE(SPELL_LAVA_SPEW);

                        events.ScheduleEvent(EVENT_LAVA_SPEW, urand(20000, 25000));
                        break;
                    case EVENT_PILLAR_OF_FLAME:
                        if(Unit* target = SelectTarget(SELECT_TARGET_FARTHEST, 0, 500.0f, true))
                            me->SummonCreature(NPC_PILLAR_OF_FLAME_TRIGGER, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_CORPSE_DESPAWN);		

                        events.ScheduleEvent(EVENT_PILLAR_OF_FLAME, 30000);
                        break;
                    case EVENT_BERSERK:
                        DoCast(me, SPELL_BERSERK);
                        break;
                    case EVENT_MANGLE:
                        me->AddAura(SPELL_SWELTERING_ARMOR, me->getVictim());

                        events.ScheduleEvent(EVENT_MASSIVE_CRASH, 12000);
                        events.ScheduleEvent(EVENT_MANGLE, 90000);
                        break;
                    case EVENT_MASSIVE_CRASH:
                        me->AttackStop();
                        me->SetReactState(REACT_PASSIVE);
                        DoCastAOE(SPELL_MASSIVE_CRASH);
                        me->AddAura(SPELL_CUSTOM_STATE_05, me);

                        me->CastSpell(me, SPELL_POINT_OF_VULNERABILITY, true);

                        events.CancelEvent(EVENT_MAGMA_SPIT);
                        events.CancelEvent(EVENT_LAVA_SPEW);
                        events.CancelEvent(EVENT_IN_RANGE_CHECK);
                        events.CancelEvent(EVENT_PILLAR_OF_FLAME);

                        events.ScheduleEvent(EVENT_LEAVE_GROUND_PHASE, 20000);
                        break;
                    case EVENT_LEAVE_GROUND_PHASE:
                        me->SetReactState(REACT_AGGRESSIVE);
                        me->RemoveAura(SPELL_CUSTOM_STATE_05);
                        me->RemoveAura(SPELL_POINT_OF_VULNERABILITY);

                        events.ScheduleEvent(EVENT_MAGMA_SPIT, urand(11000, 13000));
                        events.ScheduleEvent(EVENT_LAVA_SPEW, urand(20000, 25000));
                        events.ScheduleEvent(EVENT_PILLAR_OF_FLAME, 30000);

                        events.ScheduleEvent(EVENT_IN_RANGE_CHECK, 5000);
                        break;
                }
            }

            if(!me->HasAura(SPELL_CUSTOM_STATE_05))
                DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature *summon)
        {
            if(summon->GetEntry() == NPC_IGNITION_TRIGGER)
            {
                summon->SetReactState(REACT_PASSIVE);
                summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            }
            else if (summon->GetEntry() != NPC_PILLAR_OF_FLAME_TRIGGER)
            {
                summon->setActive(true);
                summon->AI()->DoZoneInCombat(summon);
            }
        }

        void JustDied(Unit* /*killer*/)
        {
            if(Creature* head = ObjectAccessor::GetCreature(*me, instance->GetData64(NPC_MAGMAWS_HEAD)))
                head->DisappearAndDie();

            DespawnMinions();

            if (instance)
                instance->SetData(DATA_MAGMAW, DONE);

            _JustDied();
        }

        void DamageTaken(Unit* who, uint32& damage)
        {
            if(me->HasReactState(REACT_PASSIVE))
                me->SetReactState(REACT_AGGRESSIVE);
        }

        private:

            inline void DespawnMinions()
            {
                DespawnCreatures(NPC_IGNITION_TRIGGER);
                DespawnCreatures(NPC_LAVA_PARASITE);
                DespawnCreatures(NPC_LAVA_PARASITE_2);

                DespawnCreatures(NPC_NEFARIAN_HELPER_HEROIC);
                DespawnCreatures(NPC_BLAZING_BONE_CONSTRUCT);
                DespawnCreatures(NPC_PILLAR_OF_FLAME_TRIGGER);
                
                if (instance)
                    instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_PARASITIC_INFECTION);
            }

            void DespawnCreatures(uint32 entry)
            {
                std::list<Creature*> creatures;
                GetCreatureListWithEntryInGrid(creatures, me, entry, 1000.0f);

                if (creatures.empty())
                    return;

                for (std::list<Creature*>::iterator iter = creatures.begin(); iter != creatures.end(); ++iter)
                    (*iter)->DespawnOrUnsummon();
            }
    };
};

class mob_magmaws_head : public CreatureScript
{
public:
    mob_magmaws_head() : CreatureScript("mob_magmaws_head") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_magmaws_headAI (creature);
    }

    struct mob_magmaws_headAI : public ScriptedAI
    {
        mob_magmaws_headAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
            creature->SetReactState(REACT_PASSIVE);
        }

        InstanceScript* instance;

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        }

        void DamageTaken(Unit* /*who*/, uint32& damage)
        {
        }
    };
};

enum parasiteEvents
{
    EVENT_INFECTION = 1,
};

class npc_lava_parasite : public CreatureScript
{
public:
    npc_lava_parasite() : CreatureScript("npc_lava_parasite") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_lava_parasiteAI (creature);
    }

    struct npc_lava_parasiteAI : public ScriptedAI
    {
        npc_lava_parasiteAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;

        void Reset()
        {
            events.Reset();    
            me->SetSpeed(MOVE_WALK, 0.8f, true);
            me->SetSpeed(MOVE_RUN, 0.8f, true);
        }

        void EnterCombat(Unit* victim)
        {
            events.ScheduleEvent(EVENT_INFECTION, 500);
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
                    case EVENT_INFECTION:
                        if (me->GetDistance(me->getVictim()) <= 3.5f)
                            if (!me->getVictim()->HasAura(78941))
                                me->AddAura(78941 , me->getVictim());

                        events.ScheduleEvent(EVENT_INFECTION, 500);
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

class mob_pillar_of_flame_trigger : public CreatureScript
{
public:
    mob_pillar_of_flame_trigger() : CreatureScript("mob_pillar_of_flame_trigger") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_pillar_of_flame_triggerAI (creature);
    }

    struct mob_pillar_of_flame_triggerAI : public ScriptedAI
    {
        mob_pillar_of_flame_triggerAI(Creature* creature) : ScriptedAI(creature),Intialized(false)
        {
            creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
        }

        uint32 uiErruptTime;
        uint32 uiSpawnTime;
        bool Intialized;

        void Reset()
        {
            uiErruptTime = 8000;
            uiSpawnTime = 3000;
            Intialized = false;
        }

        void IsSummonedBy(Unit* summoner)
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetSpeed(MOVE_WALK, 0.0f, true);
            me->SetSpeed(MOVE_RUN, 0.0f, true);
            me->AddAura(97360, me);

            DoCastAOE(SPELL_PILLAR_OF_FLAME, true); // This is only for DBM warnings etc...

            uiErruptTime = 8000;
            uiSpawnTime = 3000;
            Intialized = true;
        }

        void UpdateAI(uint32 diff)
        {
            if(!Intialized)
                return;

            if (uiErruptTime <= diff)
            {
                me->DespawnOrUnsummon();

            } else uiErruptTime -= diff;

            if (uiSpawnTime <= diff)
            {
                DoCastAOE(SPELL_PARASITE_SPAWN, true);
                uiSpawnTime = 5000000;
            } else
                uiSpawnTime -= diff;
        }

        void JustSummoned(Creature *summon)
        {
            summon->setActive(true);
            summon->AI()->DoZoneInCombat(summon);
            summon->SetSpeed(MOVE_WALK, 0.8f, true);
            summon->SetSpeed(MOVE_RUN, 0.8f, true);
        }
    };
};

void AddSC_boss_magmaw()
{
    new boss_magmaw();
    new mob_magmaws_head();
    new mob_pillar_of_flame_trigger();
    new npc_lava_parasite();
}