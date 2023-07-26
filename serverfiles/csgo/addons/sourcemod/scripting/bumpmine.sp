#include <sourcemod>
#include <sdktools>


public Plugin myinfo =
{
	name = "SM Bumpmine",
	author = "joscha0",
	description = "",
	version = "1.0.0",
	url = "https://github.com/joscha0"
};

public void OnPluginStart()
{
	RegConsoleCmd("sm_mine", Command_GetBumpMine, "get bump mine");
}

//weapon_bumpmine

public Action Command_GetBumpMine(int client, int args)
{
	if (IsClientInGame(client) && IsPlayerAlive(client)) 
	{
		int mine = GivePlayerItem(client, "weapon_bumpmine");
		if (IsValidEdict(mine))
			EquipPlayerWeapon(client, mine);
	} 

	return Plugin_Handled;
}
