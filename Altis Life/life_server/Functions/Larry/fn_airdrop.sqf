#include "..\..\script_macros.hpp"
/*
File: fn_airdrop
Author: Larry Lancelot
*/

//Setup our variables
diag_log "started the airdrops";
uiSleep (30);
uiSleep random(60);
private ["_spawnPos","_mainVehicle","_wp","_masterBox","_drop"];
_spawnPos = [26347.924,21428.254, 150];
_mainVehicle = "B_Heli_Transport_03_unarmed_F";
_dropPoints = [[26387.695,21696.16, 80]];
_dummyBox = "Land_Cargo20_blue_F";
_masterBox = "CargoNet_01_box_F";
_endPos = [1082.097,1910.592, 0];
_copsNeeded = 0;
_civsNeeded = 0;
//Declare Vars
_dropZone = _dropPoints call BIS_fnc_selectRandom;
diag_log "variables declared";
//Checks
if ({side _x isEqualTo west} count playableUnits < _copsNeeded) exitWith {[] execVM "\life_server\Functions\Larry\fn_airdrop.sqf";};
if ({side _x isEqualTo civilian} count playableUnits < _civsNeeded) exitWith {[] execVM "\life_server\Functions\Larry\fn_airdrop.sqf";};
diag_log "passed checks";
//Alert the peeps
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 20 minutes. You will be notified of the location soon</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (30);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 15 minutes. Your map has been updated of the location</t>"] remoteexec ["life_fnc_broadcast",RANY];
createMarker ["Airdrop",_dropZone];
"Airdrop" setMarkerType "Mil_Dot";
"Airdrop" setMarkerColor "ColorRed";
"Airdrop" SetMarkerText "Airdrop Drop Point";

createMarker ["AirdropKos",_dropZone];
"AirdropKos" setMarkerColor "ColorRed";
"AirdropKos" setMarkerType "Empty";
"AirdropKos" setMarkerShape "ELLIPSE";
"AirdropKos" setMarkerSize [500,500];
"AirdropKos" setMarkerBrush "Cross";
diag_log "first round";
uiSleep (30);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 10 minutes. Check your map for the location</t>"] remoteexec ["life_fnc_broadcast",RANY];	
uiSleep (30);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 5 minutes. Check your map for the location</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (30);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 1 minutes. Check your map for the location</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep(30);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop is on it's way. Remember the marker on the map is KOS so be ready for a fight</t>"] remoteexec ["life_fnc_broadcast",RANY];
//Create stuffs
_vehMain = createVehicle [_mainVehicle, _spawnPos, [], 0, "FLY"];
_crew = [_spawnPos, east, ["O_G_Soldier_SL_F"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;
{_x moveInDriver _vehMain} forEach units _crew;
_crew addWaypoint [_dropZone, 0, 1];
[_crew, 1] setWaypointSpeed "NORMAL";
_vehMain flyInHeight 100;

_firstBox = createVehicle [_dummyBox ,_spawnPos, [], 0, "CAN_COLLIDE"];
_firstBox attachTo [_vehMain,[0,0,-3.5]];
_firstBox setDir 90;


//When the helo gets close to the marker start the box dropping
waitUntil {_dropZone distance _vehMain < 90};
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supplies have been dropped. You have 20 minutes before the box explodes</t>"] remoteexec ["life_fnc_broadcast",RANY];
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
uiSleep 20;
//check if the stupid pilot blew shit updateDrawIcon
_damage = getDammage _vehMain;
if (_damage > 0.01) then {deleteVehicle _vehMain;};
_crew addWaypoint [_endPos, 1, 2];
[_crew, 2] setWaypointSpeed "NORMAL";
_vehMain flyInHeight 500;

createMarker ["airbox_marker", _dropZone];
"airbox_marker" setMarkerType "Mil_Destroy";
"airbox_marker" setMarkerColor "ColorBlue";
"airbox_marker" setMarkerText "Airdrop Box";
while { (getPos _drop select 2) > 2 } do { "airbox_marker" setMarkerPos getPos _drop;sleep 1; };
detach _drop;
_drop setPos [getPos _drop select 0, getPos _drop select 1, (getPos _drop select 2)+0.5];
playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _drop];
uiSleep 6;
"M_NLAW_AT_F" createVehicle [getPos _drop select 0, getPos _drop select 1, 0];
_pos_drop = getPos _drop;
deleteVehicle _drop;
uiSleep 0.5;
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
_box addWeaponCargoGlobal _mag;
_box addWeaponCargoGlobal ["20Rnd_762x51_Mag", 50];

//Time until the box is destroyed
uiSleep (60*2);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 10 minutes</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (60*1);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 5 minutes</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (60*1);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 1 minute</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (30);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 30 secconds</t>"] remoteexec ["life_fnc_broadcast",RANY];

//Cleanup
uiSleep (30);
deleteVehicle _vehMain;
deleteVehicle _box; 
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop has been destroyed. Supply Drop mission has ended. Good work everyone</t>"] remoteexec ["life_fnc_broadcast",RANY];

[] execVM "\life_server\Functions\Larry\fn_airdrop.sqf";