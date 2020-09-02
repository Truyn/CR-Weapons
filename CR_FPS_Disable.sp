#pragma semicolon 1

#include <sourcemod>
#include <custom_rounds>
#include <FirePlayersStats>

#pragma newdecls required

bool sFPSDisabled;

public Plugin myinfo =
{
	name = "[CR] FPS Disable",
	description = "Данный модуль отключает получение очков опыта статистики FPS, во время не стандартного раунда.",
	version = "1.0",
	author = "fr4nch",
	url = "vk.com/fr4nch"
};

public void CR_OnRoundStart(KeyValues Kv)
{
	if(Kv) sFPSDisabled = view_as<bool>(Kv.GetNum("fps_disabled", 0));	
}

public Action FPS_OnPointsChangePre(int iAttacker, int iVictim, Event hEvent, float &fAddPointsAttacker, float &fAddPointsVictim)
{
	if(sFPSDisabled)
	{
		fAddPointsAttacker = 0.0;
		fAddPointsVictim = 0.0;
        
		return Plugin_Changed;
	}

	return Plugin_Continue;
} 

public void CR_OnRoundEnd(KeyValues Kv)
{
	if(Kv) if(sFPSDisabled) sFPSDisabled = false;
}
