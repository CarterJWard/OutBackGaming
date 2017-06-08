#include "..\..\script_macros.hpp"
/*
    File: fn_repairTruck.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName","_test","_sideRepairArray"];
_veh = cursorObject;
life_interrupted = false;
if (isNull _veh) exitWith {};
if ((_veh isKindOf "Car") || (_veh isKindOf "Ship") || (_veh isKindOf "Air")) then {
    if (life_inv_toolkit > 0) then {
        life_action_inUse = true;
        _displayName = FETCH_CONFIG2(getText,"CfgVehicles",(typeOf _veh),"displayName");
        _upp = format[localize "STR_NOTF_Repairing",_displayName];

        //Setup our progress bar.
        disableSerialization;
        5 cutRsc ["life_progress","PLAIN"];
        _ui = uiNamespace getVariable "life_progress";
        _progress = _ui displayCtrl 38201;
        _pgText = _ui displayCtrl 38202;
        _pgText ctrlSetText format["%2 (1%1)...","%",_upp];
        _progress progressSetPosition 0.01;
        _cP = 0.01;

        for "_i" from 0 to 1 step 0 do {
            if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
                [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["life_fnc_animSync",RCLIENT];
                player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
                player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
            };

            sleep 0.27;
            _cP = _cP + 0.01;
            _progress progressSetPosition _cP;
            _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
            if (_cP >= 1) exitWith {};
            if (!alive player) exitWith {};
            if (player != vehicle player) exitWith {};
            if (life_interrupted) exitWith {};
        };

        life_action_inUse = false;
        5 cutText ["","PLAIN"];
        player playActionNow "stop";
        if (life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
        if (player != vehicle player) exitWith {titleText[localize "STR_NOTF_ActionInVehicle","PLAIN"];};

        _sideRepairArray = LIFE_SETTINGS(getArray,"vehicle_infiniteRepair");

        //Check if playerSide has infinite repair enabled
        if (playerSide isEqualTo civilian && (_sideRepairArray select 0) isEqualTo 0) then {
            [false,"toolkit",1] call life_fnc_handleInv;
        };
        if (playerSide isEqualTo west && (_sideRepairArray select 1) isEqualTo 0) then {
            [false,"toolkit",1] call life_fnc_handleInv;
        };
        if (playerSide isEqualTo independent && (_sideRepairArray select 2) isEqualTo 0) then {
            [false,"toolkit",1] call life_fnc_handleInv;
        };
        if (playerSide isEqualTo east && (_sideRepairArray select 3) isEqualTo 0) then {
            [false,"toolkit",1] call life_fnc_handleInv;
        };


    private ["_onLadder", "_random", "_check"];
	_car = _veh;
	
	//Check for errors
	_onLadder =	(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
	if (!(vehicle player == player)) exitWith {};
	if (_onLadder) exitWith {};
	
	//Did my wife bought a mac?
	if (_car isKindOf "Truck_F") then {
	
		//YES!!!
		//Check if truck is in good condition
		if ((_car getHitPointDamage "HitLFWheel") == 0 &&
			(_car getHitPointDamage "HitLF2Wheel") == 0 &&
			(_car getHitPointDamage "HitLMWheel") == 0 &&
			(_car getHitPointDamage "HitLBWheel") == 0 &&
			(_car getHitPointDamage "HitRFWheel") == 0 &&
			(_car getHitPointDamage "HitRF2Wheel") == 0 &&
			(_car getHitPointDamage "HitRMWheel") == 0 &&
			(_car getHitPointDamage "HitRBWheel") == 0)
		
        _HitPointT = [
			"HitLFWheel",
			"HitLF2Wheel",
			"HitLMWheel",
			"HitLBWheel",
			"HitRFWheel",
			"HitRF2Wheel",
			"HitRMWheel",
			"HitRBWheel"
		];
		
		//Not that wheel, the other one
		dss_fnc_repair_wheel_check_truck = {
			_random = _HitPointT call BIS_fnc_SelectRandom;
			_check = _car getHitPointDamage _random;
			if (_check == 0) then
			{
				call dss_fnc_repair_wheel_check_truck;
			} else {
				_car sethitPointDamage [_random, 0];
			};
		};
		
		//Lets see how it works
		_random = _HitPointT call BIS_fnc_SelectRandom;
		_check = _car getHitPointDamage _random;
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 6;
		if (_check == 0) then
		{
			call dss_fnc_repair_wheel_check_truck;
		} else {
			_car setHitPointDamage [_random, 0];
		};
		titleCut ["You have succesfully repaired a tyre!", "PLAIN DOWN"];
	}
	//Ok, if we didn't buy a mac, then show me a jeep
	Else
	{
		//Check if car is in good condition
		if ((_car getHitPointDamage "HitLFWheel") == 0 &&
			(_car getHitPointDamage "HitLF2Wheel") == 0 &&
			(_car getHitPointDamage "HitRFWheel") == 0 &&
			(_car getHitPointDamage "HitRF2Wheel") == 0)
		
		_HitPointC = [
			"HitLFWheel",
			"HitLF2Wheel",
			"HitRFWheel",
			"HitRF2Wheel"
		];
		
		//Great, wrong wheel again..		
		dss_fnc_repair_wheel_check_car = {
			_random = _HitPointC call BIS_fnc_SelectRandom;
			_check = _car getHitPointDamage _random;
			if (_check == 0) then
			{
				call dss_fnc_repair_wheel_check_car;
			} else {
				_car sethitPointDamage [_random, 0];
			};
		};
		
		//Lets see how it handles in the city
		_random = _HitPointC call BIS_fnc_SelectRandom;
		_check = _car getHitPointDamage _random;
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 6;
		if (_check == 0) then
		{
			call dss_fnc_repair_wheel_check_car;
		} else {
			_car setHitPointDamage [_random, 0];
		};
	};
};
        titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
};

