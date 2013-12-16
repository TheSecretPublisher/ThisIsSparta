/*
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

#include"ScriptPCH.h"
#include"the_stonecore.h"

enum Spells
{
    SPELL_FORCE_GRIP                              = 79351,
    SPELL_GRAVITY_WELL_VISUAL_1                   = 79245,
    SPELL_GRAVITY_WELL_VISUAL_2                   = 79244,
    SPELL_GRAVITY_WELL_SUMMON                     = 79340,
    SPELL_GRAVITY_WELL_TRIGGER                    = 47756,
    SPELL_CURSE_OF_BLOOD                          = 92663,
    SPELL_ENERGY_SHIELD                           = 92667,
    SPELL_SEISMIC_SHARD_VISUAL                    = 79009,
    SPELL_SEISMIC_SHARD_CHARGE                    = 79014,
    SPELL_SEISMIC_SHARD_SUMMON                    = 86860,
};

enum Events
{
    EVENT_FORCE_GRIP = 1,
    EVENT_GRAVITY_WELL,
    EVENT_CURSE_OF_BLOOD,
    EVENT_ENERGY_SHIELD,
    EVENT_SEISMIC_SHARD,
    EVENT_GO_PHASE_2,
    EVENT_GO_PHASE_1,
    EVENT_SUMMON_DEVOUT_FOLLOWER,
    EVENT_SEISMIC_SHARD_THROW,
};

enum NPCs
{
    NPC_SEISMIC_SHARD                             = 42355,
    NCP_DEVOUT_FOLLOWER                           = 42428,
    NPC_GRAVITY_WELL                              = 42499,
};

const Position SeismicShardSpawnPosition[] =
{
    {1326.906f, 969.588f, 223.184f, 1.2579f},
    {1337.574f, 967.505f, 227.514f, 1.9117f},
    {1347.833f, 976.205f, 224.644f, 2.2017f},
};

const Position DevoutFollowerSpawnPosition[] =
{
    {1268.143f, 969.109f, 206.080f, 0.6188f},
    {1264.932f, 978.295f, 206.792f, 0.4099f},
};

class boss_high_priestess_azil: public CreatureScript
{
    public:
        boss_high_priestess_azil() : CreatureScript("boss_high_priestess_azil") { }

    struct boss_high_priestess_azilAI: public BossAI
    {
        boss_high_priestess_azilAI(Creature* creature) : BossAI(creature, DATA_HIGH_PRIESTESS_AZIL), summons(me)
        { }
              
        EventMap events;
        uint8 phase;
        Creature* shards[3];
        uint8 shard_done;
        SummonList summons;

        void Reset()
        {
            events.Reset();
            phase = 0;
            shards[0] = NULL;
            shards[1] = NULL;
            shards[2] = NULL;
            shard_done = 0;
            summons.DespawnAll();
        }

        void EnterCombat(Unit* victim)
        {
            DoZoneInCombat(me);
            phase = 0;
            events.ScheduleEvent(EVENT_CURSE_OF_BLOOD, urand(10000, 19000), 0, 0);
            events.ScheduleEvent(EVENT_FORCE_GRIP, urand(8000, 22000), 0, 0);
            events.ScheduleEvent(EVENT_GRAVITY_WELL, urand(20000, 30000), 0, 0);
            events.ScheduleEvent(EVENT_GO_PHASE_2, urand(60000, 75000), 0, 0);
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);
            if (summon->GetEntry() == NPC_GRAVITY_WELL)
            {
                summon->SetDisplayId(11686);
                summon->setFaction(14);
                summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                summon->AddAura(SPELL_GRAVITY_WELL_VISUAL_1, summon);
                summon->SetReactState(REACT_PASSIVE);
            }
        }

        void JustDied(Unit* killer)
        {
            summons.DespawnAll();

            if (me->GetMap()->IsHeroic())
                {
                   if (!me->GetMap()->GetPlayers().isEmpty())
                   {
                       for (Map::PlayerList::const_iterator i = me->GetMap()->GetPlayers().begin(); i != me->GetMap()->GetPlayers().end(); ++i)
                       {
                            if (!i->getSource())
                                continue;

                            i->getSource()->KilledMonsterCredit(42333);
                            i->getSource()->KilledMonsterCredit(42333);
                            i->getSource()->KilledMonsterCredit(42333);
                            i->getSource()->KilledMonsterCredit(42333);
                            i->getSource()->KilledMonsterCredit(42333);
                       }
                   }
                }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_CURSE_OF_BLOOD:
                        DoCastVictim(SPELL_CURSE_OF_BLOOD, false);
                        events.ScheduleEvent(EVENT_CURSE_OF_BLOOD, urand(10000, 19000), 0, 0);
                        break;
                    case EVENT_FORCE_GRIP:
                        DoCastVictim(SPELL_FORCE_GRIP, false);
                        events.ScheduleEvent(EVENT_FORCE_GRIP, urand(8000, 22000), 0, 0);
                        break;
                    case EVENT_GRAVITY_WELL:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, 0))
                            me->CastSpell(target, SPELL_GRAVITY_WELL_SUMMON, false);

                        events.ScheduleEvent(EVENT_GRAVITY_WELL, urand(20000, 30000), 0, 0);
                        break;
                    case EVENT_GO_PHASE_2:
                        phase = 1;
                        events.CancelEvent(EVENT_CURSE_OF_BLOOD);
                        events.CancelEvent(EVENT_FORCE_GRIP);
                        events.CancelEvent(EVENT_GRAVITY_WELL);
                        me->AddAura(SPELL_ENERGY_SHIELD, me);
                        me->SetReactState(REACT_PASSIVE);
                        me->NearTeleportTo(me->GetHomePosition().GetPositionX(), me->GetHomePosition().GetPositionY(), me->GetHomePosition().GetPositionZ(), me->GetHomePosition().GetOrientation(), true);
                        events.ScheduleEvent(EVENT_SEISMIC_SHARD, 3000, 0, 0);
                        events.ScheduleEvent(EVENT_SEISMIC_SHARD_THROW, urand(5000, 8000), 0, 0);
                        events.ScheduleEvent(EVENT_SUMMON_DEVOUT_FOLLOWER, 1000, 0, 0);
                        break;
                    case EVENT_SEISMIC_SHARD:
                        for (int i = 0; i < 3; i++)
                        {
                            if (Creature* shard = me->SummonCreature(NPC_SEISMIC_SHARD, SeismicShardSpawnPosition[i], TEMPSUMMON_MANUAL_DESPAWN, 0, 0))
                            {
                                shard->AddAura(SPELL_SEISMIC_SHARD_VISUAL, shard);
                                shard->SetReactState(REACT_PASSIVE);
                                shard->SetCanFly(true);
                                shard->SetDisableGravity(true);
                                me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
                                shard->AddUnitMovementFlag(MOVEMENTFLAG_DISABLE_GRAVITY);
                                shard->SetDisplayId(11686);
                                shard->setFaction(14);
                                shard->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                                DoZoneInCombat(shard);
                                shards[i] = shard;
                            }
                        }
                        break;
                    case EVENT_SUMMON_DEVOUT_FOLLOWER:
                        if (Creature* follower = me->SummonCreature(NCP_DEVOUT_FOLLOWER, DevoutFollowerSpawnPosition[urand(0, 1)], TEMPSUMMON_MANUAL_DESPAWN, 0, 0))
                            DoZoneInCombat(follower);

                        events.ScheduleEvent(EVENT_SUMMON_DEVOUT_FOLLOWER, urand(2500, 4000), 0, 0);
                        break;
                    case EVENT_SEISMIC_SHARD_THROW:
                        if (Creature* shard = shards[shard_done])
                        {
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, 0))
                            {
                                shard->SetHealth(20);
                                shard->CastSpell(target, SPELL_SEISMIC_SHARD_CHARGE, false);
                                shard_done++;
                            }
                        }
                        if (shard_done != 3)
                            events.ScheduleEvent(EVENT_SEISMIC_SHARD_THROW, urand(5000, 8000), 0, 0);
                        else
                        {
                            events.CancelEvent(EVENT_SUMMON_DEVOUT_FOLLOWER);
                            events.ScheduleEvent(EVENT_GO_PHASE_1, 4000, 0, 0);
                            shard_done = 0;
                        }
                        break;
                    case EVENT_GO_PHASE_1:
                        phase = 0;
                        me->SetReactState(REACT_PASSIVE);
                        me->RemoveAura(SPELL_ENERGY_SHIELD);
                        me->Attack(me->getVictim(), false);
                        me->GetMotionMaster()->MoveChase(me->getVictim(), 1.0f, 1.0f);
                        events.ScheduleEvent(EVENT_CURSE_OF_BLOOD, urand(10000, 19000), 0, 0);
                        events.ScheduleEvent(EVENT_FORCE_GRIP, urand(8000, 22000), 0, 0);
                        events.ScheduleEvent(EVENT_GRAVITY_WELL, urand(20000, 30000), 0, 0);
                        events.ScheduleEvent(EVENT_GO_PHASE_2, urand(60000, 75000), 0, 0);
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
        };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_high_priestess_azilAI(creature);
    }
};

enum gravityEvents
{
    EVENT_AURA = 1,
    EVENT_DESPAWN,
    EVENT_RECAST,
};
class npc_gravity_well : public CreatureScript
{
public:
    npc_gravity_well() : CreatureScript("npc_gravity_well") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_gravity_wellAI (creature);
    }

    struct npc_gravity_wellAI : public ScriptedAI
    {
        npc_gravity_wellAI(Creature* creature) : ScriptedAI(creature) { }

        EventMap events;

        void IsSummonedBy(Unit* summoner)
        {
            if (summoner->GetEntry() == 42333 || summoner->GetEntry() == 49624)
                events.ScheduleEvent(EVENT_AURA, 4000, 0, 0);
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);
            
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_AURA:
                        me->RemoveAllAuras();
                        me->AddAura(SPELL_GRAVITY_WELL_TRIGGER, me);
                        me->AddAura(SPELL_GRAVITY_WELL_VISUAL_2, me);
                        events.ScheduleEvent(EVENT_RECAST, 6000);
                        break;
                    case EVENT_RECAST:
                        me->AddAura(SPELL_GRAVITY_WELL_TRIGGER, me);
                        events.ScheduleEvent(EVENT_DESPAWN, 6000);
                        break;
                    case EVENT_DESPAWN:
                        me->DisappearAndDie();
                        break;                        
                }
            }
        }

    };
};

void AddSC_boss_high_priestess_azil()
{
    new boss_high_priestess_azil();
    new npc_gravity_well();
}