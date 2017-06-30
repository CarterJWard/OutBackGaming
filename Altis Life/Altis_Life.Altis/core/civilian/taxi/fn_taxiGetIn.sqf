#include "..\..\..\script_macros.hpp"
/*
Author: Larry Lancelot
To Do: parse text etc
*/
private ["_player","_vehicle"];
params [
    ["_player",objNull,[objNull]],
    ["_vehicle",objNull,[objNull]]
];
hint "Your driver is on their way. When they arrive please enter the vehicle";
waitUntil {(vehicle player) isEqualTo _vehicle};
[player,BANK] remoteExec ["life_fnc_taxiTrip",_player];
