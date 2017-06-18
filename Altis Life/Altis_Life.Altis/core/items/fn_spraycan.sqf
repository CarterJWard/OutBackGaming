#include "..\..\..\script_macros.hpp"
/*
Author: Larry Lancelot
Description: Does the spray can stuff
*/
private ["_wallFound"];
_wallFound = false;
_wall = param [0,ObjNull,[ObjNull]];
_array = [] call Larry_fnc_grafCfg;

//Check if the wall is in the array
{if (_wall in _x) exitWith {_wallFound = true;};} forEach _array;
if !(_wallFound) exitWith {hint "This isn't a graffiti spot";};
if (!(_wall getVariable["shown",true])) exitWith {hint "There is already grafiti on this wall"};
(!([false,"spraycan",1] call life_fnc_handleInv)) exitWith {};


//Show The grafiti
[1] spawn Larry_fnc_grafCfg;


