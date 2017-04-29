#include "..\script_macros.hpp"
/*
    File: fn_survival.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    All survival? things merged into one thread.
*/
private ["_fnc_food","_fnc_water","_foodTime","_waterTime","_bp","_walkDis","_lastPos","_curPos"];
_fnc_food =  {
    if (life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
    else
    {
        life_hunger = life_hunger - 10;
        [] call life_fnc_hudUpdate;
        if (life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
        switch (life_hunger) do {
            case 30: {hint localize "STR_NOTF_EatMSG_1";};
            case 20: {hint localize "STR_NOTF_EatMSG_2";};
            case 10: {
                hint localize "STR_NOTF_EatMSG_3";
                if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
        };
    };
};

_fnc_water = {
    if (life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
    else
    {
        life_thirst = life_thirst - 10;
        [] call life_fnc_hudUpdate;
        if (life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
        switch (life_thirst) do  {
            case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
            case 20: {
                hint localize "STR_NOTF_DrinkMSG_2";
                if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
            case 10: {
                hint localize "STR_NOTF_DrinkMSG_3";
                if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
        };
    };
};

//Update statusbar if player count, bank or cash changes
[] spawn {
    while {true} do {
        _bank = BANK;
        _cash = CASH;
        _units = count playableUnits;
        sleep 1;
        waitUntil {_bank != BANK || _cash != CASH || _units != (count playableUnits)};
        [] call life_fnc_hudUpdate;
    };
};

//Add Player XP
[] spawn {
    while {true} do {
        sleep 60;
        _prof = switch (playerSide) do {
            case civilian: {"pCiv"};
            case west: {"pCop"};
            case independent: {"pMed"};
            default {};
        };
        [_prof,round(random(5))] call life_fnc_addExp;
        [] call life_fnc_hudUpdate;
    };
};

//Dynamic Paychecks
[] spawn
{
	private["_worked","_uid","_taxable","_tax","_htax","_taxAmount","_houses","_taxTime"];
	while {true} do
	{
		sleep 300;
		if !(alive player) then {_taxable = false;};
		_flag = PROF_SIDE(playerSide);
		_prof = switch (playerSide) do {
                    case civilian: {"pCiv"};
                    case west: {"pCop"};
                    case independent: {"pMed"};
                    default {};
                };
                _data = PROF_VALUE(_prof,_flag);
                private _level = _data select 0;
                private _pay = round (life_paycheck + (life_paycheck * (0.25 * _level)));
		if !(alive player) then {
			systemChat localize "STR_MIS_Missed";
		} else {
			ADD(BANK,_pay); 
			systemChat format[localize "STR_MIS_Paycheck",[_pay] call life_fnc_numberText];
		};
	};
};


//Sort Teargas
[] spawn {
While{true} do {
 "dynamicBlur" ppEffectEnable true; // enables ppeffect
 "dynamicBlur" ppEffectAdjust [0]; // enables normal vision
 "dynamicBlur" ppEffectCommit 15; // time it takes to normal
 resetCamShake; // resets the shake
 20 fadeSound 1; //fades the sound back to normal

 waituntil{
    ((nearestObject [getpos player, "G_40mm_SmokeGreen"]) distance player < 10)
    and
    (getpos (nearestObject [getpos player, "G_40mm_SmokeGreen"]) select 2 < 0.5)
    };

	if (!(headgear player in ["H_CrewHelmetHeli_B"])) then
	{
		"dynamicBlur" ppEffectEnable true; // enables ppeffect
		"dynamicBlur" ppEffectAdjust [20]; // intensity of blur
		"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
		enableCamShake true; // enables camera shake
		addCamShake [10, 45, 10]; // sets shakevalues
		player setFatigue 1; // sets the fatigue to 100%
		5 fadeSound 0.1; // fades the sound to 10% in 5 seconds
	};
	sleep 5;
 }; 
};

[] spawn {
While{true} do {
 "dynamicBlur" ppEffectEnable true; // enables ppeffect
 "dynamicBlur" ppEffectAdjust [0]; // enables normal vision
 "dynamicBlur" ppEffectCommit 15; // time it takes to normal
 resetCamShake; // resets the shake
 20 fadeSound 1; //fades the sound back to normal

 waituntil{
    ((nearestObject [getpos player, "SmokeShellGreen"]) distance player < 10)
    and
    (getpos (nearestObject [getpos player, "SmokeShellGreen"]) select 2 < 0.5)
    };

	if (!(headgear player in ["H_CrewHelmetHeli_B"])) then
	{		
		"dynamicBlur" ppEffectEnable true; // enables ppeffect
		"dynamicBlur" ppEffectAdjust [20]; // intensity of blur
		"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
		enableCamShake true; // enables camera shake
		addCamShake [10, 45, 10]; // sets shakevalues
		player setFatigue 1; // sets the fatigue to 100%
		5 fadeSound 0.1; // fades the sound to 10% in 5 seconds
	};
	sleep 5;
 }; 
};

[] spawn {
    while {true} do {
        if (playerSide isEqualTo civilian && !life_mission) then {
            waitUntil {typeOf (vehicle player) isEqualTo "C_Plane_Civil_01_F"};
            if (driver (vehicle player) isEqualTo player && life_inv_pesticide > 0) then 
            {
                private ["_startCD"];
                _startCD = player addAction["Start Crop Dusting Mission",life_fnc_cropDusting,[(vehicle player)]];	
	        waitUntil {(vehicle player isEqualTo player) || !alive player};
	    
                if (!isNil "_startCD") then {
                    player removeAction _startCD;
                };
            };
        };
        sleep 1;
    };
};

//Setup the time-based variables.
_foodTime = time;
_waterTime = time;
_walkDis = 0;
_bp = "";
_lastPos = visiblePosition player;
_lastPos = (_lastPos select 0) + (_lastPos select 1);
_lastState = vehicle player;

for "_i" from 0 to 1 step 0 do {
    /* Thirst / Hunger adjustment that is time based */
    if ((time - _waterTime) > 600) then {[] call _fnc_water; _waterTime = time;};
    if ((time - _foodTime) > 850) then {[] call _fnc_food; _foodTime = time;};

    /* Adjustment of carrying capacity based on backpack changes */
    if (backpack player isEqualTo "") then {
        life_maxWeight = LIFE_SETTINGS(getNumber,"total_maxWeight");
        _bp = backpack player;
    } else {
        if (!(backpack player isEqualTo "") && {!(backpack player isEqualTo _bp)}) then {
            _bp = backpack player;
            life_maxWeight = LIFE_SETTINGS(getNumber,"total_maxWeight") + round(FETCH_CONFIG2(getNumber,"CfgVehicles",_bp,"maximumload") / 4);
        };
    };

    /* Check if the player's state changed? */
    if (vehicle player != _lastState || {!alive player}) then {
        [] call life_fnc_updateViewDistance;
        _lastState = vehicle player;
    };

    /* Check if the weight has changed and the player is carrying to much */
    if (life_carryWeight > life_maxWeight && {!isForcedWalk player}) then {
        player forceWalk true;
        if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
        hint localize "STR_NOTF_MaxWeight";
    } else {
        if (isForcedWalk player) then {
            player forceWalk false;
        };
    };

    /* Travelling distance to decrease thirst/hunger which is captured every second so the distance is actually greater then 650 */
    if (!alive player) then {_walkDis = 0;} else {
        _curPos = visiblePosition player;
        _curPos = (_curPos select 0) + (_curPos select 1);
        if (!(_curPos isEqualTo _lastPos) && {(isNull objectParent player)}) then {
            _walkDis = _walkDis + 1;
            if (_walkDis isEqualTo 650) then {
                _walkDis = 0;
                life_thirst = life_thirst - 5;
                life_hunger = life_hunger - 5;
                [] call life_fnc_hudUpdate;
            };
        };
        _lastPos = visiblePosition player;
        _lastPos = (_lastPos select 0) + (_lastPos select 1);
    };
    uiSleep 1;
};
