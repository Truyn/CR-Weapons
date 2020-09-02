<h3><b>CR Weapons</b></h3>

>**weapons** - Ключ в который нужно вписать оружия, которые нужно выдавать. <br />
>**block_weapons** - Отвечает за блокировку оружия прописанного в ключе `weapons`, если нет оружий в ключе `weapons`, не будет работать. <br />
>**no_weapons** - Очищает игроков от оружия. <br />
>**no_knife** - Очищает оружие, и блокирует ножи, если есть оружия в ключе `weapons`. <br />
>**save_weapons** - Сохраняет оружия игрока перед нестандартным раундом. <br />

**Пример:**
```
"Scout Only"
{
	"weapons"			"weapon_ssg08"
	"block_weapons"		"1"

	"message"			"Начался Scout Only раунд!"
	"vip_disable"	"BunnyHop,BoostLadder,NoFallDamage,RegenHP"
}

"Knifes"
{
	"block_weapons"	"1"
	"no_weapons"		"1"

	"message"			"Начался Knife раунд!"
	"vip_disable"	"BunnyHop,BoostLadder,NoFallDamage,RegenHP"
}
  
"Fists"
{
	"weapons"			"weapon_fists"
	"block_weapons"		"1"
	"no_knife"			"1"

	"hp"				"50"
	"vip_disable"	"BunnyHop,BoostLadder,NoFallDamage,RegenHP"

	"message"			"Начался кулачный раунд!"
}
```
