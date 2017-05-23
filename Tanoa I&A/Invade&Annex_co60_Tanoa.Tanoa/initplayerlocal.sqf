["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
waitUntil {time > 0};
enableEnvironment false;
0 setFog 0;


waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};

reserved_units = [];
reserved_uids =  [""];
_uid = getPlayerUId player;

if ((player in reserved_units)&& !(_uid in reserved_uids)) then {
   player groupChat "";
   sleep 7;
   failMission "end1";
 };
 
 
_respawnWest = getMarkerPos "respawn_west";
"ProtectionZone_Invisible_F" createVehicle _respawnWest;

_respawnPilot = getMarkerPos "respawn_pilot";
"ProtectionZone_Invisible_F" createVehicle _respawnPilot;

CHVD_allowNfoGrass = true; 
CHVD_maxView = 3500; 
CHVD_maxObj = 3500; 

enableSentences FALSE;															
enableSaving [FALSE,FALSE];
player enableFatigue FALSE;

//------------------------------------------------ Handle parameters

for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

//------------------- client executions

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;
_null = [] execVM "INS_revive\DOM_repair\init.sqf";
_null = [] execvm "scripts\vehicle\crew\crew.sqf"; 								// vehicle HUD							
_null = [] execVM "scripts\restrictions.sqf"; 									// gear restrictions and safezone
_null = [] execVM "scripts\pilotCheck.sqf"; 									// pilots only
_null = [] execVM "scripts\jump.sqf";											// jump action										
_null = [] execVM "scripts\QS_icons.sqf";											// blufor map tracker Quicksilver
//_null = [] execVM "scripts\voice_control\voiceControl.sqf";						// Voice Control
//call compileFinal preprocessFileLineNumbers "functions\taru.sqf";
//if (PARAMS_HeliRope != 0) then {call compile preprocessFileLineNumbers "scripts\vehicle\fastrope\zlt_fastrope.sqf";};

[] call QS_fnc_respawnPilot;


//-------------------- PVEHs

"addToScore" addPublicVariableEventHandler
{
	((_this select 1) select 0) addScore ((_this select 1) select 1);
};


