#include "..\..\script_macros.hpp"
/*
    File: fn_campFire.sqf
    Author: Fresqo
    Description: creates a camp fire for a period so player can cook food. can only be created in hunting zone
*/
if (life_fire) exitWith {hint "You already have one fire going somewhere!"};
private _fire = "Land_Campfire_F" createVehicle position player;
if (isNull _fire) exitWith {};

hint "You have made a camp fire, light her up and start cooking";
[3,[_fire]] remoteExec ["TON_fnc_timers",RSERV];
life_fire = true;
waitUntil {!alive _fire || !isNull _fire};
life_fire = false;
