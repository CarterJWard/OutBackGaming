/*
	File: randomize.sqf
	Author: pettka

	Description:
	Removes all proxies from the car, randomizes use of rear doors (according to _rnd2) and randomizes one of the skins (according to _rnd1)

	Parameter(s):
	None

	Returns:
	Nothing
*/

if (local _this) then {
	if !(_this getVariable ["BIS_enableRandomization",true]) exitWith {};

	_rnd1 = floor random 9;
	_rnd2 = floor random 3;
    
	if (((_this getVariable "color")>=0)&&((_this getVariable "color")<=8))
	then
	{
		_rnd1 = _this getVariable "color";
	};

	_this setObjectTextureGlobal [0, 
    ["ivory_r8spyder\data\audi_r8_livery01_hr.paa",
	"ivory_r8spyder\data\audi_r8_livery02_hr.paa",
	"ivory_r8spyder\data\audi_r8_livery03_hr.paa",
	"ivory_r8spyder\data\audi_r8_livery04_hr.paa",
    "#(argb,8,8,3)color(0,0.501961,1,1.0,CO)",
    "#(argb,8,8,3)color(1,1,1,1.0,CO)",
    "#(argb,8,8,3)color(0,0,0,1.0,CO)",
    "#(argb,8,8,3)color(1,0.501961,1,1.0,CO)",
    "#(argb,8,8,3)color(0,0.25098,0,1.0,CO)"] select _rnd1];

	_this setObjectTextureGlobal [1, ["#(argb,8,8,3)color(1,1,1,1.0,CO)",
	"#(argb,8,8,3)color(0,0,0,1.0,CO)",
	"#(argb,8,8,3)color(0.501961,0.501961,0.501961,1.0,CO)"] select _rnd2];
    
    
};