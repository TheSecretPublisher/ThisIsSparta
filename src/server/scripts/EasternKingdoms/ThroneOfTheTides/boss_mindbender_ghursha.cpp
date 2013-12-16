/*
* Copyright (C) 2005 - 2012 MaNGOS <http://www.getmangos.org/>
*
* Copyright (C) 2008 - 2012 TrinityCore <http://www.trinitycore.org/>
*
* Copyright (C) 2011 - 2012 Naios <https://github.com/Naios>
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
#include "throne_of_the_tides.h"

Creature* pErunak;
Creature* pMindbender;

enum Yells
{
    SAY_PHASE_1_END_MINDBENDER = -1643011,
    SAY_PHASE_1_END_ERUNAK = -1643012,
    SAY_MIND_CONTROL_1 = -1643013,
    SAY_MIND_CONTROL_2 = -1643014,
    SAY_MIND_CONTROL_3 = -1643015,
    SAY_MIND_FOG = -1643016,
    SAY_DEATH = -1643017,
    SAY_WIN_ERUNAK = -1643018,
};

enum Events
{
    // Erunak
    EVENT_EARTH_SHARDS = 1,
    EVENT_EMBERSTRIKE,
    EVENT_LAVA_BOLT,
    EVENT_MAGMA_SPLASH,

    // Ghursha
    EVENT_ENSLAVE,
    EVENT_ABSORB_MAGIC,
    EVENT_MIND_FOG,
    EVENT_UNRELENTING_AGONY,
};

enum Spells
{
    // Erunak Stonespeaker
    SPELL_EARTH_SHARDS = 84931, // VISUAL - missle?
    SPELL_EARTH_SHARD_AURA = 84935,
    SPELL_EARTH_SHARD_SUMMON = 84934,

    SPELL_EMBERSTRIKE = 76165,
    SPELL_LAVA_BOLT = 76171,
    SPELL_MAGMA_SPLASH = 76170,

    // Mindbender Ghur'sha
    SPELL_ENSLAVE = 76207,
    SPELL_ENSLAVE_BUFF = 76213, // Should be in SPELL_LINKED_SPELL with SPELL_ENSLAVE
    SPELL_ABSORB_MAGIC = 76307,
    SPELL_MIND_FOG_SUMMON = 76234,
    SPELL_MIND_FOG_AURA = 76230,
    SPELL_MIND_FOG_VISUAL = 76231,
    SPELL_UNRELENTING_AGONY = 76339,
};

struct NotCharmedTargetSelector : public std::unary_function<Unit *, bool> 
{
    NotCharmedTargetSelector() {}

    bool operator() (const Unit *pTarget) 
	{
        return (!pTarget->isCharmed());
    }
};


class boss_erunak_stonespeaker : public CreatureScript
{
public:
    boss_erunak_stonespeaker() : CreatureScript("boss_erunak_stonespeaker") { }


    CreatureAI* GetAI(Creature *creature) const
    {
        return new boss_erunak_stonespeakerAI(creature);
    }

    struct boss_erunak_stonespeakerAI : public ScriptedAI
    {
        boss_erunak_stonespeakerAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
            pErunak = me;
        }

        InstanceScript* instance;
        EventMap events;
        bool isInGhurshaPhase;

        void Reset()
        {
            events.Reset();
            isInGhurshaPhase = false;

            if (instance)
                instance->SetData(DATA_MINDEBENDER_GHURSHA, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {

            events.ScheduleEvent(EVENT_EARTH_SHARDS, 20000);
            events.ScheduleEvent(EVENT_EMBERSTRIKE, 11000);
            events.ScheduleEvent(EVENT_LAVA_BOLT, 6500);
            events.ScheduleEvent(EVENT_MAGMA_SPLASH, 17000);

            if (instance)
                instance->SetData(DATA_MINDEBENDER_GHURSHA, IN_PROGRESS);
        }

        void SummonedCreatureDespawn(Creature* summon)
        {
            if(instance && instance->GetData(DATA_MINDEBENDER_GHURSHA) != DONE)
            {
                me->setFaction(14);
                me->GetMotionMaster()->MoveTargetedHome();
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(me->GetHealthPct() < 50 && !isInGhurshaPhase)
            {
                isInGhurshaPhase = true;
                me->setFaction(35);
                Position pos;
                me->GetPosition(&pos);

                me->SummonCreature(BOSS_MINDBENDER_GHURSHA, pos, TEMPSUMMON_MANUAL_DESPAWN, 100000);
            }

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {

                case EVENT_EARTH_SHARDS:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_EARTH_SHARDS);

                    DoCast(me, SPELL_EARTH_SHARD_SUMMON);
                    events.ScheduleEvent(EVENT_EARTH_SHARDS, 20000);
                    break;
                case EVENT_EMBERSTRIKE:
                    DoCastVictim(SPELL_EMBERSTRIKE);
                    events.ScheduleEvent(EVENT_EMBERSTRIKE, 11000);
                    break;
                case EVENT_LAVA_BOLT:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_LAVA_BOLT);

                    events.ScheduleEvent(EVENT_LAVA_BOLT, 6500);
                    break;
                case EVENT_MAGMA_SPLASH:
                    DoCastAOE(SPELL_MAGMA_SPLASH);
                    events.ScheduleEvent(EVENT_MAGMA_SPLASH, 17000);
                    break;
                }
            }            

            DoMeleeAttackIfReady();
        }
    };
};

class boss_mindbender_ghursha : public CreatureScript
{
public:
    boss_mindbender_ghursha() : CreatureScript("boss_mindbender_ghursha") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_mindbender_ghurshaAI (creature);
    }

    struct boss_mindbender_ghurshaAI : public ScriptedAI
    {
        boss_mindbender_ghurshaAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        bool Enslaved;

        uint32 TargetTimer;
        uint32 EnslaveTimer;
        uint32 AbsorbMagicTimer;
        uint32 MindFogTimer;
        uint32 UnrelentingAgonyTimer;
        uint32 CastTimer;
        uint32 EnslaveEndTimer;
        Unit* EnslaveTarget;
        void EnterCombat(Unit* /*who*/)
        {
            events.ScheduleEvent(EVENT_ENSLAVE, 13000);
            events.ScheduleEvent(EVENT_ABSORB_MAGIC, 20000);
            events.ScheduleEvent(EVENT_MIND_FOG, urand(6000,12000));
            events.ScheduleEvent(EVENT_UNRELENTING_AGONY, 10000);
            me->SetReactState(REACT_AGGRESSIVE);
            me->setFaction(14);
            TargetTimer = 3000;
            EnslaveTimer = 5000;
            AbsorbMagicTimer = 20000;
            MindFogTimer = urand(6000,12000);
            UnrelentingAgonyTimer = 10000;
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                return;

            
            if (TargetTimer <= diff && Enslaved == false)
                {
                    EnslaveTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true); // Don't CS the tank
                    TargetTimer = 1000;
                } 
            else TargetTimer -= diff;

            if (EnslaveEndTimer <= diff && Enslaved == true){
                me->SetReactState(REACT_AGGRESSIVE);
                EnslaveTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true); // Don't CS the tank
                EnslaveTarget->RemoveAurasDueToSpell(SPELL_ENSLAVE);
                EnslaveTarget->RemoveAurasDueToSpell(SPELL_ENSLAVE_BUFF);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                Enslaved = false;
                EnslaveTimer = 30000;
                AbsorbMagicTimer = 20000;
                MindFogTimer = urand(6000,12000);
                UnrelentingAgonyTimer = 10000;
                EnslaveEndTimer = 90000;
            } else EnslaveEndTimer -= diff;

            if (EnslaveTimer <= diff && Enslaved == false){
                if (EnslaveTarget){
                    DoZoneInCombat();
                    me->SetReactState(REACT_PASSIVE);
                    DoCast(EnslaveTarget, SPELL_ENSLAVE);
                    DoCast(EnslaveTarget, SPELL_ENSLAVE_BUFF);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
					me->TextEmote(RAND(SAY_MIND_CONTROL_1,SAY_MIND_CONTROL_2,SAY_MIND_CONTROL_3),NULL);
                    Enslaved = true;
                    EnslaveTimer = 180000;
                    AbsorbMagicTimer = 180000;
                    MindFogTimer = 180000;
                    UnrelentingAgonyTimer = 180000;
                    EnslaveEndTimer = DUNGEON_MODE(60000,30000);
                    CastTimer = 2000;
                }
                EnslaveTimer = 1000;
            } 
            else EnslaveTimer -= diff;
            if (EnslaveTarget && Enslaved == true)
                if (EnslaveTarget->HealthBelowPct(50)){
                    me->SetReactState(REACT_AGGRESSIVE);
                    EnslaveTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true);
                    EnslaveTarget->RemoveAurasDueToSpell(SPELL_ENSLAVE);
                    EnslaveTarget->RemoveAurasDueToSpell(SPELL_ENSLAVE_BUFF);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    Enslaved = false;
                    EnslaveTimer = 30000;
                    AbsorbMagicTimer = 20000;
                    MindFogTimer = urand(6000,12000);
                    UnrelentingAgonyTimer = 10000;
                }

                if (CastTimer <= diff && Enslaved == true){
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1))
                            {
                                switch(EnslaveTarget->getClass())
                                {
                                    case CLASS_DRUID:
                                        if (urand(0,1))
                                            EnslaveTarget->CastSpell(pTarget, 8921, false);
                                        else
                                            EnslaveTarget->CastSpell(me, 774, false);
                                        break;
                                    case CLASS_HUNTER:
                                        EnslaveTarget->CastSpell(pTarget, RAND(2643, 1978), false);
                                        break;
                                    case CLASS_MAGE:
                                        EnslaveTarget->CastSpell(pTarget, RAND(44614, 30455), false);
                                        break;
                                    case CLASS_WARLOCK:
                                        EnslaveTarget->CastSpell(pTarget, RAND(980, 686), true);
                                        break;
                                    case CLASS_WARRIOR:
                                        EnslaveTarget->CastSpell(pTarget, RAND(46924, 845), false);
                                        break;
                                    case CLASS_PALADIN:
                                        if (urand(0,1))
                                            EnslaveTarget->CastSpell(pTarget, 853, false);
                                        else
                                            EnslaveTarget->CastSpell(me, 20473, false);
                                        break;
                                    case CLASS_PRIEST:
                                        if (urand(0,1))
                                            EnslaveTarget->CastSpell(pTarget, 34914, false);
                                        else
                                            EnslaveTarget->CastSpell(me, 139, false);
                                        break;
                                    case CLASS_SHAMAN:
                                        if (urand(0,1))
                                            EnslaveTarget->CastSpell(pTarget, 421, false);
                                        else
                                            EnslaveTarget->CastSpell(me, 61295, false);
                                        break;
                                    case CLASS_ROGUE:
                                        EnslaveTarget->CastSpell(pTarget, RAND(16511, 1329), false);
                                        break;
                                    case CLASS_DEATH_KNIGHT:
                                        if (urand(0,1))
                                            EnslaveTarget->CastSpell(pTarget, 45462, true);
                                        else
                                            EnslaveTarget->CastSpell(pTarget, 49184, true);
                                        break;
                                }
                            }
                            CastTimer = 3000;
                        } else CastTimer -= diff;
  
                        if (AbsorbMagicTimer <= diff && Enslaved == false)
                        {
                            DoCast(me, SPELL_ABSORB_MAGIC);
                            AbsorbMagicTimer = urand(15000, 20000);
                        } else AbsorbMagicTimer -= diff;

                        if (MindFogTimer <= diff && Enslaved == false)
                        {
                            DoCast(me, SPELL_MIND_FOG_SUMMON);
                            me->TextEmote(SAY_MIND_FOG, NULL);
                            MindFogTimer = 18000;
                        } else MindFogTimer -= diff;

                        if (UnrelentingAgonyTimer <= diff && Enslaved == false)
                        {
                            DoCastAOE(SPELL_UNRELENTING_AGONY);
                            UnrelentingAgonyTimer = 20000;
                        } else UnrelentingAgonyTimer -= diff;        
		
            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            instance->SetData(DATA_MINDEBENDER_GHURSHA, DONE);
            instance->SetData(DATA_ERUNAK_STONESPEAKER_EVENT, DONE);
        }
    };
};

void DespawnCreatures(uint32 entry, Unit* me)
{
    std::list<Creature*> creatures;
    GetCreatureListWithEntryInGrid(creatures, me, entry, 100.0f);

    if (creatures.empty())
        return;

    for (std::list<Creature*>::iterator iter = creatures.begin(); iter != creatures.end(); ++iter)
        (*iter)->DespawnOrUnsummon();
}

void AddSC_boss_erunak_stonespeaker()
{
    new boss_erunak_stonespeaker();
    new boss_mindbender_ghursha();
}