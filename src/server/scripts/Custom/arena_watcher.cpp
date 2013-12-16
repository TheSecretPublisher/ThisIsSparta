/*######
## Arena Watcher by FrozenSouL
######*/

#include "CreatureTextMgr.h"
#include "Player.h"
#include "BattlegroundMgr.h"
#include "Battleground.h"
#include "ArenaTeamMgr.h"
#include "ArenaTeam.h"
#include "Config.h"

#define MSG_HAS_BG_QUEUE       "Hai coda per BG o Arena!"

enum WatcherData
{
    GOSSIP_OFFSET = GOSSIP_ACTION_INFO_DEF + 10,
};

enum WatcherTexts
{
    SAY_NOT_FOUND_BRACKET       = 0,
    SAY_ARENA_NOT_IN_PROGRESS   = 1,
    SAY_TARGET_NOT_IN_WORLD     = 2,
    SAY_TARGET_NOT_IN_ARENA     = 3,
    SAY_TARGET_IS_GM            = 4,
};

enum WatcherStrings
{
    STRING_ARENA_2v2            = 11200,
    STRING_ARENA_3v3            = 11201,
    STRING_ARENA_5v5            = 11202,
    STRING_FOLLOW               = 11203,
};

// queste sono le opzioni disponbili - dopo le leggo con worldscript
bool ArenaWatcherEnable = false;
bool ArenaWatcherOnlyGM = false;
bool ArenaWatcherOnlyRated = false;
bool ArenaWatcherToPlayers = false;
bool ArenaWatcherSilence = false;
float ArenaWatcherSpeed = 3.0f;

//Questo è il mutetime, mi serve se decido che durante le arene gli spectator non possono parlare.
struct ArenaWatcher
{
    time_t mutetime;
    uint32 faction;
};

//La solita vecchia  map (questa parte è identica al bountyhunter)
typedef std::map<uint32, ArenaWatcher> ArenaWatcherMap;
ArenaWatcherMap ArenaWatcherPlayers;

//La funzione iswatcher mi dice se un player sta spectando, ovvero se appartiene alla arenawatcher map
bool IsWatcher(uint32 guid)
{
    ArenaWatcherMap::iterator itr = ArenaWatcherPlayers.find(guid);
    if (itr != ArenaWatcherPlayers.end())
        return true;
    return false;
}


void ArenaWatcherStart(Player* player)
{
    //Pre-teletrasporto in arena: divento invisibile 
    player->SetVisible(false);
    uint32 guid = player->GetGUIDLow();
    player->SetSpectator(true);
    
    // se esisto gia come watcher non posso riwatchare due volte.
    // in questo caso sarà successo qualche baco, se il player fa logout è OK
    if (IsWatcher(guid))
        return;   

    ArenaWatcher data;
    //Mi salvo il mutetime attuale: se ho un mute dato da un giemme, mi permarrà quando esco.
    data.mutetime = player->GetSession()->m_muteTime;
    data.faction = player->getFaction();
    //inserisco il player nella mappa
    ArenaWatcherPlayers[guid] = data;

}

// Operazioni da fare dopo il teletrasporto
void ArenaWatcherAfterTeleport(Player* player)
{
    player->AddUnitMovementFlag(MOVEMENTFLAG_WATERWALKING);
    player->setFaction(14);

    // Se abilitato inserisco il silence
    if (ArenaWatcherSilence)
        player->GetSession()->m_muteTime = time(NULL) + 120 * MINUTE;

    // Abilito altri blocchi al player
    player->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED );
    player->SetSpeed(MOVE_WALK, ArenaWatcherSpeed, true);
    player->SetSpeed(MOVE_RUN, ArenaWatcherSpeed*2, true);
    player->SetSpeed(MOVE_SWIM, ArenaWatcherSpeed, true);
    player->SetAcceptWhispers(false);
    //Cosi non posso castare niente neanche per sbaglio
    player->setDeathState(CORPSE);
}

