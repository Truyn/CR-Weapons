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
	url = "https://vk.com/fr4nch | https://github.com/fr0nch"
};

public void CR_OnPreRoundStart(KeyValues Kv)
{
	if(Kv)
	{
		bFPSDisabled = view_as<bool>(Kv.GetNum("fps_disabled", 0));	
		if(bFPSDisabled) FPS_DisableStatisPerRound();
	}
}

public void CR_OnRoundEnd(KeyValues Kv)
{
	if(Kv) if(bFPSDisabled) bFPSDisabled = false;
}
