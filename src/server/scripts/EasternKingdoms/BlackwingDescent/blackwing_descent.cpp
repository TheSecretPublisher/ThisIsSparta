/*
* Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
*
* Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
*
* Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
*
* Copyright (C) 2011 - 2012 True Blood <http://www.trueblood-servers.com/>
* By JeanClaude
*
* Copyright (C) 2012 DeepshjirCataclysm Repack
* By Naios
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

enum eEvents {
    EVENT_NONE,
    EVENT_BLAZE,
    EVENT_SOUL_SEVER,
    EVENT_WAIL_DARKNESS,
    EVENT_CHAIN_LIGHTNING,
    EVENT_HEX,
    EVENT_METEOR,
    EVENT_SHADOW_BOLT,
    EVENT_DISEASE_BREATH,
    EVENT_INFECTIOUS_PLAGUE,
    EVENT_MIXTURE,
    EVENT_RITUAL_BLOODLETTING,
    EVENT_VICIOUS_LEECHES,
    EVENT_BRANDED_TONGUE,
    EVENT_SERUM_TORMENT,
    EVENT_SKULL_CRUSH,
    EVENT_SLAM,
    EVENT_SKULL_CRACK,
    EVENT_BLADED_SHIELD,
    EVENT_RESISTANCE,
    EVENT_CALL_FALCON,
    EVENT_SHOOT,
    EVENT_WING_CLIP,
    EVENT_BLINK,
    EVENT_CALL_SCORPID,
    EVENT_EVASION,
    EVENT_FAN_KNIVES,
    EVENT_SPINAL_PIERCE,
    EVENT_FERAL_LINK,
    EVENT_CALL_CROCO,
    EVENT_FORKED_SHOT,
    EVENT_IMPALE,
    EVENT_SHOCKWAVE,
    EVENT_DRAGON_BREATH,
    EVENT_FIRE_BLAST,
    EVENT_TOXIC_DART,
    EVENT_LIGHTNING_NOVA,
    EVENT_THUNDER_CRASH,
    EVENT_GRIP_ZONE,
    EVENT_ENCASING_SHADOWS,
    EVENT_OVERCHARGED,
};

enum Spells
{
    // Nefarian helper for:
    // Magmaw
    SPELL_BLAZING_INFERNO               = 92190,
    SPELL_SHADOWFLAME_BARRAGE           = 94121,

    // Omnotron
    SPELL_GRIP_OF_DEATH = 91849,
    SPELL_ENCASING_SHADOWS = 92023,
    SPELL_OVERCHARGED_POWER_GENERATOR   = 91857,

    // Chimaeron
    SPELL_MOCKING_SHADOWS               = 91307,
};

enum NefarianEvents
{
    EVENT_BLAZING_INFERNO = 1,
    EVENT_SHADOWFLAME_BARRAGE = 2,
};

class mob_nefarian_helper_heroic : public CreatureScript
{
public:
    mob_nefarian_helper_heroic() : CreatureScript("mob_nefarian_helper_heroic") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_nefarian_helper_heroicAI (creature);
    }

    struct mob_nefarian_helper_heroicAI : public ScriptedAI
    {
        mob_nefarian_helper_heroicAI(Creature* creature) : ScriptedAI(creature), Intialized(false)
        {
            instance = creature->GetInstanceScript();
        }

        EventMap events;
        InstanceScript* instance;
        Unit* Summoner;
        bool Intialized;
        bool SpecialPhaseSwitchActive;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            SpecialPhaseSwitchActive = false;
            events.Reset();
        }

        void IsSummonedBy(Unit* summoner)
        {			
            Summoner = summoner;

            Intialized = true;

            switch(Summoner->GetEntry())
            {
            case BOSS_MAGMAW:
                events.ScheduleEvent(EVENT_BLAZING_INFERNO, 5000);
                me->SetCanFly(true);
                break;

            case BOSS_OMNOTRON:
                events.ScheduleEvent(EVENT_GRIP_ZONE, 40000);
                events.ScheduleEvent(EVENT_ENCASING_SHADOWS, 100000);
                events.ScheduleEvent(EVENT_OVERCHARGED, 40000);
                me->SetDisplayId(32440);
                break;

            case BOSS_ATRAMEDES:
                break;

            case BOSS_MALORIAK:
                break;

            case BOSS_CHIMAERON:
                me->SetDisplayId(32440);
                DoCast(me, SPELL_MOCKING_SHADOWS, true);
                break;

            default:
                break;
            }
        }

        void UpdateAI(uint32 diff)
        {
            if(!Intialized)
                return;

            events.Update(diff);

            // Magmaw fight
            if(Summoner->GetEntry() == BOSS_MAGMAW && Summoner->HealthBelowPct(30) && !SpecialPhaseSwitchActive)
            {
                events.Reset();

                events.ScheduleEvent(EVENT_SHADOWFLAME_BARRAGE, 3000);
                SpecialPhaseSwitchActive = true;
            }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    // Magmaw fight
                case EVENT_BLAZING_INFERNO:
                    if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 500, true))
                        DoCast(target, SPELL_BLAZING_INFERNO, true);

                    events.ScheduleEvent(EVENT_BLAZING_INFERNO, 35000);
                    break;
                case EVENT_SHADOWFLAME_BARRAGE:
                    if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 500, true))
                        DoCast(target, SPELL_SHADOWFLAME_BARRAGE, true);

                    events.ScheduleEvent(EVENT_SHADOWFLAME_BARRAGE, 7000);
                    break;

                    // Omnotron Fight
                case EVENT_GRIP_ZONE :
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1, 10.0f, true))
                        DoCast(target, SPELL_GRIP_OF_DEATH);
                    events.ScheduleEvent(EVENT_GRIP_ZONE, 40000);
                    return;
                case EVENT_ENCASING_SHADOWS :
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80.0f, true))
                        DoCast(target, SPELL_ENCASING_SHADOWS);
                    events.ScheduleEvent(EVENT_ENCASING_SHADOWS, 100000);
                    return;

                case EVENT_OVERCHARGED :
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_OVERCHARGED_POWER_GENERATOR);
                    events.ScheduleEvent(EVENT_OVERCHARGED, 40000);
                    return;

                default:
                    break;
                }
            }
        }
    };
};

class mob_drakonid_chainwielder : public CreatureScript
{
public:
    mob_drakonid_chainwielder() : CreatureScript("mob_drakonid_chainwielder") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_drakonid_chainwielderAI (creature);
    }

    struct mob_drakonid_chainwielderAI : public ScriptedAI
    {
        mob_drakonid_chainwielderAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->GetMotionMaster()->MoveTargetedHome();

            //events.ScheduleEvent(EVENT_TEST, urand(10000,12000));
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                /*switch (eventId)
                {

                case EVENT_TEST:
                DoCastVictim(SPELL_ENFEEBLING_BLOW);
                events.ScheduleEvent(EVENT_ENFEEBLING_BLOW, urand(19000,24000));
                break;

                default:
                break;
                }*/
            }		

            DoMeleeAttackIfReady();
        }
    };
};

