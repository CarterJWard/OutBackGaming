/*
*/
private ["_markers","_veh"];
_markers = ["hospital_marker","car_serv1","car_serv2","car_serv3","hospital_2","hopital_3"];
_veh = cursorObject;
if (!(playerside isEqualTo independent)) then {
    if (player distance (getMarkerPos _markers) < 40) then {
        _veh = cursorObject;
        _veh setDamage 0;
    };
};