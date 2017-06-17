#include "..\..\script_macros.hpp"
/*
	File: fn_lootHouse.sqf
	Author: Fresqo
	Description:
	Searches for loot in broken houses and buildings.
	Props to whoever made the progress bar from the robshop function if it was MrKraken or PEpwnzya
	
	INSTALLATION INSTRUCTIONS
	    - put file into core/actions/
		- ADD TO FILE: Functions.hpp (CLIENT SIDE) in the class Actions {
		
		    class loot {};
		    
*/
private["_r","_time","_itemName","_diff","_give","_loothouse","_lchance","_looting","_lootArr","_loot","_vrlootArr","_reglootArr","_lootamount","_vrloot","_regloot","_multi","_found","_data","_addExpAmount","_give","_bad","_type"];
_type = [_this,3,"",[""]] call BIS_fnc_param;
_bad = false;
_give = "";
_time = 0.13;
private _type2 = "";
_r = 205;
if (player getVariable ["potion",false]) then {_r = 180;};
switch (_type) do {
	case "1": {_loothouse = cursorObject;};
	case "2": {_loothouse = cursorTarget;};
	default {_bad = true};
};

_data = PROF_VALUE("pScavenger","civ");
_time = ( 0.13 - (0.002 * (SEL(_data,0))));
_r = (_r - (5 * (_data select 0)));
_lchance = round(random _r);						
_vrlootArr = M_CONFIG(getArray,"LootCfg","LootRare","loot_rare");
_lootArr = M_CONFIG(getArray,"LootCfg","LootNorm","loot_norm");		
_reglootArr = M_CONFIG(getArray,"LootCfg","LootEasy","loot_easy");
_lootamount = round (random 3) +1;
_vrloot = _vrlootArr select floor random count _vrlootArr;
_loot = _lootArr select floor random count _lootArr;
_regloot = _reglootArr select floor random count _reglootArr;
_found = false;
//_addExpAmount = 5;

if(isNull _loothouse) exitWith {};
if (_bad) exitWith {};
if ((_loothouse in (missionNamespace getVariable ["looted",[]]))) exitWith {hint localize "STR_NOTF_LootAlready"};
if(playerSide != civilian) exitWith {hint localize "STR_NOTF_CantLoot"};
if (life_looting) exitWith { hint localize "STR_NOTF_AlreadyLoot" };
if !(alive player) exitWith {};

life_looting = true;
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Searching, stay close (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(life_looting) then
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

	if!(alive player) exitWith { life_looting = false; [] call life_fnc_hudUpdate;};
	if(player distance _loothouse > 5) exitWith { hint localize "STR_NOTF_DistLoot";5 cutText ["","PLAIN"];life_looting = false;[] call life_fnc_hudUpdate; };
	5 cutText ["","PLAIN"];
	if ((_loothouse in (missionNamespace getVariable ["looted",[]]))) exitWith {hint localize "STR_NOTF_SLooted";life_looting = false;[] call life_fnc_hudUpdate;};
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
		_bad = true;
		_name = M_CONFIG(getText,"Profs","pScavenger","name");
		_addExpAmount = 5;
		["pScavenger",_addExpAmount] call life_fnc_addExp;
		//hint parseText format[localize "STR_ISTR_Found_XPSuccess2",_addExpAmount,(localize _name)];
		hint "You found nothing!"; 
	};
};

if (_bad) exitWith {life_looting = false;[] call life_fnc_hudUpdate;};
_diff = 0;
if (_type2 isEqualTo "ymenu") then 
{
    _diff = [_give,_lootamount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
};

if(_diff isEqualTo 0 && _type2 isEqualTo "ymenu") exitWith 
{
    hint localize "STR_NOTF_InvFull";
    life_looting = false;
    [] call life_fnc_hudUpdate;
};

if (_type2 isEqualTo "imenu" && !(player canAdd _give)) exitWith {hint "Your i inventory is full"}; 

private _name = M_CONFIG(getText,"Profs","pScavenger","name");
_addExpAmount = _addExpAmount + (5 * (_data select 0));

switch (_type2) do 
{
    case "ymenu": 
    { 
	if(([true,_give,_diff] call life_fnc_handleInv)) then
	{
	    _itemName = M_CONFIG(getText,"VirtualItems",_give,"displayName");
	    ["pScavenger",_addExpAmount] call life_fnc_addExp;
	    //hint parseText format[localize "STR_ISTR_Found_XPSuccess",_diff,(localize _itemName),_addExpAmount,(localize _name)];
		hint format ["You found %1 lots of %2",_diff,(localize _itemName)];
	};
    };

    case "imenu":
    {
	private _addVal = switch (true) do 
	{
	    case (player canAddItemToBackpack _give): {player addItemToBackpack _give;true;};
	    case (player canAddItemToUniform _give): {player addItemToUniform _give;true;};
	    case (player canAddItemToVest _give): {player addItemToVest _give;true;};
	    default {hint "You found nothing of any value!";false;};
        };
	if (_addVal) then 
	{
	    private _itemInfo = [_give] call life_fnc_fetchCfgDetails;
	    ["pScavenger",_addExpAmount] call life_fnc_addExp;
	    //hint parseText format[localize "STR_ISTR_Found_XPSuccess",1,(_itemInfo select 1),_addExpAmount,(localize _name)];
		hint format ["You found 1 lots of %1",(_itemInfo select 1)];
	};
    };
};

life_looting = false;	
};
[] call life_fnc_hudUpdate;
