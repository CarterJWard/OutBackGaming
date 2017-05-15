/*
File: fn_jobList.sqf
Author: Larry Lancelot
*/
private ["_list", "_pos"];

disableSerialization;
_list CONTROL(2901,2902);
//Purge List

_list lbClear;
//Create a new list
{
    _list lbAdd format["%1 - %2", _x getVariable ["realname",name _x],_pos];
} forEach playableUnits && life_taxi_call = true;