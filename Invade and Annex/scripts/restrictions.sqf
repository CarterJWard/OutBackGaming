/*
Author: Quiksilver
Last modified: 23/10/2014 ArmA 1.32 by Quiksilver
Description:

	Restricts certain weapon systems to different roles
_________________________________________________*/

private ["_opticsAllowed","_specialisedOptics","_optics","_basePos","_firstRun","_insideSafezone","_outsideSafezone"];

#define AT_MSG "Only AT Soldiers may use this weapon system. Launcher removed."
#define SNIPER_MSG "Only Snipers may use this weapon system. Sniper rifle removed."
#define AUTOTUR_MSG "You are not allowed to use this weapon system, Backpack removed."
#define UAV_MSG "Only UAV operator may use this Item, UAV terminal removed."
#define OPTICS_MSG "Thermal optics such as TWS and Nightstalker are restricted to Squad Leaders. Optic removed."
#define MG_MSG "Only Autoriflemen may use this weapon system. LMG removed."
#define SOPT_MSG "SOS and LRPS are designated for Snipers and Spotters only. Optic removed."
#define MRK_MSG "Only Marksman and Spotters may use this weapon system. Rifle removed."

//===== UAV TERMINAL
_uavOperator = ["OPTRE_UNSC_Army_Soldier_UAV_Op_TRO","OPTRE_UNSC_Army_Soldier_SquadLead_TRO"];
_uavRestricted = ["B_UavTerminal","O_UavTerminal","I_UavTerminal"];
//===== AT / MISSILE LAUNCHERS (excl RPG)
_missileSoldiers = ["OPTRE_UNSC_ODST_Soldier_Scout_AT","OPTRE_UNSC_Army_Soldier_Rifleman_AT_TRO","OPTRE_UNSC_Army_Soldier_SquadLead_TRO"];
_missileSpecialised = [];
//===== SNIPER RIFLES
_snipers = ["OPTRE_UNSC_Army_Soldier_Sniper_TRO","OPTRE_UNSC_Army_Soldier_SquadLead_TRO","OPTRE_UNSC_ODST_Soldier_Scout_Sniper"];
_sniperSpecialised = [];
//===== THERMAL OPTICS
_opticsAllowed = ["OPTRE_UNSC_Army_Soldier_Sniper_TRO","OPTRE_UNSC_ODST_Soldier_Scout_Sniper"];
_specialisedOptics = [];
//===== BACKPACKS
_backpackRestricted = [];
//===== LMG
_autoRiflemen = ["OPTRE_UNSC_Army_Soldier_Autorifleman_TRO","OPTRE_UNSC_Army_Soldier_SquadLead_TRO"];
_autoSpecialised = [];
//===== SNIPER OPTICS
_sniperTeam = ["OPTRE_UNSC_Army_Soldier_Sniper_TRO","OPTRE_UNSC_Army_Soldier_ForwardObserver_TRO"];
_sniperOpt = [];
//===== MARKSMAN
_marksman = ["OPTRE_UNSC_Army_Soldier_Marksman_TRO","OPTRE_UNSC_Army_Soldier_ForwardObserver_TRO","OPTRE_UNSC_ODST_Soldier_Marksman"];
_marksmanGun = [];
//==========claws
_backpackRestricteds = ["Respawn_TentDome_F", "B_Respawn_TentDome_F", "Respawn_TentA_F", "B_Respawn_TentA_F", "Respawn_Sleeping_bag_F", "Respawn_Sleeping_bag_blue_F", "B_Respawn_Sleeping_bag_blue_F", "Respawn_Sleeping_bag_brown_F", "B_Respawn_Sleeping_bag_brown_F", "B_Respawn_Sleeping_bag_F"];


_basePos = getMarkerPos "respawn_west";

_szmkr = getMarkerPos "safezone_marker";
#define SZ_RADIUS 300

_EHFIRED = {
	deleteVehicle (_this select 6);
	hintC "You are discharging your weapon at base without approval.  Cease your actions Immediately!";
    hintC_EH = findDisplay 57 displayAddEventHandler ["unload", {
        0 = _this spawn {
            _this select 0 displayRemoveEventHandler ["unload", hintC_EH];
            hintSilent "";
        };
    }];
};

_firstRun = TRUE;
if (_firstRun) then {
	_firstRun = FALSE;
	if ((player distance _szmkr) <= SZ_RADIUS) then {
		_insideSafezone = TRUE;
		_outsideSafezone = FALSE;
		EHFIRED = player addEventHandler ["Fired",_EHFIRED];
	} else {
		_outsideSafezone = TRUE;
		_insideSafezone = FALSE;
	};
};

