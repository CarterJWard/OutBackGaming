#include "..\..\..\script_macros.hpp"
/*
    File: fn_copMarshallLaw.sqf
    Author: !TS JORDAN
*/

if ((life_gigcoplevel25) < 5) then {
	hint "You are not a high enough level for that!";
};

if (GVAR_MNS ["mLaw", false]) then {
	[3,"<t color='#FA4F4F'><t align='center'><t size='1.75'>Marshall Law.</t></t></t><br/><br/><t size='1.2'>Marshall Law has now been revoked, all activity may resume to normal, enjoy your day!</t>"] remoteExec ["life_fnc_broadcast", RCLIENT];
	SVAR_MNS ["mlaw", false, true]; 
} else {
	[3,"<t color='#FA4F4F'><t align='center'><t size='1.75'>Marshall Law.</t></t></t><br/><br/><t size='1.2'>Marshall Law has just been called, All civilians seen around main cities by police force are alligable for a strip down search, any armed personal will be shot on sight. Marshall Law will run for 5 minutes to allow the police to sweep the area. Stay safe!</t>"] remoteExec ["life_fnc_broadcast", RCLIENT];
	SVAR_MNS ["mlaw", true, true]; 
};

closeDialog 0;

