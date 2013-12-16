/*-----------------------------------------*/
/*-------------BOUNTY HUNTARD!-------------*/
/*-----------------------------------------*/

#include "ScriptPCH.h"
#include <map>
 
using namespace std;
 
#define MSG_PLACE_BOUNTY "Voglio inserire una taglia! [10g]"
static QueryResult BountyGoldQuery;
static QueryResult EnableQuery;
static QueryResult EnableHuntedQuery;
static QueryResult EnableDualBox;
static double acttime = 120;

/* Bounty Map */
struct BountyInfo
{
        string name;
        string bounty;
        uint64 hunted;
        uint64 hunter;
        uint32 gold;
        time_t inserttime;
        uint32 announced;
};
 
map<uint64, BountyInfo> Bounty;


/* Bounty Misc */
void DoSendMessageToWorld(int msg, string name, string playerName)
{
        ostringstream ss;
        if (msg == 1)
        {
                ss << "|cffFF0000Una taglia e' stata messa sulla testa di "
                        << name.c_str()
                        << "!|r";
        }
        else if (msg == 2)
        {
                ss << "|cffFFA500Aumenta la taglia su "
                        << name.c_str()
                        << "!|r";
        }
        else if (msg == 3)
        {
                ss << "|cffFF0000 "
                        << playerName.c_str()
                        << " ha ucciso "
                        << name.c_str()
                        << ", che aveva una taglia sulla sua testa!";
        }
        sWorld->SendGlobalText(ss.str().c_str(), NULL);
}

//questa funzione mi ritorna l'opzione richiesta fetchandola da database
uint32 GetOptionValue(uint32 option){
    uint32 value;
    switch(option){
        //opzione1: trinità attivo
        case 1:
            EnableQuery = CharacterDatabase.Query("SELECT valore FROM bounty_options WHERE opzione=1");
            value = EnableQuery->Fetch()->GetUInt32();
            break;
        //opzione2: costo in gold
        case 2:
            BountyGoldQuery = CharacterDatabase.Query("SELECT valore FROM bounty_options WHERE opzione=2");
            value = BountyGoldQuery->Fetch()->GetUInt32();
            break;
        //opzione3: i player sotto taglia possono mettere taglia (1 vero 0 falso)
        case 3:
            EnableHuntedQuery = CharacterDatabase.Query("SELECT valore FROM bounty_options WHERE opzione=3");
            value = EnableHuntedQuery->Fetch()->GetUInt32();
            break;

        //opzione4: è possibile mettere una taglia a chi gioca dallo stesso indirizzo ip (controllo dualbox) (1 vero 0 falso)
        case 4:
            EnableDualBox = CharacterDatabase.Query("SELECT valore FROM bounty_options WHERE opzione=4");
            value = EnableDualBox->Fetch()->GetUInt32();
            break;

        default:
            break;
    }
    return value;
}

//questa funzione fa lo spam delle bounty ancora non annunciate
void CheckAnnounceableBounties(){
    if(!Bounty.empty()){
        for(map<uint64, BountyInfo>::const_iterator i = Bounty.begin(); i != Bounty.end(); ++i){
            if(i->second.announced == 0){
                if(difftime(time(NULL),i->second.inserttime)>acttime){
                    DoSendMessageToWorld(1, i->second.name, "");
                    Bounty[i->second.hunted].announced = 1;
                }
            }
        }
    }
}


class npc_b_hunter : public CreatureScript
{
    public:
                npc_b_hunter() : CreatureScript("npc_bounty_hunter") { }
                
