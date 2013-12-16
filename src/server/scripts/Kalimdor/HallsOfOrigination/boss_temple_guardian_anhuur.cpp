/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
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
 Made By: Jenova
 Project: Atlantiss Core
 SDName: boss_templeguardian_anhuur
 SD%Complete: 80%
 SDComment: Add object handling.
 SDCategory: Halls Of Origination
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptPCH.h"
#include "halls_of_origination.h"

enum ScriptTexts
{
    SAY_AGGRO                = 0,
    SAY_BEACON               = 1,
    SAY_KILL_1               = 2,
    SAY_KILL_2               = 3,
    SAY_DEATH                = 4,
    SAY_ANNOUNCE             = 5
};

enum Spells
{
    SPELL_DIVINE_RECKONING   = 75592,
    SPELL_REVERBERATING_HYMN = 75322,
    SPELL_SHIELD_OF_LIGHT    = 74938,
    SPELL_SEARING_FLAME_SUMM = 75114,
    SPELL_BURNING_LIGHT_DMG  = 75116,
    // Lever beams.
    SPELL_BEAM_LEFT          = 83697, // Object 203133
    SPELL_BEAM_RIGHT         = 83698, // Object 203136
};

enum BossPhases
{
    PHASE_NORMAL = 1,
    PHASE_SHIELD = 2,
};

enum Actions
{
    ACTION_NONE,
    ACTION_COUNT
};

