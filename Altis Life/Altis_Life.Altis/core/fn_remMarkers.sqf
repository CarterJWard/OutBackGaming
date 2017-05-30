/*
File fn_re
*/
private ["_copMarkers","_civMarkers"];
_copMarkers = ["Dealer_1_3","Dealer_1","Dealer_1_4"];
_civMarkers = [];

if (playerside isEqualTo west) then {
{ deleteMarkerLocal _x; } forEach _copMarkers; 
}; 

if (playerside isEqualTo civilian) then {
    { deleteMarkerLocal _x; } forEach _civMarkers;
};