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
Name: pvpfinder_commandscript
%Complete: 0
Comment: All commands of the pvpfinder
Category: commandscripts
EndScriptData */

#include "Chat.h"
#include "Language.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "Group.h"
#include "WaypointManager.h"

class pvpfinder_commandscript : public CommandScript
{
public:
    pvpfinder_commandscript() : CommandScript("pvpfinder_commandscript") { }

    ChatCommand* GetCommands() const
    {
        static ChatCommand pvpfinderCommandTable[] =
        {
            { "join",           SEC_GAMEMASTER,     false, &HandlePvpfinderJoinCommand,        "", NULL },
            { "list",           SEC_GAMEMASTER,     false, &HandlePvpfinderListCommand,        "", NULL },
            { "leave",          SEC_GAMEMASTER,     false, &HandlePvpfinderLeaveCommand,       "", NULL },
            { NULL,             0,                  false, NULL,                               "", NULL }
        };
        static ChatCommand commandTable[] =
        {
            { "pvpfinder",      SEC_GAMEMASTER,     false, NULL,                               "", pvpfinderCommandTable },
            { NULL,             0,                  false, NULL,                               "",                  NULL }
        };
        return commandTable;
    }

    static bool HandlePvpfinderJoinCommand(ChatHandler* handler, const char* args)
    {

        handler->PSendSysMessage("%s%s|r", "|cff00ff00", "PvPFinder in Developement");

        if (!handler->GetSession())
            return false;

        Player* player = handler->GetSession()->GetPlayer();

        Group* group = player->GetGroup();

        if (!group)
        {
            handler->PSendSysMessage("%s%s|r", "|cff0000ff", "Non sei in un gruppo!");
            return false;
        }
        
        if (group->GetLeaderGUID() != player->GetGUID())
        {
            handler->PSendSysMessage("%s%s|r", "|cff0000ff", "Solo il leader del gruppo può joinare il PvPFinder!");
            return false;
        }

        uint32 members = group->GetMembersCount();
        if (members != 5 && members != 10 && members != 25 && members != 40)
        {
            handler->PSendSysMessage("%s%s|r", "|cff0000ff", "Dovete formare un gruppo da 5, 10, 25 o 40 persone per poter joinare il PvPFinder!");
            return false;
        }

        const Group::MemberSlotList members_list = group->GetMemberSlots();
        for (Group::member_citerator itr = members_list.begin(); itr!= members_list.end(); ++itr)
        {
            Player* member = (Unit::GetPlayer(*player, itr->guid));
            if (!member)
                continue;
           
            if (member->InBattleground() || member->InBattlegroundQueue() || member->InArena())
            {
                handler->PSendSysMessage("%s%s|r", "|cff0000ff", "Un membro del gruppo ha coda per BG/Arena!");
                return false;
            }
        }


        return true;
    }                                                           // HandleWpAddCommand

    static bool HandlePvpfinderListCommand(ChatHandler* handler, const char* args)
    {
        handler->PSendSysMessage("%s%s|r", "|cff00ff00", "PvPFinder in Developement");

        return true;
    }

    static bool HandlePvpfinderLeaveCommand(ChatHandler* handler, const char* args)
    {
        handler->PSendSysMessage("%s%s|r", "|cff00ff00", "PvPFinder in Developement");

        return true;
    }
};

void AddSC_pvpfinder_commandscript()
{
    new pvpfinder_commandscript();
}