/********
** Ivoroc
*********/
#define spell_malediction_de_guerison 80295 // Malédiction_de_guérison
#define spell_ombreflamme 80270 // Ombreflamme

class mob_ivoroc: public CreatureScript
{
public:
    mob_ivoroc() : CreatureScript("mob_ivoroc") {}

    struct mob_ivorocAI : public ScriptedAI
    {
        mob_ivorocAI(Creature *c) : ScriptedAI(c) {}

        uint32 malediction_de_guerison;
        uint32 ombreflamme;

        void Reset()
        {
            malediction_de_guerison = 10000;
            ombreflamme = 13000;
        }  

        void UpdateAI(uint32 diff)
        {
            if (malediction_de_guerison<= diff)
            {
                DoCast(SelectTarget(SELECT_TARGET_RANDOM,1,100,true), spell_malediction_de_guerison);
                malediction_de_guerison = 17000;
            } else malediction_de_guerison-= diff;

            if (ombreflamme<= diff)
            {
                if(Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, spell_ombreflamme);

                ombreflamme = 15000;
            } else ombreflamme-= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_ivorocAI(pCreature);
    }

};

/*********
** Maimgor
**********/
#define spell_etreinte_percante 80145 // Etreinte_Percante
#define spell_enrager 80084 // Enrager
#define spell_fouette_queue 80130 // Fouette_Queue
#define spell_ombreflamme 80270 // Ombreflamme

class mob_maimgor: public CreatureScript
{
public:
    mob_maimgor() : CreatureScript("mob_maimgor") {}

