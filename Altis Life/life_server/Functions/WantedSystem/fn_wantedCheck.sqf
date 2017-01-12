#include "\life_server\script_macros.hpp"
/*
    File: fn_wantedCheck.sqf
    Author: !TS JORDAN

    Description:
    Checks the wanted value for the hud.
*/

_uid = [_this,0,"",[""]] call BIS_fnc_param;
_player = [_this,1,objNull,[objNull]] call BIS_fnc_param;

if (isNull _player) exitWith {};

_query = format["SELECT wantedBounty FROM wanted WHERE active='1' AND wantedID='%1'",_uid];
_queryResult = [_query,2] call DB_fnc_asyncCall;

if (count _queryResult != 0) then {
	private _amount = _queryResult select 0;
	[_amount] remoteExecCall ["life_fnc_wantedUpdate",(owner _player)];
} else {
	[0] remoteExecCall ["life_fnc_wantedUpdate",(owner _player)];
};