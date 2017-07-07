#include "..\..\script_macros.hpp"
/*
    File: fn_handleDamage.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Handle the tazer first (Top-Priority).
if (!isNull _source) then {
    if (_source != _unit) then {
        if (_unit getVariable["Revive",false]) exitWith {};
        _curWep = currentWeapon _source;
        if (_projectile in ["B_9x21_Ball","B_556x45_dual"] && _curWep in ["hgun_P07_snds_F","arifle_SDAR_F"]) then {
            if (side _source isEqualTo west && playerSide isEqualTo civilian) then {
                private["_distance"];
                _distance = if (_projectile == "B_556x45_dual") then {100} else {35};
                _damage = false;
                if (_unit distance _source < _distance) then {
                    if (!life_istazed && !life_isknocked && !(_unit getVariable ["restrained",false])) then {
                        if (vehicle player != player) then {
                            if (typeOf (vehicle player) == "B_Quadbike_01_F") then {
                                player action ["Eject",vehicle player];
                                [_unit,_source] spawn life_fnc_tazed;
                            };
                        } else {
                            [_unit,_source] spawn life_fnc_tazed;
                        };
                    };
                };
            };

            //Temp fix for super tasers on cops.
            if (side _source isEqualTo west && (playerSide isEqualTo west || playerSide isEqualTo independent)) then {
                _damage = false;
            };
        };
        //Rubberbullets
		if (currentMagazine _source in ["30Rnd_65x39_caseless_mag_Tracer"] && _projectile in ["B_65x39_Caseless"]) then { //attention I changed it to mag and projectile!!
            if (side _source isEqualTo west && playerSide isEqualTo civilian) then {
                _damage = 0;
                if (alive player && !life_istazed && !life_isknocked && !(_unit getVariable ["restrained",false])) then {
                    private ["_distance"];
                    _distance = 300;
                    if (_unit distance _source < _distance) then {
                        if !(isNull objectParent player) then {
                            if (typeOf (vehicle player) == "B_Quadbike_01_F") then {
                                player action ["Eject",vehicle player];
                                [_unit,_source] spawn life_fnc_rubberHit; //change this too
                            };
                        } else {
                            [_unit,_source] spawn life_fnc_rubberHit; // here too
                        };
                    };
                };
            };
            //Temp fix for super tasers on cops.
            if (side _source isEqualTo west && (playerSide isEqualTo west || playerSide isEqualTo independent)) then {
                _damage = false;
            };
        };
    };
};
//ANTI- VDM script
    if(vehicle _source isKindOf "LandVehicle") then {
	 if(_source != _unit AND {alive _unit} AND {isPlayer _source}) then {
	 _damage = 0.001;
	};
};

if ((vehicle _unit) isKindOf "Car" && (isNull _source || _source isEqualTo _unit)) then
{
	_damage = if (life_seatbelt) then { _damage / 2 } else { _damage};
};
[] spawn life_fnc_hudUpdate;
_damage;