    struct mob_maimgorAI : public ScriptedAI
    {
        mob_maimgorAI(Creature *c) : ScriptedAI(c) {}

        uint32 etreinte_percante;
        uint32 enrager;
        uint32 fouette_queue;
        uint32 ombreflamme;

        void Reset()
        {
            etreinte_percante = 17000;
            enrager = 46000;
            fouette_queue = 15000;
            ombreflamme = 20000;
        }

        void UpdateAI(uint32 diff)
        {
            if (etreinte_percante<= diff)
            {
                if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, -5.0f, true))
                    DoCast(target, spell_etreinte_percante);
                etreinte_percante = 17000;
            } else etreinte_percante-= diff;

            if (enrager<= diff)
            {
                DoCast(me, spell_enrager);
                enrager = 46000;
            } else enrager-= diff;

            if (fouette_queue<= diff)
            {
                if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, -2.0f, true))
                    DoCast(target, spell_fouette_queue);
                fouette_queue = 15000;
            } else fouette_queue-= diff;

            if (ombreflamme<= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(target, spell_ombreflamme);
                ombreflamme = 20000;
            } else ombreflamme-= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_maimgorAI(pCreature);
    }

};

/*****************
** Brûle-pourpoint
******************/
#define spell_ombreflamme 80270 // Ombreflamme
#define spell_rafale_de_flammes 80127 // Rafale_De_Flammes

class mob_brule_pourpoint: public CreatureScript
{
public:
    mob_brule_pourpoint() : CreatureScript("mob_brule_pourpoint") {}

    struct mob_brule_pourpointAI : public ScriptedAI
    {
        mob_brule_pourpointAI(Creature *c) : ScriptedAI(c) {}

        uint32 ombreflamme;
        uint32 rafale_de_flammes;

        void Reset()
        {
            ombreflamme = 15000;
            rafale_de_flammes = 25000;
        }

        void UpdateAI(uint32 diff)
        {

            if (ombreflamme<= diff)
            {
                if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, -10.0f, true))
                    DoCast(target, spell_ombreflamme);
                ombreflamme = 15000;
            } else ombreflamme-= diff;

            if (rafale_de_flammes<= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, spell_rafale_de_flammes);
                rafale_de_flammes = 25000;
            } else rafale_de_flammes-= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_brule_pourpointAI(pCreature);
    }

};

/***********************
** Pourfendeur Drakonide
************************/
#define spell_enchainement 80392 // Enchainement
#define spell_frappe_mortelle 80390 // Frappe_Mortelle
#define spell_vague_explosive 80391 // Vague_Explosive

class mob_drakonid_slayer: public CreatureScript
{
public:
    mob_drakonid_slayer() : CreatureScript("mob_drakonid_slayer") { }

    struct mob_drakonid_slayerAI : public ScriptedAI
    {
        mob_drakonid_slayerAI(Creature *c) : ScriptedAI(c) {}

        uint32 enchainement;
        uint32 frappe_mortelle;
        uint32 vague_explosive;

        void Reset()
        {
            enchainement = 15000;
            frappe_mortelle = 20000;
            vague_explosive = 50000;
        }