restrict_Thermal = false;
restrict_LMG = false;
restrict_sOptics = false;
restrict_Marksman = false;
if (PARAMS_rThermal != 0) then {restrict_Thermal = true;};
if (PARAMS_rLMG != 0) then {restrict_LMG = true;};
if (PARAMS_rSOptics != 0) then {restrict_sOptics = true;};
if (PARAMS_rMarksman != 0) then {restrict_Marksman = true;};

while {true} do {

	//------------------------------------- Launchers

	if (({player hasWeapon _x} count _missileSpecialised) > 0) then {
		if (({player isKindOf _x} count _missileSoldiers) < 1) then {
			player removeWeapon (secondaryWeapon player);
			titleText [AT_MSG,"PLAIN",3];
		};
	};
	
	sleep 1;
	//------------------------------------- Sniper Rifles

	if (({player hasWeapon _x} count _sniperSpecialised) > 0) then {
		if (({player isKindOf _x} count _snipers) < 1) then {
			player removeWeapon (primaryWeapon player);
			titleText [SNIPER_MSG,"PLAIN",3];
		};
	};

	sleep 1;
	//------------------------------------- UAV

    _assignedItems = assignedItems player;

	if (({"B_UavTerminal" == _x} count _assignedItems) > 0) then {
		if (({player isKindOf _x} count _uavOperator) < 1) then {
			player unassignItem "B_UavTerminal";
			player removeItem "B_UavTerminal";
			titleText [UAV_MSG,"PLAIN",3];
		};
	};
	
	sleep 1;
	//------------------------------------- Thermal optics

	if (restrict_Thermal) then {
			_optics = primaryWeaponItems player;	
			if (({_x in _optics} count _specialisedOptics) > 0) then {
				if (({player isKindOf _x} count _opticsAllowed) < 1) then {
					{player removePrimaryWeaponItem  _x;} count _specialisedOptics;
					titleText [OPTICS_MSG,"PLAIN",3];
				};
			};
			sleep 1;
	};
	
	//------------------------------------- sniper optics

	if (restrict_sOptics) then {
		_optics = primaryWeaponItems player;	
		if (({_x in _optics} count _sniperOpt) > 0) then {
			if (({player isKindOf _x} count _sniperTeam) < 1) then {
				{player removePrimaryWeaponItem  _x;} count _sniperOpt;
				titleText [SOPT_MSG,"PLAIN",3];
			};
		};
		sleep 1;
	};

	//------------------------------------- LMG
		
	if (restrict_LMG) then {
		if (({player hasWeapon _x} count _autoSpecialised) > 0) then {
			if (({player isKindOf _x} count _autoRiflemen) < 1) then {
				player removeWeapon (primaryWeapon player);
				titleText [MG_MSG,"PLAIN",3];
			};
		};
		sleep 1;
	};
	
	//------------------------------------- Marksman
		
	if (restrict_Marksman) then {
		if (({player hasWeapon _x} count _marksmanGun) > 0) then {
			if (({player isKindOf _x} count _marksman) < 1) then {
				player removeWeapon (primaryWeapon player);
				titleText [MRK_MSG,"PLAIN",3];
			};
		};
		sleep 1;
	};
	
	if ((backpack player) in _backpackRestricteds) then {
		removeBackpack player;
		titleText [AUTOTUR_MSG, "PLAIN", 3];
		sleep 1;
	};
	//------------------------------------- Opfor turret backpacks

	if ((backpack player) in _backpackRestricted) then {
		removeBackpack player;
		titleText [AUTOTUR_MSG, "PLAIN", 3];
	};
	
	//===================================== SAFE ZONE MANAGER
	
	_szmkr = getMarkerPos "safezone_marker";
	if (_insideSafezone) then {
		if ((player distance _szmkr) > SZ_RADIUS) then {
			_insideSafezone = FALSE;
			_outsideSafezone = TRUE;
			player removeEventHandler ["Fired",EHFIRED];
		};
	};
	sleep 2;
	if (_outsideSafezone) then {
		if ((player distance _szmkr) < SZ_RADIUS) then { 
			_outsideSafezone = FALSE;
			_insideSafezone = TRUE;
			EHFIRED = player addEventHandler ["Fired",_EHFIRED];
		};
	};
	
	//----- Sleep 
	
	_basePos = getMarkerPos "respawn_west";
	if ((player distance _basePos) <= 500) then {
		sleep 1;
	} else {
		sleep 10;
	};
};
