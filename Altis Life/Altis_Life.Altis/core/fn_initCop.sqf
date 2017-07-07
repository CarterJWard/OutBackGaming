#include "..\script_macros.hpp"
/*
    File: fn_initCop.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Cop Initialization file.
*/
private "_end";
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

if (life_blacklisted) exitWith {
    ["Blacklisted",false,true] call BIS_fnc_endMission;
    sleep 30;
};

if (!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
    if (((life_gigcoplevel25) isEqualTo 0) && (FETCH_CONST(life_gigadmin863) isEqualTo 0)) then {
        ["NotWhitelisted",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};


player setVariable ["rank",(life_gigcoplevel25),true];
player setVariable ["offDuty", false, true];
player setVariable ["swatT",(license_cop_swat),true];

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

