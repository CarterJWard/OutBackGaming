/*Author: Larry Lancelot*/
#include "..\..\script_macros.hpp"

params [
    ["_robber",objNull,[objNull]]
];
if (isNull _robber) exitWith {}; //No one to return it to?
[player,_robber] remoteExecCall ["life_fnc_recieveKidney",_robber];

player setFatigue 1; //no running for you
player setdamage 0.6; //especially no running for you
life_hasKidney = false;

[0] call SOCK_fnc_updatePartial;
