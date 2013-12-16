/*
 * Copyright (C) 2012-2013 Forgotten Lands <http://www.forgottenlands.eu/>
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
SDName: boss_Akilzon
SD%Complete: 0 %
SDComment: Missing timer for Call Lightning and Sound ID's
SQLUpdate:
SDAuthor: dimiandre

EndScriptData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "Cell.h"
#include "CellImpl.h"
#include "zulaman.h"
#include "Weather.h"

enum Spells
{
    SPELL_STATIC_DISRUPTION     = 97298,
    SPELL_STATIC_VISUAL         = 45265,
    SPELL_CALL_LIGHTNING        = 43661, // Missing timer
    SPELL_GUST_OF_WIND          = 97319,
    SPELL_ELECTRICAL_STORM      = 43648,
    SPELL_BERSERK               = 45078,
    SPELL_ELECTRICAL_OVERLOAD   = 97300,
    SPELL_EAGLE_SWOOP           = 44732
};

enum Events
{
    EVENT_STATIC_DISRUPTION = 1,
    EVENT_CALL_LIGHTNING,
    EVENT_ELECTRICAL_STORM,
    EVENT_ELECTRICAL_STORM_FINISH,
    EVENT_SUMMON_KIDNAPPER

};

enum Says
{
    SAY_AGGRO                   = 0,
    SAY_SUMMON                  = 1,
    SAY_INTRO                   = 2, // Not used in script
    SAY_ENRAGE                  = 3,
    SAY_KILL                    = 4,
    SAY_DEATH                   = 5
};

enum Misc
{
    MOB_SOARING_EAGLE           = 24858,
    SE_LOC_X_MAX                = 400,
    SE_LOC_X_MIN                = 335,
    SE_LOC_Y_MAX                = 1435,
    SE_LOC_Y_MIN                = 1370
};

class boss_akilzon : public CreatureScript
{
    public:
        boss_akilzon() : CreatureScript("boss_akilzon") { }

        struct boss_akilzonAI : public BossAI
        {
            boss_akilzonAI(Creature* creature) : BossAI(creature, DATA_AKILZONEVENT)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void Reset()
            {
                _Reset();

                SetWeather(WEATHER_STATE_FINE, 0.0f);
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();

                Talk(SAY_AGGRO);
                //DoZoneInCombat();

                events.ScheduleEvent(EVENT_STATIC_DISRUPTION, urand(5000, 10000));
                events.ScheduleEvent(EVENT_CALL_LIGHTNING, 10000);
                events.ScheduleEvent(EVENT_ELECTRICAL_STORM, 50000);
                events.ScheduleEvent(EVENT_SUMMON_KIDNAPPER, 20000);
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();
                Talk(SAY_DEATH);
            }

            void KilledUnit(Unit* /*victim*/)
            {
                Talk(SAY_KILL);
            }

            void SetWeather(uint32 weather, float grade)
            {
                Map* map = me->GetMap();
                if (!map->IsDungeon())
                    return;

                WorldPacket data(SMSG_WEATHER, (4+4+4));
                data << uint32(weather) << float(grade) << uint8(0);

                map->SendToPlayers(&data);
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
                        case EVENT_STATIC_DISRUPTION:
                            if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                me->CastSpell(target, SPELL_STATIC_DISRUPTION, false);

                            events.ScheduleEvent(EVENT_STATIC_DISRUPTION, urand(5000, 10000));
                            break;
                        case EVENT_CALL_LIGHTNING:
                            me->CastSpell(me->getVictim(), SPELL_CALL_LIGHTNING, false);
                            events.ScheduleEvent(EVENT_CALL_LIGHTNING, 30000);
                            break;
                        case EVENT_ELECTRICAL_STORM:
                            if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            {
                                
                                me->CastSpell(target, SPELL_GUST_OF_WIND, true);
                                me->CastSpell(target, SPELL_ELECTRICAL_STORM, true);
                                target->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_STUNNED);
                            }
                            events.ScheduleEvent(EVENT_ELECTRICAL_STORM, 50000);
                            break;
                        case EVENT_SUMMON_KIDNAPPER:
                            Creature* summon = me->SummonCreature(52638, me->GetPositionX()+rand()%50, me->GetPositionY()+rand()%50, me->GetPositionZ()+50, me->GetOrientation(), TEMPSUMMON_MANUAL_DESPAWN, 0);
                            events.ScheduleEvent(EVENT_SUMMON_KIDNAPPER, urand(15000, 30000));
                            break;
                                      

                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_akilzonAI(creature);
        }
};

