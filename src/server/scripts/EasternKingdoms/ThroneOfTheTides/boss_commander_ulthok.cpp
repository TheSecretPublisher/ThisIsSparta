/*
* Copyright (C) 2011-2012 ProjectStudioMirage <http://www.studio-mirage.fr/>
* Copyright (C) 2011-2012 https://github.com/Asardial
*/

#include "ScriptPCH.h"
#include "throne_of_the_tides.h"

#define SPELL_SQUEEZE               DUNGEON_MODE(76026,95463)
#define SPELL_ENRAGE                76100
#define SPELL_CURSE_OF_FATIGUE      76094
#define SPELL_PULL_TARGET           67357 // HACK!!
#define SPELL_DARK_FISSURE_SUMMON   76047
#define SPELL_INTRO_BOSS            82960

#define SAY_AGGRO "Where one falls, many shall take its place..."
#define SAY_DIED "They do not die."

class boss_commander_ulthok : public CreatureScript
{
public:
    boss_commander_ulthok() : CreatureScript("boss_commander_ulthok") { }

    struct boss_commander_ulthokAI : public ScriptedAI
    {
        boss_commander_ulthokAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        uint32 DarkFissureTimer;
        uint32 EnrageTimer;
        uint32 SqueezeTimer;
        uint32 CurseTimer;
        uint32 TargetTimer;
        Unit* SqueezeTarget;

        InstanceScript *pInstance;

        void Reset()
        {
            DarkFissureTimer = 22500;
            EnrageTimer = urand(12000,18000);
            SqueezeTimer = 25500;
            CurseTimer = 32000;
            TargetTimer = 20000;

            if (pInstance)
                pInstance->SetData(DATA_COMMANDER_ULTHOK_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_AGGRO, LANG_UNIVERSAL, NULL);
            DoCast(SPELL_INTRO_BOSS);

            if (pInstance)
                pInstance->SetData(DATA_COMMANDER_ULTHOK_EVENT, IN_PROGRESS);
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (TargetTimer <= diff)
            {
                SqueezeTarget = SelectTarget(SELECT_TARGET_RANDOM, 0);
                TargetTimer = 22500;
            } else TargetTimer -= diff;

            if (DarkFissureTimer <= diff)
            {
                DoCastVictim(SPELL_DARK_FISSURE_SUMMON);
                DarkFissureTimer = 22500;
            } else DarkFissureTimer -= diff;

            if (EnrageTimer <= diff)
            {
                DoCast(me, SPELL_ENRAGE);
                EnrageTimer = urand(12000,15000);
            } else EnrageTimer -= diff;

            if (SqueezeTimer <= diff)
            {
                DoCast(SqueezeTarget, SPELL_PULL_TARGET, true);
                DoCast(SqueezeTarget, SPELL_SQUEEZE, true);
                SqueezeTimer = 22500;
            } else SqueezeTimer -= diff;

            if (CurseTimer <= diff)
            {
                DoCast(SqueezeTarget, SPELL_CURSE_OF_FATIGUE, true);
                CurseTimer = 22500;
            } else CurseTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*pKiller*/)
        {
            me->MonsterYell(SAY_DIED, LANG_UNIVERSAL, NULL);

            if (pInstance)
                pInstance->SetData(DATA_COMMANDER_ULTHOK_EVENT, DONE);
        }
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_commander_ulthokAI (pCreature);
    }
};

/***********************
** Fissure Ombre trigger
************************/
#define SPELL_DARK_FISSURE          76066
#define SPELL_DARK_FISSURE_AURA     DUNGEON_MODE(76066,91371)

class npc_fissure : public CreatureScript
{
    public:
        npc_fissure() : CreatureScript("npc_fissure") { }

        struct npc_fissureAI : public ScriptedAI
        {
			npc_fissureAI(Creature * pCreature) : ScriptedAI(pCreature) {}

			uint32 DarkFissureTimer;
			
			void Reset()
			{
				DarkFissureTimer = 1000;
				
				me->AddAura(SPELL_DARK_FISSURE_AURA, me);
			}

			void UpdateAI(uint32 diff)
			{
                if (!UpdateVictim())
                    return;
				
				if (DarkFissureTimer <= diff)
			    {
                    DoCast(me, SPELL_DARK_FISSURE);
				    DarkFissureTimer = 1000;
			    } else DarkFissureTimer -= diff;
			}
		};

    CreatureAI* GetAI(Creature* creature) const
	{
        return new npc_fissureAI(creature);
    }
};

/****************************
** Spell Fissure Range Ulthok
*****************************/
#define SPELL_DARK_FISSURE_GROW 91375
class ExactDistanceCheck
{
    public:
        ExactDistanceCheck(WorldObject* source, float dist) : _source(source), _dist(dist) {}

        bool operator()(WorldObject* unit)
        {
            return _source->GetExactDist2d(unit) > _dist;
        }

    private:
        WorldObject* _source;
        float _dist;
};
// Id spell 76066 et 91371
class spell_commander_ulthok_fissure : public SpellScriptLoader
{
    public:
        spell_commander_ulthok_fissure() : SpellScriptLoader("spell_commander_ulthok_fissure") { }

        class spell_commander_ulthok_fissure_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_commander_ulthok_fissure_SpellScript);

            void TargetSelect(std::list<WorldObject*>& targets)
            {
                targets.remove_if(ExactDistanceCheck(GetCaster(), 10.0f * GetCaster()->GetFloatValue(OBJECT_FIELD_SCALE_X)));
            }

            void ChangeDamageAndGrow()
            {
                SetHitDamage(int32(GetHitDamage() * GetCaster()->GetFloatValue(OBJECT_FIELD_SCALE_X)));
                GetCaster()->CastSpell(GetCaster(), SPELL_DARK_FISSURE_GROW, true);
            }

            void Register()
            {
				OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_commander_ulthok_fissure_SpellScript::TargetSelect, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_commander_ulthok_fissure_SpellScript::TargetSelect, EFFECT_1, TARGET_UNIT_SRC_AREA_ENEMY);
                OnHit += SpellHitFn(spell_commander_ulthok_fissure_SpellScript::ChangeDamageAndGrow);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_commander_ulthok_fissure_SpellScript();
        }
};

void AddSC_boss_commander_ulthok()
{
    new boss_commander_ulthok();
	new npc_fissure();
    new spell_commander_ulthok_fissure();
}