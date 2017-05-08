#include "..\..\script_macros.hpp"
/*
    File: fn_gather.sqf
    Author: Devilfloh

    Description:
    Main functionality for gathering.
*/
private ["_maxGather","_resource","_amount","_maxGather","_requiredItem","_zone","_profType"];
if (life_action_inUse) exitWith {};
if ((vehicle player) != player) exitWith {};
if (player getVariable "restrained") exitWith {hint localize "STR_NOTF_isrestrained";};
if (player getVariable "playerSurrender") exitWith {hint localize "STR_NOTF_surrender";};

life_action_inUse = true;
_zone = "";
_requiredItem = "";
_exit = false;
private _tree = objNull;

_resourceCfg = missionConfigFile >> "CfgGather" >> "Resources";
for "_i" from 0 to count(_resourceCfg)-1 do {

    _curConfig = _resourceCfg select _i;
    _resource = configName _curConfig;
    _maxGather = getNumber(_curConfig >> "amount");
    _zoneSize = getNumber(_curConfig >> "zoneSize");
    _resourceZones = getArray(_curConfig >> "zones");
    _requiredItem = getText(_curConfig >> "item");
    {
        if ((player distance (getMarkerPos _x)) < _zoneSize) exitWith {_zone = _x;};
    } forEach _resourceZones;
    if (_zone != "") exitWith {};
};
 
if (_zone isEqualTo "") exitWith {life_action_inUse = false;};

if (_resource isEqualTo "logs" && str cursorObject find ": t_" > 0 && player distance cursorObject < 10 && !isNull cursorObject) then 
    {
        _tree = cursorObject;
    };
    
if (_resource isEqualTo "sugar" && str cursorObject find ": b_sugar" > 0 && !isNull cursorObject) then {_tree = cursorObject;};

if (_requiredItem != "") then {
    _valItem = missionNamespace getVariable "life_inv_" + _requiredItem;

    if (_valItem < 1) exitWith {
    hint format["You need to have a %1 to continue",_requiredItem];
        life_action_inUse = false;
        _exit = true;
    };
};

if (_exit) exitWith {life_action_inUse = false;};

//Find prof type and get level
_profType = [_resource] call life_fnc_profType;
_flag = PROF_SIDE(playerside);
_data = PROF_VALUE(_profType,_flag);
_level = _data select 0;

//Setup amount
_amount = _maxGather + _level;
_diff = [_resource,_amount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if (_diff isEqualTo 0) exitWith {
    hint localize "STR_NOTF_InvFull";
    life_action_inUse = false;
};

switch (_requiredItem) do {
    case "pickaxe": {player say3D "mining";};
    case "chainsaw": {player say3D "chainsaw";};
    default {player say3D "harvest";};
};

for "_i" from 0 to 4 do {
    player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
    sleep 0.5;
};
//Handle inv/notify
if ([true,_resource,_diff] call life_fnc_handleInv) then {
    _itemName = M_CONFIG(getText,"VirtualItems",_resource,"displayName");
    titleText[format [localize "STR_NOTF_Gather_Success",(localize _itemName),_diff],"PLAIN"];
    if (!isNull _tree) then {_tree setDamage 1;};
};
//Add XP
[_profType,round(_level) * 5] call life_fnc_addExp;

sleep 1;
life_action_inUse = false;
