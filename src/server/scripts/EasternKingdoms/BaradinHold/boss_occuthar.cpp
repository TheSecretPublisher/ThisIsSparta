/*
 * Copyright (C) 20012 - 2013 Forgotten Lands <http://www.forgottenlands.eu>
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
#include "baradin_hold.h"

enum spells
{
    SPELL_BERSERK                                 = 47008,
    SPELL_EYES_OF_OCCUTHAR                        = 96920,
    SPELL_EYES_OF_OCCUTHAR_LAUNCH                 = 96932,
    SPELL_SEARING_SHADOWS                         = 96913,
    SPELL_FOCUSED_FIRE                            = 96884,
    SPELL_GAZE_OF_OCCUTHAR                        = 96942,
    SPELL_OCCUTHAR_DESTRUCTION                    = 96968,
};

enum events
{
    EVENT_SEARING_SHADOWS = 1,
    EVENT_FOCUSED_FIRE,
    EVENT_EYES_OF_OCCUTHAR,
    EVENT_BERSERK,

};

class boss_occuthar : public CreatureScript
{
public:
    boss_occuthar() : CreatureScript("boss_occuthar") 
    { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_occutharAI (creature);
    }

    struct boss_occutharAI : public BossAI
    {
        boss_occutharAI(Creature* creature) : BossAI(creature, DATA_OCCUTHAR)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;

        void Reset() 
        {
            events.Reset();

            _Reset();
        }

        void JustDied(Unit* killer)
        {
            _JustDied();
        }

        void EnterCombat(Unit* /*pWho*/)
        {
            events.ScheduleEvent(EVENT_SEARING_SHADOWS, urand(13000, 15000));
            events.ScheduleEvent(EVENT_FOCUSED_FIRE, urand(15000, 16000));
            events.ScheduleEvent(EVENT_EYES_OF_OCCUTHAR, urand(30000, 35000));
            events.ScheduleEvent(EVENT_BERSERK, 270000);

            _EnterCombat();
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
                    case EVENT_SEARING_SHADOWS:
                        me->CastSpell(me, SPELL_SEARING_SHADOWS, false);
                        events.ScheduleEvent(EVENT_SEARING_SHADOWS, urand(20000, 22000));
                        break;
                    case EVENT_FOCUSED_FIRE:
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true, 0))
                        {
                            Position pos;
                            target->GetPosition(&pos);

                            if (Creature* summon = me->SummonCreature(52369, pos, TEMPSUMMON_TIMED_DESPAWN, 14500, 0))
                            {
                                summon->SetReactState(REACT_PASSIVE);
                                summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                                summon->Attack(me->getVictim(), true);
                                summon->AttackStop();
                                summon->StopMoving();
                                summon->CastSpell(summon, SPELL_FOCUSED_FIRE, false);
                            }

                            events.ScheduleEvent(EVENT_FOCUSED_FIRE, 15000);
                        }
                        break;
                    case EVENT_EYES_OF_OCCUTHAR:
                        if (me->GetMap())
                        {
                            if (!me->GetMap()->GetPlayers().isEmpty())
                            {
                                for (Map::PlayerList::const_iterator i = me->GetMap()->GetPlayers().begin(); i != me->GetMap()->GetPlayers().end(); ++i)
                                    me->CastSpell(i->getSource(), SPELL_EYES_OF_OCCUTHAR_LAUNCH, false);
                            }
                        }
                        events.ScheduleEvent(EVENT_EYES_OF_OCCUTHAR, urand(55000, 60000));
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

class spell_eyes_of_occuthar : public SpellScriptLoader
{
    public:
        spell_eyes_of_occuthar() : SpellScriptLoader("spell_eyes_of_occuthar") 
        { }

        class spell_eyes_of_occuthar_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_eyes_of_occuthar_SpellScript);

            void onDmg()
            {
                if (!GetHitUnit())
                    return;

                if (!GetCaster())
                    return;

                Position pos;
                GetHitUnit()->GetPosition(&pos);
                if (Creature* eye = GetCaster()->SummonCreature(52428, pos, TEMPSUMMON_TIMED_DESPAWN, 10400, 0))
                {
                    eye->EnterVehicle(GetHitUnit(), 0);
                    eye->AddAura(SPELL_GAZE_OF_OCCUTHAR, eye);
                }
            }

            void Register()
            {
                OnHit += SpellHitFn(spell_eyes_of_occuthar_SpellScript::onDmg);
            }
        };

        SpellScript *GetSpellScript() const
        {
            return new spell_eyes_of_occuthar_SpellScript();
        }
};

enum eyeEvents
{
    EVENT_EXPLODE = 1,
};
class npc_eye_of_occuthar : public CreatureScript
{
public:
    npc_eye_of_occuthar() : CreatureScript("npc_eye_of_occuthar") { }

    struct npc_eye_of_occutharAI : public ScriptedAI
    {
        npc_eye_of_occutharAI(Creature* c) : ScriptedAI(c), summons(me)
        {
            instance = me->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;
        SummonList summons;

        void Reset()
        {
            summons.DespawnAll();
            events.ScheduleEvent(EVENT_EXPLODE, 10400);
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_EXPLODE:
                        me->CastSpell(me, SPELL_OCCUTHAR_DESTRUCTION, false);
                        break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_eye_of_occutharAI(creature);
    }
};

void AddSC_boss_occuthar()
{
    new boss_occuthar();
    new spell_eyes_of_occuthar();
    new npc_eye_of_occuthar();
}