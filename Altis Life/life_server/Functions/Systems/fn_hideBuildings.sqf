/*
File: fn_hideBuildings
Author: Larry Lancelot
Desciption: Hides buildings on server start allowing new buildings to be placed
*/
diag_log "Beggining hiding buildings";
_toHide = [
    [hide1, ["HIDE"], 5],
    [hide2, ["HIDE"], 5],
    [hide3, ["HIDE"], 5],
    [hide4, ["HIDE"], 5],
    [hide5, ["HIDE"], 5],
    [hide6, ["HOUSE"], 10],
    [hide7, ["HOUSE"], 10]
];

{ 
    { 
        hideObjectGlobal _x;
    } forEach nearestTerrainObjects _x;
} forEach _toHide;

diag_log "Buildings Hidden";