void ArenaWatcherEnd(Player* player)
{
    if(player){
        uint32 guid = player->GetGUIDLow();

        // Se sono un watcher, ripristino il mio stato normale dopo essere stato teletrasportato fuori dall'arena
        ArenaWatcherMap::iterator itr = ArenaWatcherPlayers.find(guid);
        if (itr != ArenaWatcherPlayers.end())
        {
            // Eseguo prima i re-setup con le variabili salvate dentro alla mappa
            if (ArenaWatcherSilence)
                player->GetSession()->m_muteTime = ArenaWatcherPlayers[guid].mutetime;

            player->setFaction(ArenaWatcherPlayers[guid].faction);

            // Cancello l'occorrenza nella mappa
            ArenaWatcherPlayers.erase(itr);

            // Operazioni di riabilitazione player
            player->ResurrectPlayer(100.0f, false);
            player->SetAcceptWhispers(true);
            player->RemoveUnitMovementFlag(MOVEMENTFLAG_WATERWALKING);
            player->SetSpeed(MOVE_WALK, 1.0f, true);
            player->SetSpeed(MOVE_RUN, 1.0f, true);
            player->SetSpeed(MOVE_SWIM, 1.0f, true);
            player->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED );
            player->SetVisible(true);
            player->SetSpectator(false);   
        }
    }
}

uint8 GetArenaBySlot(uint8 slot)
{
    switch (slot)
    {
        case 0: return ARENA_TEAM_2v2;
        case 1: return ARENA_TEAM_3v3;
        case 2: return ARENA_TEAM_5v5;
        default:
            break;
    }
    return 0;
}

class mod_ArenaWatcher_WorldScript : public WorldScript
{
    public:
        mod_ArenaWatcher_WorldScript() : WorldScript("mod_ArenaWatcher_WorldScript") { }

    void OnConfigLoad(bool reload)
    {
        sLog->outInfo(LOG_FILTER_WORLDSERVER,"Loading Sceicco's Arena Watcher System...");

        ArenaWatcherEnable = ConfigMgr::GetBoolDefault("ArenaWatcher.Enable", true);
        ArenaWatcherOnlyGM = ConfigMgr::GetBoolDefault("ArenaWatcher.OnlyGM", true);
        ArenaWatcherOnlyRated = ConfigMgr::GetBoolDefault("ArenaWatcher.OnlyRated", false);
        ArenaWatcherToPlayers = ConfigMgr::GetBoolDefault("ArenaWatcher.ToPlayers", false);
        ArenaWatcherSilence = ConfigMgr::GetBoolDefault("ArenaWatcher.Silence", false);
        ArenaWatcherSpeed = ConfigMgr::GetFloatDefault("ArenaWatcher.Speed", 3.0f);

        if (!reload)
            ArenaWatcherPlayers.clear();
    }
};

class mod_ArenaWatcher_PlayerScript : public PlayerScript
{
    public:
        mod_ArenaWatcher_PlayerScript() : PlayerScript("mod_ArenaWatcher_PlayerScript") { }

    void OnPlayerRemoveFromBattleground(Player* player, Battleground* /*bg*/)
    {
        if(player->GetSpectator()){
            
            if(ArenaWatcherEnable){
                ArenaWatcherEnd(player);
            }   
                
        }
    }

    void OnLogout(Player* player)
    {
        if (ArenaWatcherEnable)
            ArenaWatcherEnd(player);
    }
};

class npc_arena_watcher : public CreatureScript
{
    public:
        npc_arena_watcher() : CreatureScript("npc_arena_watcher") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {

        if (ArenaWatcherEnable && (!ArenaWatcherOnlyGM || player->isGameMaster()))
        {
            uint8 arenasCount[MAX_ARENA_SLOT] = {0, 0, 0};

            for (uint8 bgTypeId = 0; bgTypeId < MAX_BATTLEGROUND_TYPE_ID; ++bgTypeId)
            {
                if (!BattlegroundMgr::IsArenaType(BattlegroundTypeId(bgTypeId)))
                    continue;

                if(BattlegroundData* arenas = sBattlegroundMgr->GetAllBattlegroundsWithTypeId(BattlegroundTypeId(bgTypeId))){

                    if (!arenas || arenas->m_Battlegrounds.empty())
                        continue;

                    for (BattlegroundContainer::const_iterator itr = arenas->m_Battlegrounds.begin(); itr != arenas->m_Battlegrounds.end(); ++itr)
                    {
                        if (!(itr->second->GetStatus() & 2))
                            continue;

                        if (ArenaWatcherOnlyRated && !itr->second->isRated())
                            continue;

                        if(itr->second->GetStatus()==STATUS_IN_PROGRESS)
                            ++arenasCount[ArenaTeam::GetSlotByType(itr->second->GetArenaType())];
                    }
                }
            }

            for (uint8 i = 0; i < MAX_ARENA_SLOT; ++i)
            {
                if (!arenasCount[i])
                    continue;

                char gossipTextFormat[50];
                snprintf(gossipTextFormat, 50, sObjectMgr->GetTrinityStringForDBCLocale(STRING_ARENA_2v2 + i), arenasCount[i]);
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, gossipTextFormat, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + i);
            }

            if (ArenaWatcherToPlayers)
                player->ADD_GOSSIP_ITEM_EXTENDED(
                    GOSSIP_ICON_CHAT,
                    sObjectMgr->GetTrinityStringForDBCLocale(STRING_FOLLOW),
                    GOSSIP_SENDER_MAIN,
                    GOSSIP_ACTION_INFO_DEF + 4,
                    "",
                    0,
                    true
                );
        }

