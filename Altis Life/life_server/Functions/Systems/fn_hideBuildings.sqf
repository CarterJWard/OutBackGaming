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
    [hide7, ["HOUSE"], 10],
    [hide8, ["HOUSE"], 15],
    [hide9, ["HIDE"], 3],
    [hide10, ["HIDE"], 2],
    [hide11, ["HIDE"], 2],
    [hide12, [], 4],
    [hide13, ["HIDE"], 2],
    [hide14, ["HIDE"], 2],
    [hide15, ["HIDE"], 2],
    [hide16, ["HIDE"], 2],
    [hide17, ["HIDE"], 5],
    [hide18, ["HIDE"], 5],
    [hide19, ["HIDE"], 5],
    [hide20, ["HIDE"], 5],
    [hide21, [], 70],
    [hide22, [], 10],
    [hide23, [], 10],
    [hide24, [], 10],
    [hide25, [], 10],
    [hide26, ["HIDE"],5 ]
];

{ 
    { 
        hideObjectGlobal _x;
    } forEach nearestTerrainObjects _x;
} forEach _toHide;

diag_log "Buildings Hidden";