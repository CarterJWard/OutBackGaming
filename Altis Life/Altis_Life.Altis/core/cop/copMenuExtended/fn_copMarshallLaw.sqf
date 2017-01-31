#include "..\..\..\script_macros.hpp"
/*
    File: fn_copMarshallLaw.sqf
    Author: !TS JORDAN
*/
private["_city"];

if ((life_coplevel) < 5) then {
	hint "You are not a high enough level for that!";
};

if (GVAR_MNS ["mLaw", false]) then {
	{
		hint parseText format["<t color='#FA4F4F'><t align='center'><t size='1.75'>Marshall Law.</t></t></t><br/><br/><t size='1.2'>Marshall Law has now been revoked from Kavala, all activity may resume to normal, enjoy your day!</t>", _city];
		//playSound3D ""
	}forEach playableUnits;
	SVAR_MNS ["mlaw", false, true]; 
} else {
	{
		hint parseText format["<t color='#FA4F4F'><t align='center'><t size='1.75'>Marshall Law.</t></t></t><br/><br/><t size='1.2'>Marshall Law has just been called to the city of Kavala, All civilians seen around the city by police force are alligable for a strip down search, any armed personal will be shot on sight. Marshall Law will run for 5 minutes to allow the police to sweep the area. Stay safe!</t>", _city];
		//playSound3D ""
	}forEach playableUnits;
	SVAR_MNS ["mlaw", true, true]; 
};

closeDialog 0;

