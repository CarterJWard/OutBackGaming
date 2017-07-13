/*
@filename: onPlayerRespawn.sqf
Author:
	
	Quiksilver

Last modified:

	29/10/2014 ArmA 1.32 by Quiksilver
	
Description:

	Client scripts that should execute after respawn.
______________________________________________________*/

private ["_iampilot"];

//=========================== Fatigue setting

if (PARAMS_Fatigue == 0) then {player enableFatigue FALSE;};

//=========================== PILOTS ONLY

_pilots = ["OPTRE_UNSC_Marine_Pilot"];
_iampilot = ({typeOf player == _x} count _pilots) > 0;
if (_iampilot) then {
	//===== FAST ROPE
	if (PARAMS_HeliRope != 0) then {
		player addAction ["<t color='#ff1111'>Toss Ropes</t>",zlt_fnc_createropes, [], -1, false, false, '','[] call zlt_fnc_ropes_cond'];
		player addAction ["<t color='#192BC6'>Cut Ropes</t>",zlt_fnc_removeropes, [], 98, false, false, '','not zlt_mutexAction and count ((vehicle player) getvariable ["zlt_ropes", []]) != 0'];
	};
//this addAction["<t color='#19C647'>Load new UAV software</t>", "VAS\open.sqf"];
	//===== HELI SUPPLY DROP
	if (PARAMS_HeliDrop != 0) then {
		player addAction ["<t color='#19C647'>Drop supply crate</t>",QS_fnc_airDrop,[],0,false,true,'','[] call QS_fnc_conditionAirDrop'];
	};
	//===== UH-80 TURRETS
	if (PARAMS_UH80TurretControl != 0) then {
		inturretloop = false;
		UH80TurretAction = player addAction ["Turret Control",QS_fnc_uh80TurretControl,[],-95,false,false,'','[] call QS_fnc_conditionUH80TurretControl'];
	};
};

//============================= UAV

_uavop = ["OPTRE_UNSC_Army_Soldier_UAV_Op_TRO","OPTRE_UNSC_Army_Soldier_SquadLead_TRO"];
_iamuavop = ({typeOf player == _x} count _uavop) > 0;

if (_iamuavop) then {
	player addAction ["<t color='#19C647'>Load new UAV software</t>",QS_fnc_actionUAVSoftware,[],20,true,true,'','[] call QS_fnc_conditionUAVSoftware'];
};

//============================= non-pilots units fastrope

if (PARAMS_HeliRope != 0) then {
	player addAction ["<t color='#E61639'>Fast Rope (Press Space)</t>", zlt_fnc_fastrope, [], 99, false, false, '','not zlt_mutexAction and count ((vehicle player) getvariable ["zlt_ropes", []]) != 0 and player != driver vehicle player'];
};

//============================= Mobile arsenal/Mobile Vas
//
if (PARAMS_MobileArmory != 0) then {
	if (PARAMS_MobileArmory == 1) then {
		player addAction ["<t color='#E61639'>Mobile Armory</t>","scripts\VAS\open.sqf",[],10,FALSE,FALSE,'','[] call QS_fnc_conditionMobileArmory'];
	};
	if (PARAMS_MobileArmory == 2) then {
		/* ARSENAL */
	};
	if (PARAMS_MobileArmory == 3) then {
		player addAction ["<t color='#19C647'>Mobile Armory</t>","scripts\VAS\open.sqf",[],10,FALSE,FALSE,'','[] call QS_fnc_conditionMobileArmory'];
	};
};

//====================== Seating and Clear vehicle inventory stuff

saving_inventory = FALSE;
inventory_cleared = FALSE;
player setVariable ["seated",FALSE];
player addAction ["Clear vehicle inventory",QS_fnc_actionClearInventory,[],-97,FALSE,FALSE,'','[] call QS_fnc_conditionClearInventory'];

//======================= Add players to Zeus

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;
