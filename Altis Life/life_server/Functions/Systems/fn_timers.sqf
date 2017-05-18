#include "\life_server\script_macros.hpp"
/*
	File: fn_timers.sqf
	Description: Sets timers on shit server side to mek shit more fun
	Author: Fresqo
		Incoming:
			0- switch (mode)
			1- array
			
	INSTALLATION INSTRUCTIONS
        - put this file into life_server/Functions/Systems/
        - Adjust file: 	life_server/config.cpp 
		    ADD INTO class Systems {
			
			    class timers {};
*/

private["_mode","_return","_pic","_obj"];
_mode = [_this,0,0,[0]] call BIS_fnc_param;
_return = SEL(_this,1);

switch (_mode) do {	
	case 2:
		{
			_obj = [_return,0,ObjNull,[ObjNull]] call BIS_fnc_param;
			_arr = missionNamespace getVariable ["looted",[]];
			_arr pushBack _obj;
			missionNamespace setVariable ["looted",_arr,true];
			sleep (30 * 60);
			_arr = missionNamespace getVariable ["looted",[]];
			_arr = _arr - [_obj];
			missionNamespace setVariable ["looted",_arr,true];
		};
};
