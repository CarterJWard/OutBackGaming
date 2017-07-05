#include "..\..\..\script_macros.hpp"
/*
Author: Larry Lancelot
Description: Does the spray can stuff
*/
private ["_wallFound"];
_wallFound = false;
_wall = param [0,ObjNull,[ObjNull]];
_array = [0] call TON_fnc_grafCfg;

//Check if the wall is in the array
{if (_wall in _x) exitWith {_wallFound = true;};} forEach _array;
if !(_wallFound) exitWith {hint "This isn't a graffiti spot";};
if (!(_wall getVariable["shown",true])) exitWith {hint "There is already grafiti on this wall"};
(!([false,"spraycan",1] call life_fnc_handleInv)) exitWith {};

//Once passed show the progress Barrier1
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;

while {true} do {
sleep 0.2;
_cP = _cP + 0.0017;
_progress progressSetPosition _cP;
if(_cP >= 1) exitWith {};
};

//Show The grafiti
[_wall , 1] spawn TON_fnc_grafCfg;


