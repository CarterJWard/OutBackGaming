#include "..\..\script_macros.hpp"
/*
File: fn_airdrop
Author: Larry Lancelot (concept by RyanTT but that script is broken af)
TODO:   Find a better way of waiting for the box to drop
        Pilot to have more speed so he doesn't collide with the box and blow up, maybe remove collisions with helo or grab position then wait ??
        Chaser Helis
        Maybe change checks to waitUntil if players are not met
*/

//Setup our variables
diag_log "Started the airdrop";
private ["_spawnPos","_mainVehicle","_wp","_main","_drop","_arrived"];
uiSleep (60*45);
uiSleep random(1300);
//config
_spawnPos = [6304.292,9650.939,99.1];
_mainVehicle = "B_Heli_Transport_03_unarmed_F";
_dropPoints = [[5233.613,18424.145,2],[6651.447,12605.252,2],[12795.358,19671.498,2.115]];
_dummyBox = "Land_Cargo20_blue_F";
_main = "CargoNet_01_box_F";
_endPos = [1082.097,1910.592, 0];
_arrived = false;
_copsNeeded = 3;
_civsNeeded = 7;
//Declare Vars
_dropZone = _dropPoints call BIS_fnc_selectRandom;
_loop = false;
//Checks
if ({side _x isEqualTo west} count playableUnits < _copsNeeded) exitWith {[] execVM "\life_server\Functions\Larry\fn_airdrop.sqf";};
if ({side _x isEqualTo civilian} count playableUnits < _civsNeeded) exitWith {[] execVM "\life_server\Functions\Larry\fn_airdrop.sqf";};
//Alert the peeps
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 20 minutes. You will be notified of the location soon</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (60*1);
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
"AirdropKos" setMarkerBrush "DiagGrid";

uiSleep (60*5);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 10 minutes. Check your map for the location</t>"] remoteexec ["life_fnc_broadcast",RANY];	
uiSleep (60*5);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 5 minutes. Check your map for the location</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (60*4);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>A supply drop is inbound in 1 minutes. Check your map for the location</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep(30);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop is on it's way. Remember the marker on the map is KOS so be ready for a fight. The helicopter will hover over the drop site for a small section of time whilst the crew fill the container and realese the drop. Good luck everyone</t>"] remoteexec ["life_fnc_broadcast",RANY];

