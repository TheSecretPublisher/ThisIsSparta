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
SDName: Boss_Nalorakk
SD%Complete: 100
SDComment:
SDCategory: Zul'Aman
EndScriptData */

#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "zulaman.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CellImpl.h"

//Trash Waves
float NalorakkWay[8][3] =
{
    { 18.569f, 1414.512f, 11.42f}, // waypoint 1
    {-17.264f, 1419.551f, 12.62f},
    {-52.642f, 1419.357f, 27.31f}, // waypoint 2
    {-69.908f, 1419.721f, 27.31f},
    {-79.929f, 1395.958f, 27.31f},
    {-80.072f, 1374.555f, 40.87f}, // waypoint 3
    {-80.072f, 1314.398f, 40.87f},
    {-80.072f, 1295.775f, 48.60f} // waypoint 4
};

#define YELL_NALORAKK_WAVE1     "Get da move on, guards! It be killin' time!"
#define YELL_NALORAKK_WAVE2     "Guards, go already! Who you more afraid of, dem... or me?"
#define YELL_NALORAKK_WAVE3     "Ride now! Ride out dere and bring me back some heads!"
#define YELL_NALORAKK_WAVE4     "I be losin' me patience! Go on: make dem wish dey was never born!"

//Unimplemented SoundIDs
/*
#define SOUND_NALORAKK_EVENT1   12078
#define SOUND_NALORAKK_EVENT2   12079
*/

// Fight
#define YELL_AGGRO              "You be dead soon enough!"
#define YELL_KILL_ONE           "Mua-ha-ha! Now whatchoo got to say?"
#define YELL_KILL_TWO           "Da Amani gonna rule again!"
#define YELL_DEATH              "I... be waitin' on da udda side...."
#define YELL_BERSERK            "You had your chance, now it be too late!" //Never seen this being used, so just guessing from what I hear.
#define YELL_SURGE              "I bring da pain!"
#define YELL_SHIFTEDTOTROLL     "Make way for Nalorakk!"
#define YELL_SHIFTEDTOBEAR      "You call on da beast, you gonna get more dan you bargain for!"*/

enum Sound
{
    // Trash Waves
    SOUND_NALORAKK_WAVE1            = 12066,
    SOUND_NALORAKK_WAVE2            = 12067,
    SOUND_NALORAKK_WAVE3            = 12068,
    SOUND_NALORAKK_WAVE4            = 12069,

    SOUND_YELL_AGGRO                = 12070,
    SOUND_YELL_KILL_ONE             = 12075,
    SOUND_YELL_KILL_TWO             = 12076,
    SOUND_YELL_DEATH                = 12077,
    SOUND_YELL_BERSERK              = 12074,
    SOUND_YELL_SURGE                = 12071,
    SOUND_YELL_TOTROLL              = 12073,
    SOUND_YELL_TOBEAR               = 12072
};

enum Spells
{
    // Normal Form
    SPELL_BRUTAL_STRIKE             = 42384,
    SPELL_SURGE                     = 42402,
    SPELL_BEAR_FORM                 = 42594,

    // Bear Form
    SPELL_LACERATING_SLASH          = 42395,
    SPELL_REND_FLESH                = 97810,
    SPELL_DEAFENING_ROAR            = 49721,

    SPELL_BERSERK                   = 45078
};

enum Events
{
    EVENT_SURGE = 1,
    EVENT_BRUTAL_STRIKE,
    EVENT_BEAR_FORM,

    EVENT_LACERATING_SLASH,
    EVENT_REND_FLESH,
    EVENT_DEAFENING_ROAR,
    EVENT_NORMAL_FORM,

    EVENT_BERSERK
    
};


