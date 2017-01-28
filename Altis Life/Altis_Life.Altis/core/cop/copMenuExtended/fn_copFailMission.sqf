#include "..\..\..\script_macros.hpp"
/* 
	File: fn_copFailMission.sqf
	Author: !TS JORDAN
*/
params [
    ["_name","",[""]]
];
hint format ["You have just been blacklisted from the police force by %1, you have 10 seconds until the server will kick you!", _name]; 

sleep 10;

failMission "CopKick";