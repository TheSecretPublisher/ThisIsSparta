/*
* Copyright (C) 2012 - 2013 Forgotten Lands <http://www.forgottenlands.eu/>
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

enum Events
{
    // Groundphase
    EVENT_SONAR_PULSE = 1,
    EVENT_MODULATION,
    EVENT_SONIC_BREATH,
    EVENT_SEARING_FLAMES,
    EVENT_REMOVE_TRACK,
    EVENT_ROARING_FLAME_BREATH,
    EVENT_SONAR_BOMB,
    EVENT_BERSERK,
    EVENT_PHASE_1,
    EVENT_PHASE_2,
};

enum Spells
{
    SPELL_SOUND_BAR_APPLY                         = 89683,
    SPELL_SOUND_BAR                               = 88824,
    SPELL_MODULATION                              = 77612,
    SPELL_SONIC_BREATH                            = 78098,
    SPELL_TRACKING                                = 78092,
    SPELL_SEARING_FLAMES                          = 77840,
    SPELL_ROARING_FLAME_BREATH                    = 78221,
    SPELL_SONAR_BOMB                              = 92557,
    SPELL_SONIC_FIREBALL                          = 78115,
    SPELL_VERTIGO                                 = 77717,
    SPELL_DEVASTION_TRIGGER                       = 78898,
    SPELL_NOISY                                   = 78897,
};


enum points
{
    POINT_MIDDLE_ROOM = 1,
    POINT_HOVER,
    POINT_MIDDEL_ROOM_2
};

class boss_atramedes : public CreatureScript
{
public:
    boss_atramedes() : CreatureScript("boss_atramedes") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_atramedesAI(creature);
    }

    struct boss_atramedesAI : public BossAI
    {
        boss_atramedesAI(Creature* creature) : BossAI(creature, DATA_ATRAMEDES), summons(me)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        SummonList summons;
        uint8 flameCount;
        uint8 phase;

        void Reset()
        {
            _Reset();
            summons.DespawnAll();
            flameCount = 0;
            phase = 0;

            me->SetHover(false);
            me->SetDisableGravity(false);
            me->SetCanFly(false);

            me->SetReactState(REACT_AGGRESSIVE);

            // Respawn Shields
            std::list<Creature*> unitList;
            me->GetCreatureListWithEntryInGrid(unitList, 42949, 100.0f);
            for (std::list<Creature*>::const_iterator itr = unitList.begin(); itr != unitList.end(); ++itr)
            {
                if (*itr)
                    (*itr)->Respawn(true);
            }

            if (instance)
                instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SOUND_BAR);
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->AddAura(SPELL_SOUND_BAR_APPLY, me);
            me->AddAura(SPELL_DEVASTION_TRIGGER, me);

            events.ScheduleEvent(EVENT_SONAR_PULSE, 12000);
            events.ScheduleEvent(EVENT_MODULATION,  10000);
            events.ScheduleEvent(EVENT_SONIC_BREATH, 25000);
            events.ScheduleEvent(EVENT_SEARING_FLAMES, 40000);
            
            flameCount = 0;
            phase = 0;
            _EnterCombat();
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_SONAR_PULSE:
                        // Send 4 / 8 Discs to random players
                        for (int i = 0; i < RAID_MODE(4, 8); i++)
                        {
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, 0))
                            {
                                Position pos;
                                me->GetPosition(&pos);
                                if (Creature* sonar = me->SummonCreature(49623, pos, TEMPSUMMON_TIMED_DESPAWN, 12000, 0))
                                {
                                    sonar->SetReactState(REACT_PASSIVE);
                                    sonar->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                                    sonar->SetHover(true);
                                    sonar->SetDisableGravity(true);
                                    sonar->SetCanFly(true);
                                    float ownerOrientation = me->GetAngle(target->GetPositionX(), target->GetPositionY());
                                    sonar->GetMotionMaster()->MovePoint(0, sonar->GetPositionX() + 120 / 2 * cos(ownerOrientation), sonar->GetPositionY() + 120 / 2 * sin(ownerOrientation), sonar->GetPositionZ());
                                }
                            }
                        }
                        events.ScheduleEvent(EVENT_SONAR_PULSE, 12000);
                        break;
                    case EVENT_MODULATION:
                        DoCastAOE(SPELL_MODULATION, true);
                        events.ScheduleEvent(EVENT_MODULATION,  18000);
                        break;
                    case EVENT_SONIC_BREATH:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, 0))
                        {
                            me->AddAura(SPELL_TRACKING, target);
                            Position pos;
                            target->GetPosition(&pos);
                            if (Creature* trackMob = me->SummonCreature(41879, pos, TEMPSUMMON_TIMED_DESPAWN, 6500, 0))
                            {
                                trackMob->Attack(target, true);
                                trackMob->AddThreat(target, 10000.0f);
                                trackMob->GetMotionMaster()->MoveFollow(target, 0.5f, 0.0f);
                                DoCastAOE(SPELL_SONIC_BREATH);
                            }
                            
                            events.ScheduleEvent(EVENT_SONIC_BREATH, 40000);
                            events.ScheduleEvent(EVENT_REMOVE_TRACK, 6500);
                        }
                        break;
                    case EVENT_REMOVE_TRACK:
                        if (instance)
                            instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_TRACKING);
                        break;
                    case EVENT_SEARING_FLAMES:
                        DoCastAOE(SPELL_SEARING_FLAMES);
                        events.ScheduleEvent(EVENT_SEARING_FLAMES, 40000);
                        events.ScheduleEvent(EVENT_PHASE_2, 8000);
                        break;
                    case EVENT_PHASE_2:
                        events.CancelEvent(EVENT_SEARING_FLAMES);
                        events.CancelEvent(EVENT_SONIC_BREATH);
                        events.CancelEvent(EVENT_MODULATION);
                        events.CancelEvent(EVENT_SONAR_PULSE);
                        flameCount = 0;

                        // Go To The Middle
                        me->SetReactState(REACT_PASSIVE);
                        me->AttackStop();
                        me->GetMotionMaster()->MovePoint(POINT_MIDDLE_ROOM, 133.37f, -225.427f, 75.453f);
                        break;
                    case EVENT_PHASE_1:
                        events.CancelEvent(EVENT_ROARING_FLAME_BREATH);
                        events.CancelEvent(EVENT_SONAR_BOMB);
                        events.ScheduleEvent(EVENT_SONAR_PULSE, 12000);
                        events.ScheduleEvent(EVENT_MODULATION,  10000);
                        events.ScheduleEvent(EVENT_SONIC_BREATH, 25000);
                        events.ScheduleEvent(EVENT_SEARING_FLAMES, 40000);

                        phase = 0;
                        me->GetMotionMaster()->MovePoint(POINT_MIDDEL_ROOM_2, 133.37f, -225.427f, 75.453f);
                        break;
                    case EVENT_ROARING_FLAME_BREATH:
                        if (flameCount == 4)
                        {
                            events.ScheduleEvent(EVENT_PHASE_1, 1000);
                            return;
                        }

                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, 0))
                        {
                            me->AddAura(SPELL_TRACKING, target);
                            Position pos;
                            target->GetPosition(&pos);
                            if (Creature* trackMob = me->SummonCreature(41962, pos, TEMPSUMMON_TIMED_DESPAWN, 10000, 0))
                            {
                                trackMob->Attack(target, true);
                                trackMob->AddThreat(target, 10000.0f);
                                trackMob->GetMotionMaster()->MoveFollow(target, 0.5f, 0.0f);
                                DoCast(trackMob, SPELL_ROARING_FLAME_BREATH, true);
                            }
                            flameCount++;
                            events.ScheduleEvent(EVENT_REMOVE_TRACK, 1000);
                            events.ScheduleEvent(EVENT_ROARING_FLAME_BREATH, urand(1000, 2000));
                        }
                        break;
                    case EVENT_SONAR_BOMB:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, 0))
                        {
                            DoCast(target, SPELL_SONAR_BOMB, true);
                            Position pos;
                            target->GetPosition(&pos);
                            if (Creature* trigger = me->SummonCreature(70000, pos))
                                trigger->SetReactState(REACT_PASSIVE);

                            events.ScheduleEvent(EVENT_SONAR_BOMB, urand(5000, 8000));
                        }
                        break;
                    default:
                        break;
                }
            }		

            DoMeleeAttackIfReady();
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE && type != EFFECT_MOTION_TYPE)
                return;

            switch (id)
            {
                case POINT_MIDDLE_ROOM:
                    // Fly
                    me->SetHover(true);
                    me->SetDisableGravity(true);
                    me->SetCanFly(true);

                    Position pos;
                    me->GetPosition(&pos);
                    
                    pos.m_positionZ += 45.0f;
                    me->GetMotionMaster()->MoveTakeoff(POINT_HOVER, pos);
                    break;
                case POINT_MIDDEL_ROOM_2:
                    me->SetHover(false);
                    me->SetDisableGravity(false);
                    me->SetCanFly(false);

                    me->SetReactState(REACT_AGGRESSIVE);
                    break;
                case POINT_HOVER:
                    events.ScheduleEvent(EVENT_ROARING_FLAME_BREATH, urand(1000, 3000));
                    events.ScheduleEvent(EVENT_SONAR_BOMB, urand(5000, 8000));
                    phase = 1;
                    break;
            }
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);

            switch (summon->GetEntry())
            {
                case 41807:
                    summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    summon->SetReactState(REACT_PASSIVE);
                    break;
            }
        }

        void JustDied(Unit* /*killer*/)
        {
            summons.DespawnAll();

            _JustDied();

            if (instance)
                instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SOUND_BAR);
        }
    };
};

