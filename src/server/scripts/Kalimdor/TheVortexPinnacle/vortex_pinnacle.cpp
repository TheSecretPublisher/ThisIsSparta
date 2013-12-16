/*
 * Copyright (C) 2010 - 2012 ProjectSkyfire <http://www.projectskyfire.org/>
 *
 * Copyright (C) 2011 - 2012 ArkCORE <http://www.arkania.net/>
 * Copyright (C) 2008 - 2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
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

#include "InstanceScript.h"
#include "ScriptedGossip.h"
#include "ScriptPCH.h"
#include "vortex_pinnacle.h"

class npc_slipstream : public CreatureScript
{
public:
    npc_slipstream() : CreatureScript("npc_slipstream") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_slipstreamAI (creature);
    }

    struct npc_slipstreamAI : public ScriptedAI
    {
        npc_slipstreamAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;

        void MoveInLineOfSight(Unit* who)
        {
            if (!who)
                return;

            if (!who->ToPlayer())
                return;

            if (!instance)
                return;
            
            if (me->GetDistance(who) <= 3.0f)
            {
                if (instance->GetData(DATA_GRAND_VIZIER_ERTAN_EVENT) == DONE && instance->GetData(DATA_ALTAIRUS_EVENT) == DONE)
                    who->ToPlayer()->TeleportTo(657, -1189.04f, 475.85f, 634.78f, 0.46f);
                else if (instance->GetData(DATA_GRAND_VIZIER_ERTAN_EVENT) == DONE)
                    who->ToPlayer()->TeleportTo(657, -914.87f, -190.27f, 664.50f, 2.43f);
            }
        }
    };
};

void AddSC_vortex_pinnacle()
{
    new npc_slipstream();
}
