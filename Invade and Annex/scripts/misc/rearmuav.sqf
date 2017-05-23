private ["_veh"];
_veh = _this select 0;

if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};

if (!(_veh isKindOf "B_UAV_02_CAS_F")) exitWith { 
	_veh vehicleChat "This pad is for UAV service only, soldier!"; 
};

_veh vehicleChat "Servicing UAV, will be done in a minute";

_veh setFuel 0;

//---------- RE-ARMING

sleep 10;

_veh vehicleChat "loading Ammo";

//---------- REPAIRING

sleep 10;

_veh vehicleChat "Repairing ... almost there";

//---------- REFUELING

sleep 10;

_veh vehicleChat "replacing batteries";

//---------- FINISHED

sleep 10;

_veh setDamage 0;
_veh vehicleChat "Repaired.";

_veh setVehicleAmmo 1;
_veh vehicleChat "Re-armed.";

_veh setFuel 1;
_veh vehicleChat "New battary.";

sleep 2;

_veh vehicleChat "All done";