class mob_akilzon_eagle : public CreatureScript
{
    public:
        mob_akilzon_eagle() : CreatureScript("mob_akilzon_eagle") { }

        struct mob_akilzon_eagleAI : public ScriptedAI
        {
            mob_akilzon_eagleAI(Creature* creature) : ScriptedAI(creature) { }

            uint32 EagleSwoop_Timer;
            bool arrived;
            uint64 TargetGUID;

            void Reset()
            {
                EagleSwoop_Timer = urand(5000, 10000);
                arrived = true;
                TargetGUID = 0;
                me->SetUnitMovementFlags(MOVEMENTFLAG_DISABLE_GRAVITY);
            }

            void EnterCombat(Unit* /*who*/)
            {
                DoZoneInCombat();
            }

            void MoveInLineOfSight(Unit* /*who*/) {}

            void MovementInform(uint32, uint32)
            {
                arrived = true;
                if (TargetGUID)
                {
                    if (Unit* target = Unit::GetUnit(*me, TargetGUID))
                        DoCast(target, SPELL_EAGLE_SWOOP, true);
                    TargetGUID = 0;
                    me->SetSpeed(MOVE_RUN, 1.2f);
                    EagleSwoop_Timer = urand(5000, 10000);
                }
            }

            void UpdateAI(uint32 diff)
            {
                if (EagleSwoop_Timer <= diff)
                    EagleSwoop_Timer = 0;
                else
                    EagleSwoop_Timer -= diff;

                if (arrived)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    {
                        float x, y, z;
                        if (EagleSwoop_Timer)
                        {
                            x = target->GetPositionX() + irand(-10, 10);
                            y = target->GetPositionY() + irand(-10, 10);
                            z = target->GetPositionZ() + urand(10, 15);
                            if (z > 95)
                                z = 95.0f - urand(0, 5);
                        }
                        else
                        {
                            target->GetContactPoint(me, x, y, z);
                            z += 2;
                            me->SetSpeed(MOVE_RUN, 5.0f);
                            TargetGUID = target->GetGUID();
                        }
                        me->GetMotionMaster()->MovePoint(0, x, y, z);
                        arrived = false;
                    }
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_akilzon_eagleAI(creature);
        }
};

class npc_amani_kidnapper : public CreatureScript
{
    public:
        npc_amani_kidnapper() : CreatureScript("npc_amani_kidnapper") { }

        struct npc_amani_kidnapperAI : public ScriptedAI
        {
            npc_amani_kidnapperAI(Creature* creature) : ScriptedAI(creature) { }

            void Reset()
            { }

            void JustSummoned(Creature* summoned)
            {
                if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                {
                    summoned->AddThreat(target, 5000000.0f);
                    summoned->GetMotionMaster()->MoveChase(target, 1.0f, 10.f);
                }
            }

            void EnterCombat(Unit* /*who*/)
            {
                DoZoneInCombat();
            }

            void MoveInLineOfSight(Unit* /*who*/) {}

            void UpdateAI(uint32 diff)
            {
                if(me->IsWithinDistInMap(me->getVictim(), 2.0f))
                {
                    // L'aquila scompare nel momento in cui il player viene catturato
                    me->getVictim()->EnterVehicle(me, 0);
                    me->getVictim()->CastSpell(me->getVictim(), 97318, false);
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_amani_kidnapperAI(creature);
        }
};

void AddSC_boss_akilzon()
{
    new boss_akilzon();
    new mob_akilzon_eagle();
    new npc_amani_kidnapper();
}

