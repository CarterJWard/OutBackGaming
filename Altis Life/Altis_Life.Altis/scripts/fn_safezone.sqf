/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek & Latouth)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below. The numeric value after the variable name of the marker will define how big the radius is. (Measured in metres)
*/

#define SAFETY_ZONES  [["safezone_Kstation", 100], ["safezone_Kmarket", 60], ["safezone_kavSqaure", 70],["safezone_kGar", 40], ["safezone_rebel1", 150], ["safezone_athira", 80],["safezone_rebel2", 100],["rebsafezone", 60],["kav_hospo", 100],["pygros_station", 100],["pyrgros_hospo", 100]]

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{
		player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
              
             ["Safezone","There is to be no robbing/killing/shooting in safezones",nil,""] call life_fnc_showNotification;
            };
        }];
        player addEventHandler ["handleDamage", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            private _damage ;
            _damage = _this select 2;
            _damage = 0.001;
            
        }];
	};
	
	case independent:
	{
		player addEventHandler ["Fired", {
			if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
            };
        }];
	};
};