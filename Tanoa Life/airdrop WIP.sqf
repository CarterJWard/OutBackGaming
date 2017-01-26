//To do


//Setup vars
private ["_myGroup1","_marker"]
_spawnPos = "ADSpawn";
_endPos = "ADEnd";
//Create the Timer on startup
_minTime = 3600;
_maxTime = random(7200);
sleep (_minTime + _maxTime);
//when timer runs out call the first alert
["Airdrop Mission","airdrop will be in 10 minutes",nil,""] remoteExec ["life_fnc_showNotification",RCLIENT];
sleep 300;

//wait 10 minutes then select one of the markers
_dropLoc = ["drop_1","drop_2","drop_3","drop_4"] call BIS_fnc_selectRandom;

//Create a marker on one of the drop markers and send another alert
_marker createMarker ["arMarker",getMarkerPos _dropLoc];
    "arMarker" setMarkerColor "ColorBlack";
    "arMarker" setMarkerText "Airdrop";

["Airdrop Mission","Airdrop in 5 minutes",nil,""] remoteExec ["life_fnc_showNotification",RCLIENT];

//Create The vehicles 
heli1 = " B_Heli_Transport_03_unarmed_F";
bHeli = createVehicle [heli1, getMarkerPos _spawnPos, [], 0, "FLY"];
bHeli allowDamage false;

//Setup pilots,grouping and make waypoints
_myGroup1 = [[_dropLoc], CIVILIAN, ["O_G_Soldier_SL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
{_x moveInDriver heli1} forEach units _myGroup1;
_myGroup1 addWaypoint [getMarkerPos _dropLoc, 0];
_myGroup1 addWaypoint [getMarkerPos _endPos, 0];

Land_Cargo20_blue_F
//Create the box to be connected to the huron
//select one of the markers
//set them to fly towards the marker
//Drop the box then switch to the crate. then fill the crate
//set to drop when it gets on the marker. then set to fly away and self destruct
//set the box to explode after a said time