                bool OnGossipHello(Player * player, Creature * creature)
                {
					    //Primo gossip: mi fa inserire la bounty (rimanda al GossipSelectCode piu sotto)
                        
                        uint32 enable = GetOptionValue(1);
                        if(enable == 1){
                            if(player->getLevel()==85){
                                player->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_BATTLE, MSG_PLACE_BOUNTY, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1, "", 0, true);
                                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Cancella la taglia inserita", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+4);
                            }
                        }
                        //Se la bounty non è vuota, faccio mostrare l'opzione per vedere la lista bounties (opzione 2)
						if(!Bounty.empty())
                                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Mostra la lista taglie", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
                        //Opzione di uscita (opzione 4)
						player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Non importa..", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+5);
                        //Abilito il menù
						player->SEND_GOSSIP_MENU(1, creature->GetGUID());
                        CheckAnnounceableBounties();
                        return true;
                }
 
                bool OnGossipSelect(Player * player, Creature * creature, uint32 sender, uint32 actions)
                {
						//Verifico di stare parlando con l'npc giusto
                        player->PlayerTalkClass->ClearMenus();
                        if(sender != GOSSIP_SENDER_MAIN)
                                return false;
                        int deleteflag = 0;
                        switch(actions)
                        {
						   //mostro la lista bounties al player (opzione 2)
                          case GOSSIP_ACTION_INFO_DEF+2:
                                   ChatHandler(player->GetSession()).PSendSysMessage("Taglie attuali:");
                                   if(!Bounty.empty()){
                                       for(map<uint64, BountyInfo>::const_iterator i = Bounty.begin(); i != Bounty.end(); i++){
                                            if(difftime(time(NULL),i->second.inserttime)>acttime){
                                               ChatHandler(player->GetSession()).PSendSysMessage("\n Nome: %s, Ricercato da: %s", i->second.name.c_str(), i->second.bounty.c_str());
                                            }
                                            if(Bounty.empty())
                                                break;
                                       }
                                   }
                                   player->PlayerTalkClass->SendCloseGossip();
                                   break;
                           //cerco il nome da me inserito e lo deletto
                          case GOSSIP_ACTION_INFO_DEF+4:
                                deleteflag = 0;
                                if(!Bounty.empty()){          
                                    for(map<uint64, BountyInfo>::const_iterator i = Bounty.begin(); i != Bounty.end(); ++i){
                                        if(i->second.hunter == player->GetGUID()){
                                            Bounty.erase(i->second.hunted);
                                            ChatHandler(player->GetSession()).PSendSysMessage("Taglia cancellata!");
                                            deleteflag = 1;
                                        }
                                        if(Bounty.empty())
                                                break;
                                    }
                                }
                                if (deleteflag ==0){
                                    ChatHandler(player->GetSession()).PSendSysMessage("Non hai inserito nessuna taglia!");
                                }
                                player->PlayerTalkClass->SendCloseGossip();
                                break;
						   //uscita dal gossip (opzione 4)
                           case GOSSIP_ACTION_INFO_DEF+5:
                                   player->PlayerTalkClass->SendCloseGossip();
                                   break;
                        }
                        return true;
                }
 
                bool OnGossipSelectCode(Player* player, Creature* creature, uint32 sender, uint32 action, const char* code)
                {
                        //Verifico di stare parlando con l'npc giusto
                        player->PlayerTalkClass->ClearMenus();
                        if(sender != GOSSIP_SENDER_MAIN)
                                return false;
                        //Salvo il nome inserito dal player
                        string name = code;
                        //Inizializzo il puntatore al personaggio "cacciato"
                        Player * hunted = NULL;
											
                        switch(action)
                        {
                           //Azione 1, post inserimento nome
                           case GOSSIP_ACTION_INFO_DEF+1:
                                   //prendo utilizzando la funzione getoptionvalue(definita sopra questa classe)
                                   //tutti i valori delle opzioni che mi servono
                                   uint32 bountygold = GetOptionValue(2);
                                   uint32 enablehunted = GetOptionValue(3);
                                   uint32 enabledualbox = GetOptionValue(4);
                                   //non hai abbastanza cash, non puoi far partire la taglia
                                   if(player->GetMoney() < bountygold)
                                   {
                                           ChatHandler(player->GetSession()).PSendSysMessage("Non hai abbastanza oro!");
                                           player->PlayerTalkClass->SendCloseGossip();
                                           return false;
                                   }
                                   if(!name.empty())
                                           hunted = sObjectAccessor->FindPlayerByName(name.c_str());
 
                                   if(name == player->GetName())
                                   {
                                           ChatHandler(player->GetSession()).PSendSysMessage("Non puoi mettere una taglia su te stesso!");
                                           player->PlayerTalkClass->SendCloseGossip();
                                           return false;
                                   }
 
                                   if(!hunted)
                                   {
                                           ChatHandler(player->GetSession()).PSendSysMessage("Il giocatore %s non e' online.", name.c_str());
                                           player->PlayerTalkClass->SendCloseGossip();
                                           return false;
                                   }

                                   if(hunted->GetSession()){
                                       if(player->GetSession()){
                                           if((hunted->GetSession()->GetRemoteAddress() == player->GetSession()->GetRemoteAddress()) && (enabledualbox == 0)){
                                           ChatHandler(player->GetSession()).PSendSysMessage("Stai mettendo la taglia su qualcuno col tuo stesso IP. Possibile dualbox.");
                                           CharacterDatabase.PExecute("INSERT INTO bounty_kills (killer, victim, date) VALUES(%u, 0, NOW())", player->GetGUID());  
                                           player->PlayerTalkClass->SendCloseGossip();
                                           return false;
                                           }
                                       }
                                   }
                                   if(hunted->getLevel() != 85){
                                       ChatHandler(player->GetSession()).PSendSysMessage("Il ricercato non è di livello 85 - non puoi inserire la taglia");
                                       player->PlayerTalkClass->SendCloseGossip();
                                       return false;
                                   }

                                   //scorro l'array delle taglie
                                   for(map<uint64, BountyInfo>::const_iterator i = Bounty.begin(); i != Bounty.end(); ++i)
                                   {

                                           //taglia gia inserita
                                           if(i->second.bounty == player->GetName())
                                           {
                                                   ChatHandler(player->GetSession()).PSendSysMessage("Hai gia inserito una taglia!!");
                                                   player->PlayerTalkClass->SendCloseGossip();
                                                   return false;
                                           }
                                           //sei tu un most wanted, non puoi fare il cacciatore di taglie (disabilitabile con la enablehunted a 1)
                                           if((i->second.hunted == player->GetGUID()) && (enablehunted==0))
                                           {
                                                   ChatHandler(player->GetSession()).PSendSysMessage("Non puoi inserire una taglia.. sei TU un most wanted!");
                                                   player->PlayerTalkClass->SendCloseGossip();
                                                   return false;
                                           }
                                           //Personaggio gia sotto bounty
                                           if(i->second.hunted == hunted->GetGUID())
                                           {
                                                   ChatHandler(player->GetSession()).PSendSysMessage("Attenzione, %s ha gia una taglia sulla sua testa... dagli la caccia!", i->second.name.c_str());
                                                   player->PlayerTalkClass->SendCloseGossip();
                                                   return false;
                                           }
                                   }
                                   
                                   // CREO LA BOUNTY
                                   // Levo il cash al player che crea la bounty
								   player->ModifyMoney(-int64(bountygold));
                                   //ASSEGNO NELL'ARRAY DELLE BOUNTY, I PARAMETRI PER LA NUOVA BOUNTY
                                   Bounty[hunted->GetGUID()].hunted = hunted->GetGUID();
                                   Bounty[hunted->GetGUID()].hunter = player->GetGUID();
                                   Bounty[hunted->GetGUID()].gold = bountygold;
                                   Bounty[hunted->GetGUID()].name = name.c_str();
                                   Bounty[hunted->GetGUID()].bounty = player->GetName();
                                   Bounty[hunted->GetGUID()].inserttime = time(NULL);
                                   Bounty[hunted->GetGUID()].announced=0;
                                   // preparo l'avvisaglia
                                   ChatHandler(player->GetSession()).PSendSysMessage("Taglia inserita per %s - diventera attiva fra 2 minuti", name.c_str());
                                   //ChatHandler(hunted).PSendSysMessage("Attenzione, %s ha messo una taglia su di te! Si attivera fra 2 minuti", player->GetName());
                                   CheckAnnounceableBounties();
								   player->PlayerTalkClass->SendCloseGossip();
                                   break;
                        }
                        //per finire mi riporto alla condizione di partenza
                        hunted = NULL;
                        name = "";
                        return false;
						
                }


};
 