class boss_nalorakk : public CreatureScript
{
    public:
        boss_nalorakk() : CreatureScript("boss_nalorakk") { }

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_nalorakkAI(creature);
        }

        struct boss_nalorakkAI : public BossAI
        {
            boss_nalorakkAI(Creature* creature) : BossAI(creature, DATA_NALORAKKEVENT)
            {
                MoveEvent = true;
                MovePhase = 0;
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            bool MoveEvent;
            bool inMove;
            uint32 MovePhase;
            uint32 waitTimer;

            void Reset()
            {
                events.Reset();
                _Reset();

                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                inMove = false;
                MoveEvent = true;
                waitTimer = 0;
                me->SetSpeed(MOVE_RUN, 2);
                me->SetWalk(false);
                MovePhase = 0;
            }

            void SendAttacker(Unit* target)
            {
                std::list<Creature*> templist;
                float x, y, z;
                me->GetPosition(x, y, z);

                {
                    CellCoord pair(Trinity::ComputeCellCoord(x, y));
                    Cell cell(pair);
                    cell.SetNoCreate();

                    Trinity::AllFriendlyCreaturesInGrid check(me);
                    Trinity::CreatureListSearcher<Trinity::AllFriendlyCreaturesInGrid> searcher(me, templist, check);

                    TypeContainerVisitor<Trinity::CreatureListSearcher<Trinity::AllFriendlyCreaturesInGrid>, GridTypeMapContainer> cSearcher(searcher);

                    cell.Visit(pair, cSearcher, *(me->GetMap()), *me, me->GetGridActivationRange());
                }

                if (templist.empty())
                    return;

                for (std::list<Creature*>::const_iterator i = templist.begin(); i != templist.end(); ++i)
                {
                    if ((*i) && me->IsWithinDistInMap((*i), 25))
                    {
                        (*i)->SetNoCallAssistance(true);
                        (*i)->AI()->AttackStart(target);
                    }
                }
            }

            void AttackStart(Unit* who)
            {
                if (!MoveEvent)
                    ScriptedAI::AttackStart(who);
            }

            void MoveInLineOfSight(Unit* who)
            {
                if (!MoveEvent)
                {
                    ScriptedAI::MoveInLineOfSight(who);
                }
                else
                {
                    if (me->IsHostileTo(who))
                    {
                        if (!inMove)
                        {
                            switch (MovePhase)
                            {
                                case 0:
                                    if (me->IsWithinDistInMap(who, 50))
                                    {
                                        me->MonsterYell(YELL_NALORAKK_WAVE1, LANG_UNIVERSAL, 0);
                                        DoPlaySoundToSet(me, SOUND_NALORAKK_WAVE1);

                                        (*me).GetMotionMaster()->MovePoint(1, NalorakkWay[1][0], NalorakkWay[1][1], NalorakkWay[1][2]);
                                        MovePhase ++;
                                        inMove = true;

                                        SendAttacker(who);
                                    }
                                    break;
                                case 2:
                                    if (me->IsWithinDistInMap(who, 40))
                                    {
                                        me->MonsterYell(YELL_NALORAKK_WAVE2, LANG_UNIVERSAL, 0);
                                        DoPlaySoundToSet(me, SOUND_NALORAKK_WAVE2);

                                        (*me).GetMotionMaster()->MovePoint(3, NalorakkWay[3][0], NalorakkWay[3][1], NalorakkWay[3][2]);
                                        MovePhase ++;
                                        inMove = true;

                                        SendAttacker(who);
                                    }
                                    break;
                                case 5:
                                    if (me->IsWithinDistInMap(who, 40))
                                    {
                                        me->MonsterYell(YELL_NALORAKK_WAVE3, LANG_UNIVERSAL, 0);
                                        DoPlaySoundToSet(me, SOUND_NALORAKK_WAVE3);

                                        (*me).GetMotionMaster()->MovePoint(6, NalorakkWay[6][0], NalorakkWay[6][1], NalorakkWay[6][2]);
                                        MovePhase ++;
                                        inMove = true;

                                        SendAttacker(who);
                                    }
                                    break;
                                case 7:
                                    if (me->IsWithinDistInMap(who, 50))
                                    {
                                        SendAttacker(who);

                                        me->MonsterYell(YELL_NALORAKK_WAVE4, LANG_UNIVERSAL, 0);
                                        DoPlaySoundToSet(me, SOUND_NALORAKK_WAVE4);

                                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

                                        MoveEvent = false;
                                    }
                                    break;
                            }
                        }
                    }
                }
            }

            void EnterCombat(Unit* /*who*/)
            {
                _EnterCombat();

                events.ScheduleEvent(EVENT_SURGE, 10000);
                events.ScheduleEvent(EVENT_BRUTAL_STRIKE, 15000);
                events.ScheduleEvent(EVENT_BEAR_FORM, 30000);
                events.ScheduleEvent(EVENT_BERSERK, 600000);

                me->MonsterYell(YELL_AGGRO, LANG_UNIVERSAL, 0);
                DoPlaySoundToSet(me, SOUND_YELL_AGGRO);
                DoZoneInCombat();
            }

            void JustDied(Unit* /*killer*/)
            {
                _JustDied();

                me->MonsterYell(YELL_DEATH, LANG_UNIVERSAL, 0);
                DoPlaySoundToSet(me, SOUND_YELL_DEATH);
            }

            void KilledUnit(Unit* /*victim*/)
            {
                switch (urand(0, 1))
                {
                    case 0:
                        me->MonsterYell(YELL_KILL_ONE, LANG_UNIVERSAL, 0);
                        DoPlaySoundToSet(me, SOUND_YELL_KILL_ONE);
                        break;
                    case 1:
                        me->MonsterYell(YELL_KILL_TWO, LANG_UNIVERSAL, 0);
                        DoPlaySoundToSet(me, SOUND_YELL_KILL_TWO);
                        break;
                }
            }

            void MovementInform(uint32 type, uint32 id)
            {
                if (MoveEvent)
                {
                    if (type != POINT_MOTION_TYPE)
                        return;

                    if (!inMove)
                        return;

                    if (MovePhase != id)
                        return;

                    switch (MovePhase)
                    {
                        case 2:
                            me->SetOrientation(3.1415f*2);
                            inMove = false;
                            return;
                        case 1:
                        case 3:
                        case 4:
                        case 6:
                            MovePhase ++;
                            waitTimer = 1;
                            inMove = true;
                            return;
                        case 5:
                            me->SetOrientation(3.1415f*0.5f);
                            inMove = false;
                            return;
                        case 7:
                            me->SetOrientation(3.1415f*0.5f);
                            inMove = false;
                            return;
                    }

                }
            }

            void UpdateAI(uint32 diff)
            {
                if (waitTimer && inMove)
                {
                    if (waitTimer <= diff)
                    {
                        (*me).GetMotionMaster()->MovementExpired();
                        (*me).GetMotionMaster()->MovePoint(MovePhase, NalorakkWay[MovePhase][0], NalorakkWay[MovePhase][1], NalorakkWay[MovePhase][2]);
                        waitTimer = 0;
                    } else waitTimer -= diff;
                }

                if (!UpdateVictim())
                    return;

                if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

                events.Update(diff);

                
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_SURGE:
                            if(Unit* target = SelectTarget(SELECT_TARGET_FARTHEST, 0))
                                me->CastSpell(target, SPELL_SURGE, true);
                            events.ScheduleEvent(EVENT_SURGE, 9000);
                            break;
                        case EVENT_BRUTAL_STRIKE:
                            me->CastSpell(me->getVictim(), SPELL_BRUTAL_STRIKE, true);
                            events.ScheduleEvent(EVENT_BRUTAL_STRIKE, 10000);
                            break;
                        case EVENT_BEAR_FORM:
                            me->CastSpell(me, SPELL_BEAR_FORM, false);
                            events.CancelEvent(EVENT_SURGE);
                            events.CancelEvent(EVENT_BRUTAL_STRIKE);
                            events.ScheduleEvent(EVENT_LACERATING_SLASH, 5000);
                            events.ScheduleEvent(EVENT_REND_FLESH, urand(5000, 20000));
                            events.ScheduleEvent(EVENT_DEAFENING_ROAR, urand(10000, 12000));
                            events.ScheduleEvent(EVENT_NORMAL_FORM, 30000);
                            break;
                        case EVENT_LACERATING_SLASH:
                            me->CastSpell(me->getVictim(), SPELL_LACERATING_SLASH, true);
                            break;
                        case EVENT_REND_FLESH:
                            me->CastSpell(me->getVictim(), SPELL_REND_FLESH, true);
                            events.ScheduleEvent(EVENT_REND_FLESH, urand(5000, 20000));
                            break;
                        case EVENT_DEAFENING_ROAR:
                            me->CastSpell(me, SPELL_DEAFENING_ROAR, false);
                            events.ScheduleEvent(EVENT_DEAFENING_ROAR, 10000);
                            break;
                        case EVENT_NORMAL_FORM:
                            me->RemoveAura(SPELL_BEAR_FORM);
                            events.CancelEvent(EVENT_LACERATING_SLASH);
                            events.CancelEvent(EVENT_REND_FLESH);
                            events.CancelEvent(EVENT_DEAFENING_ROAR);
                            events.ScheduleEvent(EVENT_SURGE, 10000);
                            events.ScheduleEvent(EVENT_BRUTAL_STRIKE, 15000);
                            events.ScheduleEvent(EVENT_BEAR_FORM, 30000);
                            break;
                        case EVENT_BERSERK:
                            me->CastSpell(me, SPELL_BERSERK, true);
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };
};

void AddSC_boss_nalorakk()
{
    new boss_nalorakk();
}