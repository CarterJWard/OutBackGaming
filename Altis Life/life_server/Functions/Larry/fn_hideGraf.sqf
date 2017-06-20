/*
Author: Larry Lancelot
File: fn_hideGraf
*/
private ["_wall","_graf","_grafiti"];
_graf = [[gwall1,graf1],[gwall2,graf2],[gwall3,graf3]];
diag_log "Hiding Grafiti";
{
    _wall = _x select 0;
    _wall setVariable ["shown",false,1];
} forEach _graf;
/*{
    _grafiti = _x select 1;
} forEach _graf;
*/
{
    (_x select 1) hideObjectGlobal true;
} forEach _graf;

diag_log "Hidden Grafiti";