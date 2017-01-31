#include "..\..\..\script_macros.hpp"
/*
    File: fn_copOnDuty.sqf
    Author: !TS JORDAN
*/

private _player = player;
private _name = player getVariable ["realname", name player];

if(isNull _player) exitWith {};

[2,"STR_ON_DUTY",true,[profileName]] remoteExecCall ["life_fnc_broadcast",west];

player setVariable ["offDuty", false, true];