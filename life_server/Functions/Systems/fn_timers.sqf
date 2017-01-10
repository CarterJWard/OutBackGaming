#include "\life_server\script_macros.hpp"
/*
    file: fn_timers.sqf
    Author: Fresqo
    Description: Sorts server side timers so no timer exploits
*/
params [
    ["_type",0,[0]],
    ["_arr",[],[[]]]
];

switch (_type) do {
    case 1: 
        {
            _arr param ["_shop",objNull,[objNull]];
            if (!isNull _shop) then 
            {
                _shop setVariable ["robbed",true,true];
                sleep (30 * 60);
                _shop setVariable ["robbed",false,true];
            };
        };
    case 2:
	{
	    _obj = [_arr,0,objNull,[objNull]] call BIS_fnc_param;
	    _array = GVAR_MNS ["looted",[]];
	    _array pushBack _obj;
	    SVAR_MNS ["looted",_array,true];
	    sleep (30 * 60);
            _array = GVAR_MNS ["looted",[]];
	    _array = _array - [_obj];
	    SVAR_MNS ["looted",_array,true];
	};
    case 3: 
        {
            _fire = [_arr,0,objNull,[objNull]] call BIS_FNC_PARAM;
            sleep 300;
            if (!isNull _fire) then {deleteVehicle _fire;};
        };
    default {};
};
