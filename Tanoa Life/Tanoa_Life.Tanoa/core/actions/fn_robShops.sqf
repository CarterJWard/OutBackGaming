#include "..\..\script_macros.hpp"
/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description: Executes the rob shob action!
Idea developed by PEpwnzya v1.0

	** EDITED BY FRESQO
	ADDACTION USEAGE:
	this addAction[localize "STR_ROB_Shop",life_fnc_robShops,[localize "STR_ROB_KavGas",20000,0.85,["seeds","lsd"],1,40,10],0,false,false,"",'vehicle player == player && player distance _target < 2 && playerSide == civilian'];
	[SHOPNAME,RANDOM#TOGIVE,TIME,[ITEMS],COPSNEEDED,ALARMCHANCE%,BONUSITEMCHANCEP%]
*/
params [
    ["_shop",objNull,[objNull]],
    ["_robber",objNull,[objNull]],
    "_action",
    ["_mod",[],[[]]]
];

if (_mod isEqualTo []) exitWith {};
_mod params [
	["_name","",[""]],
	["_value",3000,[3000]],
	["_time",0.85,[0.85]],
	["_items",[],[[]]],
	["_cops",2,[2]],
	["_alarmChance",1,[1]],
	["_itemChance",1,[1]]
];

if (_shop getVariable ["robbed",false]) exitWith {hint localize "STR_ROB_AlreadyRobbed"};
if({side _x isEqualTo west} count playableUnits < _cops) exitWith {hint format[localize "STR_Civ_NotEnoughCops",_cops]};
if(side _robber != civilian) exitWith { hint localize "STR_ROB_CantRob" };
if(_robber distance _shop > 3.5) exitWith { hint localize "STR_ROB_Distance" };

if (life_rip) exitWith { hint localize "STR_ROB_RIP" };
if (vehicle player != _robber) exitWith { hint localize "STR_NOTF_ActionInVehicle" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber isEqualTo "") exitWith { hint localize "STR_ROB_NoGun" };

life_rip = true;
private _kassa = 5000 + round(random _value);
_shop removeAction _action;
private _chance = random(100);
if(_chance <= _alarmChance) then 
{ 
	hint localize "STR_ROB_Alarm";
	[1,[_shop,30]] remoteExec ["life_fnc_marks",west];
	//[1,format[(localize "STR_ROB_MilAlert"), _name,name _robber]] remoteExec ["life_fnc_broadcast",west];
	["Station Holdup","A gas station is being help up . Please respond",{0.91,0.063,0.106,1},""] remoteExec ["life_fnc_showNotification", west];
};
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
private _ui = uiNameSpace getVariable "life_progress";
private _progress = _ui displayCtrl 38201;
private _pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (3.5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
private _cP = 0.01;
 
if(life_rip) then
{
	while{true} do
	{
		sleep _time;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Robbery in Progress, stay close (3.5m) (%1%2)...",round(_cP * 100),"%"];

		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 3.5) exitWith { };
		if!(alive _robber) exitWith {};
		if (cursorTarget isEqualTo _shop && currentWeapon _robber != "") then {_kassa = round(_kassa + random(10));};
		if((_robber getVariable["restrained",false])) exitWith {};
		if(life_istazed) exitWith {} ;
		if(life_interrupted) exitWith {};
	};

	if!(alive _robber) exitWith { life_rip = false; [] call life_fnc_hudUpdate;};
	if(_robber distance _shop > 3.5) exitWith {hint localize "STR_ROB_Distance"; 5 cutText ["","PLAIN"]; life_rip = false; [] call life_fnc_hudUpdate;};
	if(_robber getVariable "restrained") exitWith { life_rip = false; 5 cutText ["","PLAIN"]; [] call life_fnc_hudUpdate;};
	if(life_istazed) exitWith { life_rip = false; 5 cutText ["","PLAIN"]; [] call life_fnc_hudUpdate;};
	5 cutText ["","PLAIN"];
	[] call life_fnc_hudUpdate;
	if (_shop getVariable ["robbed",false]) exitWith {hint localize "STR_ROB_AlreadyRobbed";};
	[1,[_shop]] remoteExec ["TON_fnc_timers",RSERV];

	CASH = CASH + _kassa;
	//[1,format[(localize "STR_ROB_MilNotify"), _name,name _robber, [_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",west];
	["Station Holdup",format["%1 Was jut robber by %2 for %3", _name,name _robber, [_kassa] call life_fnc_numberText],{0.91,0.063,0.106,1},""] remoteExec ["life_fnc_showNotification",west];
	[getPlayerUID _robber,name _robber,"27",_robber] remoteExec ["life_fnc_wantedAdd",RSERV];
		
	if (count _items > 0) then 
	{
		_iChance = random(100);
		if (_iChance <= _itemChance && count _items > 0) then 
		{
			private _item = _items select floor random count _items;
			private _amount = round(random(2) +1);
			private _diff = [_item,_amount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
			if(_diff isEqualTo 0) exitWith 
			{
				hint localize "STR_NOTF_InvFull";
			};
				if(([true,_item,_diff] call life_fnc_handleInv)) then
				{
					private _itemName = M_CONFIG(getText,"VirtualItems",_item,"displayName");
					titleText[format[(localize "STR_ROB_Sneaky"),_diff,(localize _itemName)],"PLAIN"];
				};
		};
	};
		
	life_rip = false;
	life_use_atm = false;
	playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
	hint format[(localize "STR_ROB_Success"),_kassa];
	sleep (20 + random(10));
	[1,format[(localize "STR_ROB_TanNews"), _name, [_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",civilian];
	sleep (30 + random(180));
	life_use_atm = true;
	if !(alive _robber) exitWith {};
};

sleep 300;
_action = _shop addAction[localize "STR_ROB_Shop",life_fnc_robShops,_mod];
