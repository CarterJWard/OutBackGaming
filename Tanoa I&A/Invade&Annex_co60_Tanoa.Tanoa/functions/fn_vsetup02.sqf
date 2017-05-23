/*
@filename: fn_vSetup02.sqf
Author:

	???
	
Last modified:

	22/10/2014 ArmA 1.32 by Quiksilver
	
Description:

	Apply code to vehicle
	vSetup02 deals with code that is already applied where it should be.
_______________________________________________*/

//============================================= CONFIG

private ["_u","_t"];

_u = _this select 0;
_t = typeOf _u;

if (isNull _u) exitWith {};

//============================================= ARRAYS

_ghosthawk = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_tropic_F","B_CTRG_Heli_Transport_01_sand_F"]; 			// ghosthawk
_strider = ["I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F"];					// strider
_blackVehicles = ["B_Heli_Light_01_armed_F"];									// black skin
_wasp = ["B_Heli_Light_01_F","B_Heli_Light_01_armed_F"];						// MH-9
_orca = ["O_Heli_Light_02_unarmed_F"];											// Orca
_mobileArmory = ["B_Truck_01_transport_F"];											// Mobile Armory
_noAmmoCargo = ["B_APC_Tracked_01_CRV_F"];					// Bobcat CRV
_slingHeli = ["I_Heli_Transport_02_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];											// sling capable
_slingable = ["B_Heli_Light_01_F"];												// slingable
_notSlingable = ["B_Heli_Light_01_armed_F", "B_Heli_Attack_01_F"];				// not slingable
_dropHeli = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"]; 			// drop capable
_uav = ["B_UAV_02_CAS_F","B_UAV_02_F","B_UGV_01_F","B_UGV_01_rcws_F"];			// UAVs

//============================================= SORT
//===== Add to Zeus

{_x addCuratorEditableObjects [[_u],false];} count allCurators;

//===== Heli sling

//===== black camo

//===== strider nato skin


//===== aaf skin

//===== aaf skin

//===== remove ammo cargo



//===== Mobile VAS/Arsenal

if (_t in _mobileArmory) then {
	if (PARAMS_MobileArmory != 0) then {
		// setVariable ["mobile_armory",TRUE,TRUE];
	};
	if (PARAMS_MobileArmory > 1) then {
	//	[_u] execVM "scripts\VAserver.sqf";
	};
};

//===== Airdrop

if (_t in _dropHeli) then {
	_u setVariable ["airdrop_veh",TRUE,TRUE];
};

//===== Ghosthawk specific, animated doors, and turret locking system

if (_t in _ghosthawk) then {
	_u setVariable ["turretL_locked",FALSE,TRUE];
	_u setVariable ["turretR_locked",FALSE,TRUE];
};

//===== UAV respawn fixer

if (_t in _uav) then {
	{deleteVehicle _x;} count (crew _u);
	[_u] spawn {
		_u = _this select 0;
		sleep 2;
		createVehicleCrew _u;
	};
};
