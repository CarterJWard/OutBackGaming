#include "..\..\script_macros.hpp"
/*
    File: fn_clearVehicleAmmo.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Clears the vehicle of ammo types that we don't want.

    Syntax: _vehicle removeMagazinesTurret [magazineName, turretPath]
    Documentation: https://community.bistudio.com/wiki/removeMagazinesTurret
*/
private ["_vehicle","_veh"];
_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _vehicle) exitWith {};
_veh = typeOf _vehicle;

if (_veh isEqualTo "O_Heli_Attack_02_black_F") then {
    _vehicle removeMagazinesTurret ["250Rnd_30mm_APDS_shells",[0]];
    _vehicle removeMagazinesTurret ["8Rnd_LG_scalpel",[0]];
    _vehicle removeMagazinesTurret ["38Rnd_80mm_rockets",[0]];
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
