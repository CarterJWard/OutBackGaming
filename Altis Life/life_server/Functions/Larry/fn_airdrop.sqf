/*
File: fn_airdrop
Author: Larry Lancelot
*/

//Setup our variables
private ["_spawnPos","_mainVehicle","_wp","_masterBox","_drop"];
_spawnPos = [26347.924,21428.254, 150];
_mainVehicle = "B_Heli_Transport_03_unarmed_F";
_dropPoints = [[26387.695,21696.16, 80]];
_dummyBox = "Land_Cargo20_blue_F";
_masterBox = "CargoNet_01_box_F";
_endPos = [1082.097,1910.592, 0];

//Declare Vars
_dropZone = _dropPoints call BIS_fnc_selectRandom;

createMarker ["Marker",_dropZone];
"Marker" setMarkerType "Mil_Drop";
"Marker" setMarkerColor "ColorRed";
"Marker" SetMarkerText "Meme";
//Alert the peeps
//Create stuffs

_vehMain = createVehicle [_mainVehicle, _spawnPos, [], 0, "FLY"];
_crew = [_spawnPos, east, ["O_G_Soldier_SL_F"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;
{_x moveInDriver _vehMain} forEach units _crew;
_crew addWaypoint [_dropZone, 1, 1];
[_crew, 1] setWaypointSpeed "NORMAL";
_vehMain flyInHeight 100;

_firstBox = createVehicle [_dummyBox ,_spawnPos, [], 0, "CAN_COLLIDE"];
_firstBox attachTo [_vehMain,[0,0,-3.5]];
_firstBox setDir 90;


//When the helo gets close to the marker start the box dropping
waitUntil {_dropZone distance _vehMain < 50};

deleteVehicle _firstBox;
_drop = createVehicle [_dummyBox , _spawnPos, [], 0, "CAN_COLLIDE"];
_para = createVehicle ["O_Parachute_02_F", [getPos _vehMain select 0, getPos _vehMain select 1, getPos _vehMain select 2], [], 0, ""];
_para setPosATL (_vehMain modelToWorld[0,0,100]);
_para attachTo [_vehMain,[0,0,-10]];
detach _para;
_drop attachTo [_para,[0,0,-2]];
_drop setDir 90;
playSound3D ["a3\sounds_f\weapons\Flare_Gun\flaregun_1_shoot.wss", _drop];
_smoke="SmokeShellGreen" createVehicle [getpos _drop select 0, getpos _drop select 1,0];
_smoke attachTo [_drop,[0,0,0]];
_light = "Chemlight_green" createVehicle getPos _drop;
_light attachTo [_drop,[0,0,0]];
_flare = "F_40mm_Green" createVehicle getPos _drop;
_flare attachTo [_drop,[0,0,0]];
sleep 15;

_crew addWaypoint [_endPos, 1, 2];
[_crew, 2] setWaypointSpeed "NORMAL";
_vehMain flyInHeight 500;

//while { (getPos _drop select 2) > 2 } do { "airbox_marker" setMarkerPos getPos _drop;sleep 1; };
detach _drop;
_drop setPos [getPos _drop select 0, getPos _drop select 1, (getPos _drop select 2)+0.5];
playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _drop];
sleep 6;
"M_NLAW_AT_F" createVehicle [getPos _drop select 0, getPos _drop select 1, 0];
_pos_drop = getPos _drop;
deleteVehicle _drop;
sleep 0.5;
_box = createVehicle [_masterBox , _pos_drop, [], 0, "CAN_COLLIDE"];
_box allowDamage false;
_smoke="SmokeShellGreen" createVehicle [getpos _box select 0,getpos _box select 1,0];
_flare = "F_40mm_Green" createVehicle getPos _drop;
_light attachTo [_box,[0,0,0]];
_flare attachTo [_box,[0,0,0]];

//Fill Box
_weaponSelect = random(2);
switch (_weaponSelect) do {
    case 0: {_rifle = ["arifle_MX_SW_F",5];
            _rifleMag = ["100Rnd_65x39_caseless_mag", 10];};
    case 1: {_rifle = ["LMG_Mk200_F", 3];
            _rifleMag = ["200Rnd_65x39_cased_Box", 15];};
    case 2: {_rifle = ["srifle_EBR_F",5];
            _rifleMag = ["20Rnd_762x51_Mag",20];};
    
};
_magA = [["30Rnd_65x39_caseless_mag", 50],["20Rnd_762x51_Mag", 20]];
_mag = _magA call BIS_fnc_selectRandom;

_box addWeaponCargoGlobal _rifle;
_box addWeaponCargoGlobal _rifleMag;
//_box addWeaponCargoGlobal _mag;
_box addWeaponCargoGlobal ["20Rnd_762x51_Mag", 50];

//Cleanup
sleep 200;
deleteVehicle _vehMain;
deleteVehicle _box; 