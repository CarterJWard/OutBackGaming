#include "..\..\script_macros.hpp"
/*
    File: fn_p_openMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens the players virtual inventory menu
*/
if (!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch (playerSide) do {
    case west: {
		private _rank = FETCH_CONST(life_coplevel);
        ctrlShow[2011,false];
		ctrlShow[980021,false];
		ctrlShow[2101,false];
		ctrlShow[2102,false];
		ctrlShow[123456,false];
		if(_rank < 2) then {
			ctrlShow[654321,false];
			ctrlShow[54321,false];
		};
    };

    case civilian: {
        ctrlShow[2012,false];
		ctrlShow[654321,false];
		ctrlShow[54321,false];
    };

    case independent: {
        ctrlShow[2012,false];
        ctrlShow[2011,false];
		ctrlShow[980021,false];
		ctrlShow[123456,false];
		ctrlShow[654321,false];
		ctrlShow[54321,false];
		ctrlShow[2101,false];
		ctrlShow[2102,false];
    };
};

if (FETCH_CONST(life_adminlevel) < 1) then {
    ctrlShow[2020,false];
    ctrlShow[20210,false];
};

[] call life_fnc_p_updateMenu;
