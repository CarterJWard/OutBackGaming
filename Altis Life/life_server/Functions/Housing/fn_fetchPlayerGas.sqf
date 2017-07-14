#include "\life_server\script_macros.hpp"
/*
    File : fn_fetchPlayerGas.sqf
    Author: Bryan "Tonic" Boardwine
    Modified : NiiRoZz, Larry
    Description:
    1. Fetches all the players houses and sets them up.
    2. Fetches all the players containers and sets them up.
*/
private ["_query","_houses"];
params [
    ["_uid","",[""]]
];
if (_uid isEqualTo "") exitWith {};

_query = format ["SELECT pid, pos FROM houses WHERE pid='%1' AND owned='1'",_uid];
_houses = [_query,2,true] call DB_fnc_asyncCall;

_return = [];
{
    _pos = call compile format ["%1",_x select 1];
    _house = nearestObject [_pos, "House"];
    _house allowDamage false;
} forEach _houses;

missionNamespace setVariable [format ["gas_%1",_uid],_return];