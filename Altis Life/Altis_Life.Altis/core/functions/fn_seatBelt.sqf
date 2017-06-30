/*
//--By Repentz for altisLifeRPG
fn_seatBelt.sqf
*/

#include "..\..\script_macros.hpp"
playSound "seatbelt";
if(!life_seatbelt) then {
	life_seatbelt = true;
} else {
	life_seatbelt = false;
};

[] call life_fnc_custHudUpdate; //--Enable this if you are putting a hud option to display when your seatbelt is on.