#include "..\..\script_macros.hpp"
/*
    File: fn_adminMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens the admin menu and hides buttons based on life_gigadmin863.
*/
private["_display","_list","_side","_godmode","_markers"];
if (FETCH_CONST(life_gigadmin863) < 1) exitWith {closeDialog 0;};

disableSerialization;

waitUntil {!isNull (findDisplay 2900)};
_list = CONTROL(2900,2902);
if (FETCH_CONST(life_gigadmin863) < 1) exitWith {closeDialog 0;};

switch (FETCH_CONST(life_gigadmin863)) do
{
    case 1: {ctrlShow [2904,false];ctrlShow [2905,false];ctrlShow [2906,false];ctrlShow [2907,false];ctrlShow [2908,false];ctrlShow [2909,false];ctrlShow [2910,false];};
    case 2: {ctrlShow [2904,false];ctrlShow [2905,false];ctrlShow [2906,false];ctrlShow [2907,false];ctrlShow [2908,false];ctrlShow [2909,false];ctrlShow [2910,false];};
    case 3: {ctrlShow [2904,false];ctrlShow [2907,false];ctrlShow [2908,false];ctrlShow [2909,false];ctrlShow [2910,false];};
    case 4: {};
};

//Purge List
lbClear _list;

{
    _side = switch (side _x) do {case west: {"Cop"}; case civilian: {"Civ"}; case independent: {"Medic"}; default {"Unknown"};};
    _list lbAdd format["%1 - %2", _x getVariable ["realname",name _x],_side];
    _list lbSetdata [(lbSize _list)-1,str(_x)];
} forEach playableUnits;
if (FETCH_CONST(life_gigadmin863) < 1) exitWith {closeDialog 0;};

if (life_god) then {
    _godmode = CONTROL(2900,2908);
    _godmode ctrlSetTextColor [0, 255, 0, 1];    // green
};
if (life_markers) then {
    _markers = CONTROL(2900,2910);
    _markers ctrlSetTextColor [0, 255, 0, 1];    // green
};