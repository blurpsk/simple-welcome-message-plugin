#include <sourcemod>  
#include <cstrike>  

public Plugin myinfo =
{
	name = "Estrogenless welcome message",
	author = "Blurp",
	description = "Simple welcome message",
	version = "1.0",
	url = "https://steamcommunity.com/id/ck4"
};

public OnClientPostAdminCheck(client)
{
    CreateTimer(2.0, SendWelcomeMessage, client); 
}

public Action SendWelcomeMessage(Handle:timer, int i) {

    decl String:nick[64];
    decl String:message[128];
    GetClientName(i, nick, sizeof(nick));

    if (IsClientConnected(i) && IsClientInGame(i)) {
        Format(message,sizeof(message),"\x05Welcome %s to \x02ESTROGENLESS \x00~ \x00we hope you enjoy your time here!",nick);
        PrintToChat(i, "                                                                  ", i);
        PrintToChat(i, message, i);
        PrintToChat(i, "                                                                  ", i);
        PrintToChat(i, "      \x09|====================================================|      ", i);
        PrintToChat(i, "                                                                    ", i);
        PrintToChat(i, " \x0A1. No Doxing / Sharing private information.                         ", i);
        PrintToChat(i, "   \x0A1.1 Do not attempt to DDOS the server or any players playing on it.", i);
        PrintToChat(i, " \x0A2. No advertising, especially gambling sites and or scripts / cfgs. ", i);
        PrintToChat(i, " \x0A3. Do not whine or suck up to admins.                               ", i);
        PrintToChat(i, "   \x0A3.1 Do not argue with admins.                                      ", i);
        PrintToChat(i, "   \x0A3.2 Admins must follow the rules and have final say about decisions on a server.", i);
        PrintToChat(i, "   \x0A3.3 Staff members must wear their admin tags at all times.", i);
        PrintToChat(i, " \x0A4. No killsays.", i);
        PrintToChat(i, "   \x0A4.1 Do not spam in chat.", i);
        PrintToChat(i, "   \x0A4.2 No soundboards / micspammers.", i);
        PrintToChat(i, "                                                                  ", i);
        PrintToChat(i, "      \x09|====================================================|      ", i);
        PrintToChat(i, "                                                                    ", i);
    }
}
