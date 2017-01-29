//To do


//Setup vars
private ["group1","_container","box1","_box1","_wp1","_wp2"];
_spawnPos = "ADSpawn";
_endPos = "ADEnd";
_box1 = "Land_Cargo10_grey_F";

//when timer runs out call the first alert
["Airdrop Mission","airdrop will be in 10 minutes",nil,""] remoteExec ["life_fnc_showNotification",RCLIENT];
sleep 300;

//wait 5 minutes then select one of the markers
_dropLoc = ["drop_1","drop_2","drop_3","drop_4"] call BIS_fnc_selectRandom;

//Create a marker on one of the drop markers and send another alert
_marker = createMarker ["arMarker",getMarkerPos _dropLoc];
    "arMarker" setMarkerColor "ColorBlack";
    "arMarker" setMarkerText "Airdrop";

["Airdrop Mission","Airdrop in 5 minutes",nil,""] remoteExec ["life_fnc_showNotification",RCLIENT];

//Create The vehicles 
heli1 = "B_Heli_Transport_03_unarmed_F";
bHeli = createVehicle [heli1, getMarkerPos _spawnPos, [], 0, "FLY"];
bHeli allowDamage false;

//Setup pilots,grouping and make waypoints
_group1 = [getMarkerPos _spawnPos, civilian, ["O_G_Soldier_SL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
{_x moveInDriver bHeli} forEach units _group1;

_wp1 = _group1 addWaypoint [getMarkerPos _dropLoc, 0];
    _wp1 setWaypointStatements ["true", "nil; _unload = bHeli setSlingLoad objNull"];
_wp2 = _group1 addWaypoint [getMarkerPos _endPos, 0];

//Create the first box and connect the box to the huron
_container = createVehicle [_box1, getMarkerPos _spawnPos];
_load = bHeli setSlingLoad _container;
_container allowDamage false;

//Item config
[]
[]
[]
//Fill the box
_container addWeaponCargoGlobal [];



