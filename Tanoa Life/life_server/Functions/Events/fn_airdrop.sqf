/*
File Name: fn_airdrop.sqf
Author: Larry Lancelot (Original concept by RYANTT)
Description: Runs the aidrop mission the the markers on the map
*/
//Setup vars
private ["_group1","_box1","_wp1","_wp2","_aRifle","_pistol","_mags","_mags2","_special","_notif"];
_spawnPos = "ADSpawn"; //Where the aidrop will spawn
_endPos = "ADEnd"; //Where the helicoptor fly to when the box is dropped
_box1 = "Land_CargoBox_V1_F"; //Type of box that will be used to store the weapons

//Check for set amount of players if not enough people are online will exit 
waitUntil({side _x == civilian} count playableUnits < 1);
uiSleep 200;
//when timer runs out call the first alert
["Airdrop Mission","airdrop will be in 10 minutes",nil,""] remoteExec ["life_fnc_showNotification",civilian];
uiSleep 300;

//Select one of the markers which wil then become the airdrop location
_dropLoc = ["drop_1","drop_2","drop_3","drop_4"] call BIS_fnc_selectRandom;

//Create a marker on one of the drop markers and send another alert
_marker = createMarker ["arMarker",getMarkerPos _dropLoc];
    "arMarker" setMarkerColor "ColorBlack";
    "arMarker" setMarkerText "Airdrop";

["Airdrop Mission","Airdrop in 5 minutes",nil,""] remoteExec ["life_fnc_showNotification",civilian];
uiSleep 240;
//Create The vehicles 
heli1 = "B_Heli_Transport_03_unarmed_F";
bHeli = createVehicle [heli1, getMarkerPos _spawnPos, [], 0, "FLY"];
bHeli allowDamage false;

//one more alert
["Airdrop Misison","The Supply mission has been spotted approaching the marked area. check your map as it will be delieverd soon",nil,""] remoteExec ["life_fnc_showNotification", civilian];

//Setup pilots,grouping and make waypoints
_group1 = [getMarkerPos _spawnPos, civilian, ["O_G_Soldier_SL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
{_x moveInDriver bHeli} forEach units _group1;

_wp1 = _group1 addWaypoint [getMarkerPos _dropLoc, 0];
    _wp1 setWaypointStatements ["true", "_unload = bHeli setSlingLoad objNull"];
_wp2 = _group1 addWaypoint [getMarkerPos _endPos, 0];
["Airdrop Mission", "The supplies have been dropped and will self destruct in 20 minutes, Get what you can before someone gets you!",nil,""] remoteExec ["life_fnc_showNotification", civilian];

//Create the box
_container = createVehicle [_box1, getMarkerPos _spawnPos, [], 0, "NONE"];
_load = bHeli setSlingLoad _container;
_container allowDamage false;

//Item config
    //Assualt Rifles
    _ar1 = ["arifle_MXC_F", 10];
    _ar2 = ["arifle_MXM_F", 5];
    _ar3 = ["arifle_TRG20_F", 7];
    _ar4 = ["arifle_MX_SW_F", 3];
    _ar5 = ["arifle_Katiba_F",10];
    _aRifle = [_ar1,_ar2,_ar3,_ar4,_ar5] call BIS_fnc_selectRandom;
    
    //Pistols
    _ps1 = ["hgun_Rook40_F", 11];
    _ps2 = ["hgun_ACPC2_F", 10];
    _ps3 = ["hgun_Pistol_heavy_01_F", 5];
    _pistol = [_ps1, _ps2, _ps3] call BIS_fnc_selectRandom;
    
    //Mags
    _mg11 = ["30Rnd_556x45_Stanag", 30];
    _mg12 = ["30Rnd_65x39_caseless_mag", 25];
    _mg13 = ["100Rnd_65x39_caseless_mag",5];
    _mags = [_mg11,_mg12,_mg13] call BIS_fnc_selectRandom;
    
    //Mags 2
    _mg21 = ["10Rnd_762x54_Mag", 13];
    _mg22 = ["20Rnd_762x51_Mag", 14];
    _mags2 = [_mg21,_mg22] call BIS_fnc_selectRandom;
    
    //Special
    _sp1 = ["srifle_DMR_01_F", 4];
    _sp2 = ["srifle_EBR_F", 2];
    _sp3 = ["LMG_Mk200_F", 1];
    _sp4 = ["200Rnd_65x39_cased_Box",2];
    _special = [_sp1,_sp2,_sp3,_sp4] call BIS_fnc_selectRandom;

//Fill the box has a delay so it cannot be shot down
uiSleep 30;
_container addWeaponCargoGlobal _aRifle;
_container addWeaponCargoGlobal _pistol;
_container addWeaponCargoGlobal _mags;
_container addWeaponCargoGlobal _mags2;
_container addWeaponCargoGlobal _special;

//Destroy the box after 20 minutes
uiSleep 1300;
["Airdrop Mission","The airdrp supply box will self destruct in 10 secconds",nil,""] remoteExec ["life_fnc_showNotification",civilian];
uiSleep 10;
_container allowDamage true;
_container setDamage 1;
deleteMarker "arMarker";
["Airdrop Mission","The box has been destroyed and mission has ended. good work everyone",nil,""] remoteExec ["life_fnc_showNotification",civilian];
bHeli allowDamage true;
bHeli setDamage 1;