class npc_sonar_pulse : public CreatureScript
{
    public:
        npc_sonar_pulse() : CreatureScript("npc_sonar_pulse") { }
 
        struct npc_sonar_pulseAI : public ScriptedAI
        {
            npc_sonar_pulseAI(Creature* creature) : ScriptedAI(creature)
            { }

            void Reset()
            {
                me->SetReactState(REACT_PASSIVE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            }
           
            void UpdateAI(uint32 diff)
            {
                // We need this shit to prevent mob do melee attacks -.-
            }

        };
 
        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_sonar_pulseAI(creature);
        }
};

enum flamesEvents
{
    EVENT_SUMMON_FLAME = 1,
    EVENT_CHECK_CHANNEL,
};

class npc_tracking_flames : public CreatureScript
{
    public:
        npc_tracking_flames() : CreatureScript("npc_tracking_flames") { }
 
        struct npc_tracking_flamesAI: public ScriptedAI
        {
            npc_tracking_flamesAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = me->GetInstanceScript();
            }

            EventMap events;
            InstanceScript* instance;

            void Reset()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetSpeed(MOVE_WALK, 0.8f);
                me->SetSpeed(MOVE_RUN, 0.8f);
                events.Reset();
            }

            void EnterCombat(Unit* who)
            {
                if (me->GetEntry() == 41962)
                {
                    events.ScheduleEvent(EVENT_SUMMON_FLAME, 1000);
                    events.ScheduleEvent(EVENT_CHECK_CHANNEL, 1000);
                }
            }
           
            void UpdateAI(uint32 diff)
            {
                if (me->GetEntry() == 41962)
                {
                    events.Update(diff);

                    while (uint32 eventId = events.ExecuteEvent())
                    {
                        switch (eventId)
                        {
                            case EVENT_SUMMON_FLAME:
                                if (instance)
                                {
                                    if (Creature* atramedes = ObjectAccessor::GetCreature(*me, instance->GetData64(BOSS_ATRAMEDES)))
                                    {
                                        Position pos;
                                        me->GetPosition(&pos);
                                        atramedes->SummonCreature(41807, pos, TEMPSUMMON_TIMED_DESPAWN, 35000, 0);
                                    }

                                    events.ScheduleEvent(EVENT_SUMMON_FLAME, 1000);
                                }
                                break;
                            case EVENT_CHECK_CHANNEL:
                                if (!me->HasAura(78221))
                                    me->DisappearAndDie();

                                events.ScheduleEvent(EVENT_CHECK_CHANNEL, 1000);
                                break;
                        }
                    }
                }
            }

        };
 
        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_tracking_flamesAI(creature);
        }
};

