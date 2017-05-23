/*
@file: QS_fnc_AOenemy.sqf
Author:

	Quiksilver (credits: Ahoyworld.co.uk. Rarek et al for AW_fnc_spawnUnits.)
	
Last modified:

		24/10/2014 ArmA 1.32 by Quiksilver
	
Description:

	AO enemies
__________________________________________________________________*/

//---------- CONFIG

#define INF_TYPE "OI_diverTeam"
//#define INF_URBANTYPE "OI_diverTeam_SDV"
//#define VEH_TYPE "O_MBT_02_cannon_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_APC_Tracked_02_cannon_F","I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_MBT_03_cannon_F"
//#define AIR_TYPE "O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","I_Heli_light_03_F","O_Heli_Light_02_F"
//#define STATIC_TYPE "O_HMG_01_F","O_HMG_01_high_F","O_Mortar_01_F"
//#define STATIC_TYPE_MG "O_HMG_01_F","O_HMG_01_high_F"

private ["_enemiesArray","_randomPos","_patrolGroup","_AOvehGroup","_AOveh","_AOmrapGroup","_AOmrap","_pos","_spawnPos","_overwatchGroup","_sideobj","_x","_staticGroup","_static","_aaGroup","_aa","_airGroup","_air","_sniperGroup","_staticDir"];
_pos = getMarkerPos (_this select 0);
_enemiesArray = [grpNull];
_x = 0;

////---------- INFANTRY OVERWATCH
	
	_overwatchGroup = createGroup east;
	_overwatchGroup = [(getMarkerPos currentA), EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "SpecOps" >> [INF_TYPE] call BIS_fnc_selectRandom)] call BIS_fnc_spawnGroup;
    null = [_overwatchGroup,(getMarkerPos currentA)] execVM "defendArea.sqf";	
	_wp = _overwatchGroup addWaypoint [getMarkerPos currentA, 3, 3];
	_enemiesArray = _enemiesArray + [_overwatchGroup];

	{
		_x addCuratorEditableObjects [units _overwatchGroup, false];
	} foreach adminCurators;
	
	
		_overwatchGroup1 = createGroup east;
	_overwatchGroup1 = [(getMarkerPos currentA), EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "SpecOps" >> [INF_TYPE] call BIS_fnc_selectRandom)] call BIS_fnc_spawnGroup;
    null = [_overwatchGroup1,(getMarkerPos currentA)] execVM "defendArea.sqf";	
	_wp = _overwatchGroup1 addWaypoint [getMarkerPos currentA, 3, 3];
	_enemiesArray = _enemiesArray + [_overwatchGroup1];

	{
		_x addCuratorEditableObjects [units _overwatchGroup1, false];
	} foreach adminCurators;
	


  	_overwatchGroup2 = createGroup east;
	_overwatchGroup2 = [(getMarkerPos currentA), EAST, (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "SpecOps" >> [INF_TYPE] call BIS_fnc_selectRandom)] call BIS_fnc_spawnGroup;
    null = [_overwatchGroup2,(getMarkerPos currentA)] execVM "defendArea.sqf";	
	_wp = _overwatchGroup2 addWaypoint [getMarkerPos currentA, 3, 3];
	_enemiesArray = _enemiesArray + [_overwatchGroup2];

	{
		_x addCuratorEditableObjects [units _overwatchGroup2, false];
	} foreach adminCurators;

	
_enemiesArray; 