//Let's Begin
_vehMain = createVehicle [_mainVehicle, _spawnPos, [], 0, "FLY"];
_crew = [_spawnPos, east, ["O_G_Soldier_SL_F"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;
{_x moveInDriver _vehMain} forEach units _crew;
_crew addWaypoint [_dropZone, 0, 1];
[_crew, 1] setWaypointSpeed "NORMAL";
_vehMain flyInHeight 100;

_firstBox = createVehicle [_dummyBox ,_spawnPos, [], 0, "CAN_COLLIDE"];
_firstBox attachTo [_vehMain,[0,0,-3.5]];
_firstBox setDir 90;

//Tracking Marker
createMarker ["airbox_marker", _dropZone];
"airDrop_marker" setMarkerType "Mil_Destroy";
"airDrop_marker" setMarkerColor "ColorBlue";
"airDrop_marker" setMarkerText "Airdrop Box";
//When the helo gets close to the marker start the box dropping
uiSleep (60*4);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supplies have been dropped. You have 20 minutes before the box explodes</t>"] remoteexec ["life_fnc_broadcast",RANY];

deleteVehicle _firstBox;
_drop = createVehicle [_dummyBox , _spawnPos, [], 0, "CAN_COLLIDE"];
_para = createVehicle ["O_Parachute_02_F", [getPos _vehMain select 0, getPos _vehMain select 1, getPos _vehMain select 2], [], 0, ""];
_para setPosATL (_vehMain modelToWorld[0,0,100]);
_para attachTo [_vehMain,[0,0,-10]];
detach _para;
_drop attachTo [_para,[0,0,-2]];
_drop setDir 90;
//SMOKE, SOUNDS, FLARES!!
_smoke="SmokeShellGreen" createVehicle [getpos _drop select 0, getpos _drop select 1,0];
_smoke attachTo [_drop,[0,0,0]];
_light = "Chemlight_green" createVehicle getPos _drop;
_light attachTo [_drop,[0,0,0]];
_flare = "F_40mm_Green" createVehicle getPos _drop;
_flare attachTo [_drop,[0,0,0]];
playSound3D ["a3\sounds_f\weapons\Flare_Gun\flaregun_1_shoot.wss", _drop];
uiSleep 20;
//check if the stupid pilot blew shit up or goto new wp.
_damage = getDammage _vehMain;
if (_damage > 0.01) then {deleteVehicle _vehMain;};
_crew addWaypoint [_endPos, 1, 2];
[_crew, 2] setWaypointSpeed "NORMAL";
_vehMain flyInHeight 500;

detach _drop;
_drop setPos [getPos _drop select 0, getPos _drop select 1, (getPos _drop select 2)+0.5];
playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _drop];
uiSleep 6;
"M_NLAW_AT_F" createVehicle [getPos _drop select 0, getPos _drop select 1, 0]; //Boom
_pos_drop = getPos _drop;
deleteVehicle _drop;
uiSleep 0.5;
"airDrop_marker" setMarkerPos getPos _box;uiSleep 1;
_box = createVehicle [_main , _pos_drop, [], 0, "CAN_COLLIDE"];
_box allowDamage false;
_smoke="SmokeShellGreen" createVehicle [getpos _box select 0,getpos _box select 1,0];
_flare = "F_40mm_Green" createVehicle getPos _drop;
_light attachTo [_box,[0,0,0]];
_flare attachTo [_box,[0,0,0]];


//Weapon arrays
_num = random (2); //Number chosen so it can select the same type of mag and weapon
_special = [["muzzle_snds_93mmg", 1],["muzzle_snds_B", 2]];
_specialArr = [["arifle_MX_SW_F",5],["LMG_Mk200_F", 3],["srifle_EBR_F",5]];
_magArr = [["100Rnd_65x39_caseless_mag", 10],["200Rnd_65x39_cased_Box", 15],["20Rnd_762x51_Mag",20]];
_rifleArr1 = [["arifle_MX_F", 15],["arifle_Katiba_F", 15]];
_magArr1 = [["30Rnd_65x39_caseless_mag", 50],["30Rnd_65x39_caseless_green", 30]];

//Select from arrays
_specialItem = _special call BIS_fnc_selectRandom;
_specialRifle = _specialArr select _num;
_sMag = _magARR select _num;
_rifle = _rifleArr1 call BIS_fnc_selectRandom;
_mags = _magArr1 call BIS_fnc_selectRandom;

//Add cargo to box
_box addItemCargoGlobal _specialItem;
_box addItemCargoGlobal _specialRifle;
_box addItemCargoGlobal _sMag;
_box addItemCargoGlobal _rifle;
_box addItemCargoGlobal _mags;

//Time until the box is destroyed
uiSleep (60*2);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 20 minutes</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (60*15);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 5 minutes</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep (60*4);
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 1 minute</t>"] remoteexec ["life_fnc_broadcast",RANY];
uiSleep 30;
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop will self destruct in 30 secconds</t>"] remoteexec ["life_fnc_broadcast",RANY];

//Cleanup
uiSleep (30);
"M_NLAW_AT_F" createVehicle [getPos _box select 0, getPos _box select 1, 0]; //Because it looks nicer
deleteVehicle _vehMain;
deleteVehicle _box; 
deleteMarker "Airdrop";
deleteMarker "airDrop_marker";
deleteMarker "AirdropKos";
[3,"<t size='1.3'><t color='#FF0000'>Supply Drop</t></t><br/><br/><t size='1'>Supply Drop has been destroyed. Supply Drop mission has ended. Good work everyone</t>"] remoteexec ["life_fnc_broadcast",RANY];

uiSleep (60*120); //Time before it's run again aka cooldown
[] execVM "\life_server\Functions\Larry\fn_airdrop.sqf";

