private ["_veh"];
_veh = _this select 0;

if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};

if (!(_veh isKindOf "helicopter")) exitWith { 
	_veh vehicleChat "This pad is for aircraft service only, soldier!"; 
};

_veh vehicleChat "Servicing aircraft, please wait ...";

_veh setFuel 0;

//---------- RE-ARMING

sleep 10;

_veh vehicleChat "Re-arming ... all will be done in 1 minute";

//---------- REPAIRING

sleep 10;

_veh vehicleChat "Repairing ... almost there!";

//---------- REFUELING

sleep 10;

_veh vehicleChat "Refueling ... just a bit of hydrogen in the gas tank";

//---------- FINISHED

sleep 10;

_veh setDamage 0;
_veh vehicleChat "Fully Fixed, mate!  (100%).";

_veh setVehicleAmmo 1;
_veh vehicleChat "Loaded.";

_veh setFuel 1;
_veh vehicleChat "and the tank is full of hydrogen";

sleep 2;

_veh vehicleChat "Don't die!.";