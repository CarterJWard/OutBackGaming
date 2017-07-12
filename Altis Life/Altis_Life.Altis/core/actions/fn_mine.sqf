#include "..\..\script_macros.hpp"
    /*
        File: fn_mine.sqf
        Author: Devilfloh
        Editor: Dardo

        Description:
        Same as fn_gather,but it allows use of probabilities for mining.
    */
private["_maxGather", "_resource", "_amount", "_requiredItem", "_mined","_profType"];
if (life_action_inUse) exitWith {};
if ((vehicle player) != player) exitWith {};
if (player getVariable "restrained") exitWith {
	["Error", format [localize "STR_NOTF_isrestrained"],[1,0,0,1],""] call life_fnc_showNotification;
};
_exit = false;
if (player getVariable "playerSurrender") exitWith {
	["Error", format [localize "STR_NOTF_surrender"],[1,0,0,1],""] call life_fnc_showNotification;
};
life_action_inUse = true;
_zone = "";
_requiredItem = "";
_zoneSize = (getNumber(missionConfigFile >> "CfgGather" >> "zoneSize"));

_resourceCfg = missionConfigFile >> "CfgGather" >> "Minerals"; 
_percent = (floor random 100) + 1; //Make sure it's not 0

for "_i" from 0 to count(_resourceCfg)-1 do {
    _curConfig = _resourceCfg select _i;
    _resources = getArray(_curConfig >> "mined"); 
    _maxGather = getNumber(_curConfig >> "amount");
    _resourceZones = getArray(_curConfig >> "zones");
    _requiredItem = getText(_curConfig >> "item");
    _mined = "";

    if (_resources isEqualTo []) exitWith {}; //Smart guy :O
    for "_i" from 0 to count (_resources) do {
        if (count _resources isEqualTo 1) exitWith {
            if (!((_resources select 0) isEqualType [])) then {
                _mined = _resources select 0;
            } else {
                _mined = (_resources select 0) select 0;
            };
        };
        _resource = (_resources select _i) select 0;
        _prob = (_resources select _i) select 1;
        _probdiff = (_resources select _i) select 2;
        if ((_percent >= _prob) && (_percent <= _probdiff)) exitWith {
            _mined = _resource;
        };
    };

    {
        if ((player distance(getMarkerPos _x)) < _zoneSize) exitWith {
            _zone = _x;
        };
    } forEach _resourceZones;

    if (_zone != "") exitWith {};
};

if (_zone isEqualTo "") exitWith {
    life_action_inUse = false;
};

if (_requiredItem != "") then {
    _valItem = missionNamespace getVariable "life_inv_" + _requiredItem;

    if (_valItem < 1) exitWith {
        switch (_requiredItem) do {
            case "pickaxe": {
                titleText[(localize "STR_NOTF_Pickaxe"), "PLAIN"];
            };
        };
        life_action_inUse = false;
        _exit = true;
  };
};

if (_exit) exitWith {
    life_action_inUse = false;
};
_profType = [_mined] call life_fnc_profType;
_flag = PROF_SIDE(playerside);
_data = PROF_VALUE(_profType,_flag);
_level = _data select 0;

_amount = round(random(_maxGather)) + _level;
_diff = [_mined, _amount, life_carryWeight, life_maxWeight] call life_fnc_calWeightDiff;
if (_diff isEqualTo 0) exitWith {
	["Error", format [localize "STR_NOTF_InvFull"],[1,0,0,1],""] call life_fnc_showNotification;
    life_action_inUse = false;
};
player say3D "mining";

for "_i" from 0 to 4 do {
    player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil {
        animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    };
    sleep 0.5;
};

if (([true, _mined, _diff] call life_fnc_handleInv)) then {
    _itemName = M_CONFIG(getText, "VirtualItems", _mined, "displayName");
    titleText[format[localize "STR_NOTF_Gather_Success", (localize _itemName), _diff], "PLAIN"];
};

[_profType,round(_level) * 5] call life_fnc_addExp;
sleep 2.5;
life_action_inUse = false;