class bounty_kills : public PlayerScript
{
   public:
           bounty_kills() : PlayerScript("bounty_kills") { }
 
		   //Questa funzione viene chiamata da Unit.cpp ogni qualvolta avviene una kill in pvp
           void OnPVPKill(Player * killer, Player * victim)
           {
               if(Bounty.empty())
                   return;
			   //verifico esistenza del killer e il fatto che sia un normale player
			       if(killer){
				       //verifico esistenza della victim e il fatto che sia un normale player
				       if(victim){

					       //controllo che killer e vittima non siano uguali o che la lista bounty sia vuota
					       if(killer->GetGUID() == victim->GetGUID())
							       return;

					       //giro la lista delle bounty e vado a selezionare la bounty appena avvenuta
					       //(guardo la victim che mi viene passata come argomento)
					       for(map<uint64, BountyInfo>::const_iterator i = Bounty.begin(); i != Bounty.end(); i++)
					       {
							       if(i->second.hunted == victim->GetGUID())
							       {
                                       if(difftime(time(NULL),i->second.inserttime)>acttime){
								           //mi salvo i guid di killer e vittima
								           uint64 killerguid = killer->GetGUID();
									       uint64 victimguid = victim->GetGUID();
									       //Salvo la kill sul database a fini statistici
								           CharacterDatabase.PExecute("INSERT INTO bounty_kills (killer, victim, date) VALUES(%u, %u, NOW())", killerguid, victimguid);  
									       //Do' i soldi al killer: x4 se è la stessa persona che ha messo la bounty, x2 se normale
                                           if(i->second.hunter == killer->GetGUID()){
									        killer->ModifyMoney((Bounty[victim->GetGUID()].gold)*4);
                                           }
                                           else {
                                               killer->ModifyMoney((Bounty[victim->GetGUID()].gold)*2);
                                           }
									       //Cancello la entry per questa bounty
                                           if(!Bounty.empty())
									            Bounty.erase(victim->GetGUID());
									       //Annuncio al mondo l'uccisione
									       DoSendMessageToWorld(3, victim->GetName(), killer->GetName());
                                       }
                                       else{
                                           ChatHandler(killer->GetSession()).PSendSysMessage("Troppo presto! La taglia non era ancora attiva!");
                                       }
							       }
					       }
				       }
			       }
           }
};