enum sonicFirbEvents
{
    EVENT_EXPLODE = 1,
    EVENT_DISAPPEAR,
};

class npc_sonic_fireball : public CreatureScript
{
    public:
        npc_sonic_fireball() : CreatureScript("npc_sonic_fireball") { }
 
        struct npc_sonic_fireballAI: public ScriptedAI
        {
            npc_sonic_fireballAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = me->GetInstanceScript();
            }

            EventMap events;
            InstanceScript* instance;

            void Reset()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);

                me->SetReactState(REACT_PASSIVE);
                events.Reset();
                events.ScheduleEvent(EVENT_EXPLODE, 10000);
            }

            void UpdateAI(uint32 diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_EXPLODE:
                            if (instance)
                            {
                                if (Creature* atramedes = ObjectAccessor::GetCreature(*me, instance->GetData64(BOSS_ATRAMEDES)))
                                    atramedes->CastSpell(me, SPELL_SONIC_FIREBALL, false);

                                events.ScheduleEvent(EVENT_DISAPPEAR, 3000);
                            }
                            break;
                        case EVENT_DISAPPEAR:
                            me->DisappearAndDie();
                            break;
                    }
                }
            }

        };
 
        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_sonic_fireballAI(creature);
        }
};

class npc_ancient_dwarven_shield : public CreatureScript
{
    public:
        npc_ancient_dwarven_shield() : CreatureScript("npc_ancient_dwarven_shield") { }


        bool OnGossipHello(Player* player, Creature* creature)
        {
            if (InstanceScript* instance = player->GetInstanceScript())
            {
                if (Creature* atramedes = ObjectAccessor::GetCreature(*creature, instance->GetData64(BOSS_ATRAMEDES)))
                {
                    if (!atramedes->isInCombat())
                        return false;

                    atramedes->InterruptNonMeleeSpells(false, 0, true, false);
                    atramedes->CastSpell(atramedes, SPELL_VERTIGO, true);
                }
                instance->DoSetPowerOnPlayers(POWER_ALTERNATE_POWER, -1);
            }

            creature->CastSpell(creature, 77611, true);
            creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            creature->DealDamage(creature, creature->GetHealth() + 100);

            return true;
        }
};

void AddSC_boss_atramedes()
{
    new boss_atramedes();
    new npc_sonar_pulse();
    new npc_tracking_flames();
    new npc_sonic_fireball();
    new npc_ancient_dwarven_shield();
}