class boss_temple_guardian_anhuur : public CreatureScript
{
    public:
        boss_temple_guardian_anhuur() : CreatureScript("boss_temple_guardian_anhuur") { }

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_temple_guardian_anhuurAI(creature);
        }

        struct boss_temple_guardian_anhuurAI : public ScriptedAI
        {
            boss_temple_guardian_anhuurAI(Creature* creature) : ScriptedAI(creature)
            {
                pInstance = creature->GetInstanceScript();
            }

            std::list<uint64> SummonList;

            InstanceScript *pInstance;

            uint8 Phase;
            uint8 PhaseCount;
            uint8 FlameCount;

            uint32 DivineReckoningTimer;
            uint32 SearingFlameTimer;

            void Reset()
            {
                if (pInstance)
                    pInstance->SetData(DATA_TEMPLE_GUARDIAN_ANHUUR_EVENT, NOT_STARTED);

                Phase = PHASE_NORMAL;
                PhaseCount = 0;
                FlameCount = 2;
                DivineReckoningTimer = 8000;
                SearingFlameTimer = 5000;
                RemoveSummons();
                me->RemoveAurasDueToSpell(SPELL_SHIELD_OF_LIGHT);
                me->RemoveAurasDueToSpell(SPELL_REVERBERATING_HYMN);
            }

            void RemoveSummons()
            {
                if (SummonList.empty())
                    return;

                for (std::list<uint64>::const_iterator itr = SummonList.begin(); itr != SummonList.end(); ++itr)
                {
                    if (Creature* pTemp = Unit::GetCreature(*me, *itr))
                        if (pTemp)
                            pTemp->DisappearAndDie();
                }
                SummonList.clear();
            }

            void JustSummoned(Creature* pSummon)
            {
                SummonList.push_back(pSummon->GetGUID());
                
                if (pSummon->GetEntry() == 40283)
                {
                    pSummon->SetSpeed(MOVE_WALK, 0.0f, true);
                    pSummon->SetSpeed(MOVE_RUN, 0.0f, true);
                    pSummon->AddAura(SPELL_BURNING_LIGHT_DMG, pSummon);
                }

            }

            void ChangePhase()
            {
                DoTeleportTo(-640.527f, 334.855f, 78.345f, 1.54f);
                me->SetOrientation(1.54f);
                std::list<Creature*> unitList;
                me->GetCreatureListWithEntryInGrid(unitList, NPC_PIT_SNAKE, 100.0f);
                for (std::list<Creature*>::const_iterator itr = unitList.begin(); itr != unitList.end(); ++itr)
                {
                    if ((*itr)->isDead())
                        (*itr)->Respawn();
                }

                me->AddAura(SPELL_SHIELD_OF_LIGHT, me);
                DoCast(me, SPELL_REVERBERATING_HYMN);
                PhaseCount++;
                Phase = PHASE_SHIELD;
                me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_INTERRUPT, true);

                std::list<Creature*> unitList2;
                me->GetCreatureListWithEntryInGrid(unitList2, 40183, 100.0f);
                for (std::list<Creature*>::const_iterator itr = unitList2.begin(); itr != unitList2.end(); ++itr)
                    (*itr)->CastSpell(me, SPELL_BEAM_LEFT, false);
            }

            void JustDied(Unit* /*Kill*/)
            {
                RemoveSummons();

                if (pInstance)
                    pInstance->SetData(DATA_TEMPLE_GUARDIAN_ANHUUR_EVENT, DONE);

                GameObject* Bridge = me->FindNearestGameObject(GO_ANHUUR_BRIDGE, 200);
                if (Bridge)
                    Bridge->SetGoState(GO_STATE_ACTIVE);

                if (GameObject* door = me->FindNearestGameObject(GO_ANHUUR_DOOR, 200.0)) 
                    if (pInstance)
                        pInstance->HandleGameObject(door->GetGUID(), true, 0);    
            }

            void EnterCombat(Unit* /*Ent*/)
            {
                if (pInstance)
                    pInstance->SetData(DATA_TEMPLE_GUARDIAN_ANHUUR_EVENT, IN_PROGRESS);

                DoZoneInCombat();
                DivineReckoningTimer = 8000;
                SearingFlameTimer = 5000;
            }

            void DoAction(int32 actionId)
            {
                switch (actionId)
                {
                    case ACTION_COUNT:
                        FlameCount--;
                        break;
                }
            }

            void CheckShield()
            {
                if (FlameCount == 0)
                {
                    me->RemoveAurasDueToSpell(SPELL_SHIELD_OF_LIGHT);
                    me->CastStop();
                    FlameCount = 2;
                    Phase = PHASE_NORMAL;
                } 
            }

            void UpdateAI(uint32 diff)
            {
                if (Phase == PHASE_SHIELD)
                    CheckShield();

                if (!UpdateVictim() && !me->HasAura(SPELL_SHIELD_OF_LIGHT))
                    return;

                if ((me->HealthBelowPct(34) && Phase == PHASE_NORMAL && PhaseCount == 1) ||
                    (me->HealthBelowPct(67) && Phase == PHASE_NORMAL && PhaseCount == 0))
                    ChangePhase();

                if (DivineReckoningTimer <= diff && Phase == PHASE_NORMAL)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_DIVINE_RECKONING);
                    
                    DivineReckoningTimer = urand(15000,18000);
                } else
                    DivineReckoningTimer -= diff;

                if (SearingFlameTimer <= diff && Phase == PHASE_NORMAL)
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        me->CastSpell(target, SPELL_SEARING_FLAME_SUMM, true);

                    SearingFlameTimer = urand(8000, 12000);
                } else
                    SearingFlameTimer -= diff;

                DoMeleeAttackIfReady();
            }
        };
};

class go_beacon_of_light : public GameObjectScript
{
public:
    go_beacon_of_light() : GameObjectScript("go_beacon_of_light") { }

    bool OnGossipHello(Player* pPlayer, GameObject* pGO)
    {
 
        if (Creature* bossGuardian = pPlayer->FindNearestCreature(39425, 500.0f, true))
        {
            if (bossGuardian->AI())
                bossGuardian->AI()->DoAction(ACTION_COUNT);
        }

        if (Creature* beam = pPlayer->FindNearestCreature(40183, 500.0f, true))
            beam->InterruptNonMeleeSpells(false, 0, true);

        pGO->SetGoState(GO_STATE_ACTIVE);
        pGO->SetGoState(GO_STATE_READY);
        return true;
    }
};

void AddSC_boss_temple_guardian_anhuur()
{
    new boss_temple_guardian_anhuur();
    new go_beacon_of_light();
}