//Inserisco il comando custom per le taglie in PVP

class bounty_chat : public CommandScript
{
   public:
           bounty_chat() : CommandScript("bounty_chat") { }
           
           ChatCommand * GetCommands() const {
               static ChatCommand bountyCommandTable[]={
               {"bounty", SEC_PLAYER, false, &HandleBountyAddCommand,"",NULL},
               {"mostwanted", SEC_PLAYER, false, &HandleBountyListCommand,"",NULL},
               {NULL, 0, false, NULL,"",NULL}
               };
               return bountyCommandTable;
           }
		   
           static bool HandleBountyAddCommand(ChatHandler *handler, char const *args){

                if(*args){
                    if(Player *player = handler->GetSession()->GetPlayer()){
                      if(player->GetBattleground()){
                        string name = args;
                        Player * hunted = NULL;
                        uint32 enabledbounty = GetOptionValue(1);
                        uint32 bountygold = GetOptionValue(2);
                        uint32 enablehunted = GetOptionValue(3);
                        uint32 enabledualbox = GetOptionValue(4);		
                        if (enabledbounty !=1){
                            ChatHandler(player->GetSession()).PSendSysMessage("Trinità è disabilitato...");
                            return false;
                        }
                        if(player->GetMoney() < bountygold )
                        {
                            ChatHandler(player->GetSession()).PSendSysMessage("Non hai abbastanza oro!");
                            return false;
                        }

                        if(!name.empty())
                            hunted = sObjectAccessor->FindPlayerByName(name.c_str());

                        if(name == player->GetName())
                        {
                            ChatHandler(player->GetSession()).PSendSysMessage("Non puoi mettere una taglia su te stesso!");
                            return false;
                        }
 
                        if(!hunted)
                        {
                            ChatHandler(player->GetSession()).PSendSysMessage("Il giocatore %s non e' online.", name.c_str());
                            return false;
                        }

                        if(hunted->GetSession()){
                            if(player->GetSession()){
                                if((hunted->GetSession()->GetRemoteAddress() == player->GetSession()->GetRemoteAddress()) && (enabledualbox == 0)){
                                    ChatHandler(player->GetSession()).PSendSysMessage("Stai mettendo la taglia su qualcuno col tuo stesso IP. Possibile dualbox.");
                                    CharacterDatabase.PExecute("INSERT INTO bounty_kills (killer, victim, date) VALUES(%u, 0, NOW())", player->GetGUID());  
                                    return false;
                                }
                            }
                        }

                        if(hunted->getLevel() != 85){
                            ChatHandler(player->GetSession()).PSendSysMessage("Il ricercato non è di livello 85 - non puoi inserire la taglia");
                            return false;
                        }

                
                        for(map<uint64, BountyInfo>::const_iterator i = Bounty.begin(); i != Bounty.end(); ++i)
                        {
                            if(i->second.bounty == player->GetName())
                            {
                                ChatHandler(player->GetSession()).PSendSysMessage("Hai gia inserito una taglia!!");
                                return false;
                            }
                            if((i->second.hunted == player->GetGUID()) && (enablehunted==0))
                            {
                                ChatHandler(player->GetSession()).PSendSysMessage("Non puoi inserire una taglia.. sei TU un most wanted!");
                                player->PlayerTalkClass->SendCloseGossip();
                                return false;
                            }
                            if(i->second.hunted == hunted->GetGUID())
                            {
                                ChatHandler(player->GetSession()).PSendSysMessage("Attenzione, %s ha gia una taglia sulla sua testa... dagli la caccia!", i->second.name.c_str());
                                player->PlayerTalkClass->SendCloseGossip();
                                return false;
                            }
                        }
                        
                        player->ModifyMoney(-int64(bountygold));
                        Bounty[hunted->GetGUID()].hunted = hunted->GetGUID();
                        Bounty[hunted->GetGUID()].hunter = player->GetGUID();
                        Bounty[hunted->GetGUID()].gold = bountygold;
                        Bounty[hunted->GetGUID()].name = name.c_str();
                        Bounty[hunted->GetGUID()].bounty = player->GetName();
                        Bounty[hunted->GetGUID()].inserttime = time(NULL);
                        Bounty[hunted->GetGUID()].announced=0;
                        ChatHandler(player->GetSession()).PSendSysMessage("Taglia inserita per %s - diventera attiva fra 2 minuti", name.c_str());
                        return true;
                    }
                  }
                }
                return false;
            }
            static bool HandleBountyListCommand(ChatHandler *handler, char const *args){
                if(Player *player = handler->GetSession()->GetPlayer()){
                    ChatHandler(player->GetSession()).PSendSysMessage("Taglie attuali:");
                    if(!Bounty.empty()){
                        for(map<uint64, BountyInfo>::const_iterator i = Bounty.begin(); i != Bounty.end(); i++){
                            if(difftime(time(NULL),i->second.inserttime)>acttime){
                                ChatHandler(player->GetSession()).PSendSysMessage("\n Nome: %s, Ricercato da: %s", i->second.name.c_str(), i->second.bounty.c_str());
                                return true;
                            }
                            if(Bounty.empty())
                                break;
                        }
                    }
                }
                return false;
            }
};

 
void AddSC_bounties_hunters()
{       
        new npc_b_hunter;
        new bounty_kills;
        new bounty_chat;
}