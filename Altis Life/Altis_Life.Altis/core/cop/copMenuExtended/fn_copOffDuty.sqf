#include "..\..\..\script_macros.hpp"
/*
    File: fn_copOffDuty.sqf
    Author: !TS JORDAN
*/

private _player = player;
private _name = player getVariable ["realname", name player];

if(isNull _player) exitWith {};

[2,"STR_OFF_DUTY",true,[profileName]] remoteExecCall ["life_fnc_broadcast",west];

player setVariable ["offDuty", true, true];