#include "..\..\script_macros.hpp"
/*
    File: fn_requestMilitary.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    N/A
*/
private _medicsOnline = {_x != player && {side _x isEqualTo independent} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.

if (_medicsOnline) then {
    //There is medics let's send them the request.
    titleText ["Only Request Military When Civilian Doctors Are Unavaliable ","PLAIN", 1];
} else {
    life_corpse setVariable ["Revive",false,true]; //Set the corpse to a revivable state.
    //No medics were online, send it to the police.
    [life_corpse,profileName] remoteExecCall ["life_fnc_medicRequest",west];
};

//Create a thread to monitor duration since last request (prevent spammage).
[] spawn  {
    ((findDisplay 7300) displayCtrl 7306) ctrlEnable false;
    sleep (2 * 60);
    ((findDisplay 7300) displayCtrl 7306) ctrlEnable true;
};
