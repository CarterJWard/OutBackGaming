/*
Author: Larry Lancelot
File: fn_hideGraf
*/
private ["_wall","_graf"];
_graf = [_this,0,[[]],[[],0]] call BIS_fnc_param;
{
    _wall = _x select 1;
} forEach _graf

{
    _x hideObjectGlobal true;
} forEach _graf;

{
    _x setVariable ["shown",false,1];
} forEach _wall;