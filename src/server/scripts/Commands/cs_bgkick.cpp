/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
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
Name: BGKICK COMMANDSCRIPT
Author: Una pecora smarrita
%Complete: 100
Comment: Per mandare a fare in culo la gente che sta AFK in BG
Category: commandscripts
EndScriptData */

#include "Chat.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include <map>


using namespace std;

struct AfkReportInfo
{
		string PlayerName;
		uint64 PlayerId;
		string ReporterName;
		uint64 ReporterId;
		uint32 battleground;
        time_t inserttime;
};
 
map<uint64, AfkReportInfo> AfkList;


class afkreport_commandscript : public CommandScript
{
public:
    afkreport_commandscript() : CommandScript("afkreport_commandscript") { }

    ChatCommand* GetCommands() const
    {
        static ChatCommand afkCommandTable[] =
        {
            { "list",       SEC_GAMEMASTER,     true,  &HandleAfkListCommand,       "", NULL },
            { "report",     SEC_PLAYER,         true,  &HandleAfkReportCommand,     "", NULL },
            { "stop",       SEC_PLAYER,         true,  &HandleAfkStopCommand,       "", NULL },
            { NULL,         0,                  false, NULL,                              "", NULL }
        };

        static ChatCommand commandTable[] =
        {
            { "afk",      SEC_PLAYER,     true,  NULL,                                   "", afkCommandTable },
            { NULL,       0,              false, NULL,                                   "", NULL }
        };
        return commandTable;
    }

    static bool HandleAfkReportCommand(ChatHandler* handler, char const* args)
    {
        Player* target;
        uint64 targetGuid;
        std::string targetName;
		bool alreadyreported = false;
		// Questo comando mi legge l'argomento dopo il comando e mi fa direttamente il puntamento al player
        if (!handler->extractPlayerTarget((char*)args, &target, &targetGuid, &targetName))
            return false;

		// Dentro a questo IF metto le azioni del comando
        if (target)
        {
			if(uint32 bgid = target->GetBattlegroundId()){
				 alreadyreported = false;

					 // il tizio sta nel bg. Devo seguire il seguente schema logico:
					 //   Il tizio è gia stato reportato?
					 //   SI
					 //   1 - Se si, è stato da me? -> metto il flag alreadyreported a true
					 //   2 - Se si, e non da me? -> Aggiungo il mio voto (un altra entry nella mia mappa). flag alreadyreported a false 
					 //   NO
					 //   1 - Aggiungo il bastardo alla lista dei cani da kikkare

				 // Scorro la prima volta per capire se l'ho gia reportato io
				 for(map<uint64, AfkReportInfo>::const_iterator i = AfkList.begin(); i != AfkList.end(); ++i){
					    if(i->second.PlayerId == targetGuid){
							if(i->second.ReporterId == handler->GetSession()->GetPlayer()->GetGUID()){
								handler->SendSysMessage("Hai gia reportato questo stronzo!");
								alreadyreported = true;
								break;
							}
                        }				
				 }
				 // Visto che non l'ho ancora riportato, aggiungo il mio voto.
				 if(alreadyreported==false){

				 }
			}
			 
        }
		// Qui inserisco eventuali messaggi di errore.
        else
        {
            std::string oldNameLink = handler->playerLink(targetName);
            handler->PSendSysMessage("", oldNameLink.c_str(), GUID_LOPART(targetGuid));
            
        }
    

        return true;
    }




	static bool HandleAfkStopCommand(ChatHandler* handler, char const* args)
    {
        Player* target;
        uint64 targetGuid;
        std::string targetName;
		// Questo comando mi legge l'argomento dopo il comando e mi fa direttamente il puntamento al player
        if (!handler->extractPlayerTarget((char*)args, &target, &targetGuid, &targetName))
            return false;

		// Dentro a questo IF metto le azioni del comando
        if (target)
        {
            handler->PSendSysMessage("", handler->GetNameLink(target).c_str());
            target->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
        }
		// Qui inserisco eventuali messaggi di errore.
        else
        {
            std::string oldNameLink = handler->playerLink(targetName);
            handler->PSendSysMessage("", oldNameLink.c_str(), GUID_LOPART(targetGuid));
            
        }
    

        return true;
    }

	static bool HandleAfkListCommand(ChatHandler* handler, char const* args)
    {
        Player* target;
        uint64 targetGuid;
        std::string targetName;
		// Questo comando mi legge l'argomento dopo il comando e mi fa direttamente il puntamento al player
        if (!handler->extractPlayerTarget((char*)args, &target, &targetGuid, &targetName))
            return false;

		// Dentro a questo IF metto le azioni del comando
        if (target)
        {
            handler->PSendSysMessage("", handler->GetNameLink(target).c_str());
            target->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
        }
		// Qui inserisco eventuali messaggi di errore.
        else
        {
            std::string oldNameLink = handler->playerLink(targetName);
            handler->PSendSysMessage("", oldNameLink.c_str(), GUID_LOPART(targetGuid));
            
        }
    

        return true;
    }

    
};

void AddSC_afkreport_commandscript()
{
    new afkreport_commandscript();
}