        player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();

         
        if (player->InBattlegroundQueue())
        {
            player->CLOSE_GOSSIP_MENU();
            creature->MonsterWhisper(MSG_HAS_BG_QUEUE, player->GetGUID());
            return true;
        }


        if (!ArenaWatcherEnable && (!ArenaWatcherOnlyGM || player->isGameMaster()))
            return true;

        if (action <= GOSSIP_OFFSET)
        {
            bool bracketExists = false;

            uint8 playerCount = action - GOSSIP_ACTION_INFO_DEF;

            for (uint8 bgTypeId = 0; bgTypeId < MAX_BATTLEGROUND_TYPE_ID; ++bgTypeId)
            {
                if (!BattlegroundMgr::IsArenaType(BattlegroundTypeId(bgTypeId)))
                    continue;
                
                if(BattlegroundData* arenas = sBattlegroundMgr->GetAllBattlegroundsWithTypeId(BattlegroundTypeId(bgTypeId))){

                    if (!arenas || arenas->m_Battlegrounds.empty())
                        continue;

                    for (BattlegroundContainer::const_iterator itr = arenas->m_Battlegrounds.begin(); itr != arenas->m_Battlegrounds.end(); ++itr)
                    {

                        if (Map* map = itr->second->FindBgMap()){
                          
                            if (!(itr->second->GetStatus() & 2)) {
                                continue;
                            }

                            if (itr->second->GetArenaType() != GetArenaBySlot(playerCount))
                                continue;

                            if (ArenaWatcherOnlyRated && !itr->second->isRated())
                                continue;

                            if (itr->second->GetStatus() != STATUS_IN_PROGRESS)
                                continue;

                            if (itr->second->isRated())
                            {
                                if(ArenaTeam* teamOne = sArenaTeamMgr->GetArenaTeamById(itr->second->GetArenaTeamIdByIndex(0)))
                                {
                                    if(ArenaTeam* teamTwo = sArenaTeamMgr->GetArenaTeamById(itr->second->GetArenaTeamIdByIndex(1)))
                                    {
                                        if (teamOne && teamTwo)
                                        {
                                            char gossipTextFormat[100];
                                            snprintf(gossipTextFormat, 100, "%s : %s (%u) vs. %s (%u)", map->GetMapName(), teamOne->GetName().c_str(), teamOne->GetRating(), teamTwo->GetName().c_str(), teamTwo->GetRating());
                                            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, gossipTextFormat, GOSSIP_SENDER_MAIN + bgTypeId, itr->first + GOSSIP_OFFSET);
                                        }
                                    }
                                }
                            }
                            else
                            {
                                char gossipTextFormat[100];
                                snprintf(gossipTextFormat, 100, "[%u] %s : %u vs. %u", itr->first, map->GetMapName(), playerCount, playerCount);
                                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, gossipTextFormat, GOSSIP_SENDER_MAIN + bgTypeId, itr->first + GOSSIP_OFFSET);
                            }

                            bracketExists = true;
                        }
                    }
                }
            }

            if (bracketExists)
                player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());
            else
            {
                sCreatureTextMgr->SendChat(creature, SAY_NOT_FOUND_BRACKET, player->GetGUID());
                player->PlayerTalkClass->ClearMenus();
                player->CLOSE_GOSSIP_MENU();
            }
        }
        else
        {
            uint32 arenaId = action - GOSSIP_OFFSET;
            uint32 bgTypeId = sender - GOSSIP_SENDER_MAIN;
            if(BattlegroundData* arenas = sBattlegroundMgr->GetAllBattlegroundsWithTypeId(BattlegroundTypeId(bgTypeId))){

                if (!arenas || arenas->m_Battlegrounds.empty())
                    return false;

                if (arenas->m_Battlegrounds[arenaId])
                {
                    
                    if(Battleground* bg = arenas->m_Battlegrounds[arenaId]){

                        if (bg->GetStatus() != STATUS_IN_PROGRESS) 
                        {
                            sCreatureTextMgr->SendChat(creature, SAY_ARENA_NOT_IN_PROGRESS, player->GetGUID());
                            player->PlayerTalkClass->ClearMenus();
                            player->CLOSE_GOSSIP_MENU();
                            return false;
                        }

                        float x = 0.0f, y = 0.0f, z = 0.0f;

                        if(bg){
                            switch (bg->GetMapId())
                            {
                                case 617:
                                    x = 1299.046f;
                                    y = 784.825f;
                                    z = 9.338f;
                                    break;
                                case 618:
                                    x = 763.5f;
                                    y = -284;
                                    z = 28.276f;
                                    break;
                                case 572:
                                    x = 1285.810547f;
                                    y = 1667.896851f;
                                    z = 39.957642f;
                                    break;
                                case 562:
                                    x = 6238.930176f;
                                    y = 262.963470f;
                                    z = 0.889519f;
                                    break;
                                case 559:
                                    x = 4055.504395f;
                                    y = 2919.660645f;
                                    z = 13.611241f;
                                    break;
                                default:
                                    player->PlayerTalkClass->ClearMenus();
                                    player->CLOSE_GOSSIP_MENU();
                                    return false;
                            }
                        }

                        if(bg){
                            if(bg->GetStatus()==STATUS_IN_PROGRESS){
                                player->SetSpectator(true);
                                player->SetBattlegroundId(bg->GetInstanceID(), bg->GetTypeID());
                                player->SetBattlegroundEntryPoint();
                                ArenaWatcherStart(player);
                                player->TeleportTo(bg->GetMapId(), x, y, z, player->GetOrientation());
                                ArenaWatcherAfterTeleport(player);
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    bool OnGossipSelectCode(Player* player, Creature* creature, uint32 uiSender, uint32 uiAction, const char* targetName)
    {
        player->PlayerTalkClass->ClearMenus();
        player->CLOSE_GOSSIP_MENU();

        if (!ArenaWatcherToPlayers || !ArenaWatcherEnable || (ArenaWatcherOnlyGM && !player->isGameMaster()) || !*targetName)
            return true;

        if (uiSender == GOSSIP_SENDER_MAIN)
        {
            switch (uiAction)
            {
                case GOSSIP_ACTION_INFO_DEF + 4:
                {
                    if (Player* target = sObjectAccessor->FindPlayerByName(targetName))
                    {
                        if (!target->IsInWorld())
                            sCreatureTextMgr->SendChat(creature, SAY_TARGET_NOT_IN_WORLD, player->GetGUID());
                        else if (!target->InArena())
                            sCreatureTextMgr->SendChat(creature, SAY_TARGET_NOT_IN_ARENA, player->GetGUID());
                        else if (target->isGameMaster())
                            sCreatureTextMgr->SendChat(creature, SAY_TARGET_IS_GM, player->GetGUID());
                        else
                        {
                            if (Battleground* bg = target->GetBattleground())
                            {
                                if(bg->GetStatus() != STATUS_IN_PROGRESS)
                                {
                                    sCreatureTextMgr->SendChat(creature, SAY_ARENA_NOT_IN_PROGRESS, player->GetGUID());
                                    return true;
                                }
                                else 
                                {
                                    player->SetSpectator(true);
                                    player->SetBattlegroundId(bg->GetInstanceID(), bg->GetTypeID());
                                    player->SetBattlegroundEntryPoint();
                                    float x, y, z;
                                    target->GetContactPoint(player, x, y, z);
                                    ArenaWatcherStart(player);
                                    player->TeleportTo(target->GetMapId(), x, y, z, player->GetOrientation());
                                    player->SetInFront(target);
                                    ArenaWatcherAfterTeleport(player);
                                }
                            }
                        }
                    }
                    return true;
                }
            }
        }

        return false;
    }
};

void AddSC_arena_watcher()
{
    new mod_ArenaWatcher_WorldScript();
    new mod_ArenaWatcher_PlayerScript();
    new npc_arena_watcher();
}