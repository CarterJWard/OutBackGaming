/*
File: fn_hideBuildings
Author: Larry Lancelot
Desciption: Hides buildings on server start allowing new buildings to be placed
*/
diag_log "Beggining hidingbuildings";
_toHide = [
    [house1, ["HOUSE"], 10],
    [house2, ["HOUSE"], 5],
    [house3, ["HOUSE"], 5]
];

{ 
    { 
        hideObjectGlobal _x;
    } forEach nearestTerrainObjects _x;
} forEach _toHide;

diag_log "Buildings Hidden";