        void UpdateAI(uint32 diff)
        {
            if (enchainement<= diff)
            {
                DoCast(me->getVictim(), spell_enchainement);
                enchainement = 15000;
            } else enchainement -= diff;

            if (frappe_mortelle<= diff)
            {
                DoCast(me->getVictim(), spell_frappe_mortelle);
                frappe_mortelle = 20000;
            } else frappe_mortelle -= diff;

            if (vague_explosive<= diff)
            {
                DoCastAOE(spell_vague_explosive);
                vague_explosive = 50000;
            } else vague_explosive -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_drakonid_slayerAI(pCreature);
    }

};

/*****************
** Drakeadon Mongrel
******************/
#define spell_acide_corrosif 80345 // Acide_Corrosif
#define spell_charge 79904 // Charge
#define spell_brulure_de_givre RAND(80336,80338)
#define spell_pouvoir_despece RAND(80371,80372,80370,80368,80369)
#define spell_trou_de_temps RAND(80329,80330)
#define spell_la_chair RAND(80341,80332)

class mob_drakeadon_mongrel: public CreatureScript
{
public:
    mob_drakeadon_mongrel() : CreatureScript("mob_drakeadon_mongrel") {}

    struct mob_drakeadon_mongrelAI : public ScriptedAI
    {
        mob_drakeadon_mongrelAI(Creature *c) : ScriptedAI(c) {}

        uint32 acide_corrosif;
        uint32 brulure_de_givre;
        uint32 la_chair;
        uint32 charge;
        uint32 pouvoir_despece;
        uint32 trou_de_temps;

        void Reset()
        {
            acide_corrosif = 20000;
            brulure_de_givre = 45000;
            charge = 11000;
            la_chair = 50000;
            pouvoir_despece = 30000;
            trou_de_temps = 35000;
        }

        void UpdateAI(uint32 diff)
        {
            if (acide_corrosif <= diff)
            {
                DoCast(me->getVictim(), spell_acide_corrosif);
                acide_corrosif = 20000;
            } else acide_corrosif -= diff;

            if (brulure_de_givre <= diff)
            {
                DoCastAOE(spell_brulure_de_givre);
                brulure_de_givre = 45000;
            } else brulure_de_givre -= diff;

            if (charge <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, spell_charge);
                charge = 11000;
            } else charge -= diff;

            if (la_chair <= diff)
            {
                DoCast(me, spell_la_chair);
                la_chair = 50000;
            } else la_chair -= diff;

            if (pouvoir_despece <= diff)
            {
                DoCast(me, spell_pouvoir_despece);
                pouvoir_despece = 30000;
            } else pouvoir_despece -= diff;

            if (trou_de_temps <= diff)
            {
                DoCast(me, spell_trou_de_temps);
                trou_de_temps = 35000;
            } else trou_de_temps -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_drakeadon_mongrelAI(pCreature);
    }
};



class mob_nefarian_yeller : public CreatureScript
{
public:
    mob_nefarian_yeller() : CreatureScript("mob_nefarian_yeller") { }

    struct mob_nefarian_yellerAI : public ScriptedAI
    {
        mob_nefarian_yellerAI(Creature* creature) : ScriptedAI(creature)
        {
            timer = 1000;
        }

        uint32 timer;

        void UpdateAI(uint32 diff) 
        {
          /*  if (timer <= diff)
            {
                if (Player* target = me->FindNearestPlayer(5.f, true))
                    if (target->GetDistance(me) < 85.f  && me->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
                    {
                        //DoScriptText(SAY_INTRO - urand(0,2), me);

                        me->ForcedDespawn();
                    } else
                        timer = 1000;
                else
                    timer = 1000;

            } else timer -= diff;*/
        }
    };
    
    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_nefarian_yellerAI(creature);
    }
};

void AddSC_blackwing_descent()
{
    new mob_nefarian_helper_heroic();
    new mob_drakonid_chainwielder();
    new mob_ivoroc();
    new mob_maimgor();
    // new mob_brule_pourpoint();
    new mob_drakonid_slayer();
    new mob_drakeadon_mongrel();
}
