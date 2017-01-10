#include "..\..\script_macros.hpp"
/*
	File: fn_lootHouse.sqf
	Author: Fresqo
	Description:
	Searches for loot in broken houses and buildings.
	Props to whoever made the progress bar from the robshop function if it was MrKraken or PEpwnzya
	    USAGE:
	    XP system left in for when xp is added... 
	    remove hints and add all to stringtable
*/
private["_r","_time","_itemName","_name","_diff","_give","_loothouse","_lchance","_looting","_lootArr","_loot","_vrlootArr","_reglootArr","_lootamount","_vrloot","_regloot","_multi","_found","_data","_addExpAmount"];
private _type = [_this,3,"",[""]] call BIS_fnc_param;
private _bad = false;
private _give = "";
_time = 0.13;
private _type2 = "";
_r = 100;

switch (_type) do {
	case "1": {_loothouse = cursorObject;};
	case "2": {_loothouse = cursorTarget;};
	default {_bad = true};
};

_lchance = round(random _r);						
_vrlootArr = M_CONFIG(getArray,"LootCfg","LootRare","loot_rare");
_lootArr = M_CONFIG(getArray,"LootCfg","LootNorm","loot_norm");		
_reglootArr = M_CONFIG(getArray,"LootCfg","LootEasy","loot_easy");
_lootamount = round (random 3) +1;
_vrloot = _vrlootArr select floor random count _vrlootArr;
_loot = _lootArr select floor random count _lootArr;
_regloot = _reglootArr select floor random count _reglootArr;
_found = false;
_addExpAmount = 5;

if(isNull _loothouse) exitWith {};
if (_bad) exitWith {};
if ((_loothouse in (GVAR_MNS["looted",[]]))) exitWith {hint localize "Someone has recently looted this!"};
if(playerSide != civilian) exitWith {hint "You cannot loot!"};
if (life_rip) exitWith { hint "You are in the process of doing something!" };
if !(alive player) exitWith {};

life_rip = true;
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Searching, stay close (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(life_rip) then
{
	while{true} do
	{
		sleep _time;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Searching, stay close (5m) (%1%2)...",round(_cP * 100),"%"];

		if(_cP >= 1) exitWith {};
		if(player distance _loothouse > 5) exitWith {};
		if!(alive player) exitWith {};
	};

	if!(alive player) exitWith { life_rip = false; [] call life_fnc_hudUpdate;};
	if(player distance _loothouse > 5) exitWith { hint "You need to stay within 5 metres to loot";5 cutText ["","PLAIN"];life_rip = false;[] call life_fnc_hudUpdate; };
	5 cutText ["","PLAIN"];
	if ((_loothouse in (GVAR_MNS["looted",[]]))) exitWith {hint "Someone has recently looted this!";life_rip = false;[] call life_fnc_hudUpdate;};
	[2,[_loothouse,_type]] remoteExec ["TON_fnc_timers",RSERV];

switch (true) do {
	case (_lchance <= M_CONFIG(getNumber,"LootCfg","LootSettings","loot_rare_chance")): 
		{
			_lootamount = 1;
			_give = _vrloot select 0;
			_type2 = _vrloot select 1;
			_addExpAmount = 50;
		};
	case (_lchance <= M_CONFIG(getNumber,"LootCfg","LootSettings","loot_norm_chance")): 
		{
			_give = _loot select 0;
			_type2 = _loot select 1;
			_addExpAmount = 20;
		};
	case (_lchance <= M_CONFIG(getNumber,"LootCfg","LootSettings","loot_easy_chance")): 
		{
			_give = _regloot select 0;
			_type2 = _regloot select 1;
			_addExpAmount = 10;			
		};
	default { 
		hint "You found nothing of any value!"; 
		_bad = true;
	};
};

if (_bad) exitWith {life_rip = false;[] call life_fnc_hudUpdate;};
if (_type2 isEqualTo "ymenu") then {
_diff = [_give,_lootamount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
};
if(_diff isEqualTo 0 && _type2 isEqualTo "ymenu") exitWith {
	hint localize "STR_NOTF_InvFull";
	life_rip = false;
	[] call life_fnc_hudUpdate;
};	

switch (_type2) do {
	case "ymenu": 
	    {
	        if(([true,_give,_diff] call life_fnc_handleInv)) then
	        {
		    _itemName = M_CONFIG(getText,"VirtualItems",_give,"displayName");
		    hint format["You found %1 %2",_diff,(localize _itemName)];
	        };
	    };
	case "imenu": 
	    {
	        if (player canAdd _give) then 
	        {
	            _itemInfo = [_give] call life_fnc_fetchCfgDetails;
	            hint format["You found a %1",_itemInfo select 1];
	            [_give,true] spawn life_fnc_handleItem;
	        } else {hint "You found nothing of any value!";};
	    };
};

life_rip = false;	
};
[] call life_fnc_hudUpdate;
