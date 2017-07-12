/*
File fn_re
*/
private ["_copMarkers","_civMarkers"];
_copMarkers = ["Dealer_1","Dealer_1_4","hunting_marker","hunter_zone"];
_civMarkers = [];

if (playerside isEqualTo west) then {
{ deleteMarkerLocal _x; } forEach _copMarkers; 
}; 

if (playerside isEqualTo civilian) then {
    { deleteMarkerLocal _x; } forEach _civMarkers;
};