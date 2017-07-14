#include "..\..\script_macros.hpp"
/*
    File: fn_houseMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Building interaction menu
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Title 37401
hint "interaction called";
diag_log "gas 1";
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8"];
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if (isNull _curTarget) exitWith {}; //Bad target
if !(_curTarget isEqualTo "Land_fs_feed_F") exitWith {hint "not a pump";}; //Not a pump

diag_log "gas 2";

if (!dialog) then {
    createDialog "pInteraction_Menu";
};

_Btn1 = CONTROL(37400,Btn1);
_Btn2 = CONTROL(37400,Btn2);
_Btn3 = CONTROL(37400,Btn3);
_Btn4 = CONTROL(37400,Btn4);
_Btn5 = CONTROL(37400,Btn5);
_Btn6 = CONTROL(37400,Btn6);
_Btn7 = CONTROL(37400,Btn7);
_Btn8 = CONTROL(37400,Btn8);
{_x ctrlShow false;} forEach [_Btn1,_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8];

life_pInact_curTarget = _curTarget;
if (playerSide isEqualTo civilian) then {
if (!(_curTarget in life_vehicles) || isNil {_curTarget getVariable "house_owner"}) then {
    _Btn1 ctrlSetText localize "STR_pInAct_BuyGas";
    _Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_buyGas;";
    _Btn1 ctrlShow true;

    if (!isNil {_curTarget getVariable "house_owner"}) then {
        _Btn1 ctrlEnable false;
    };
    } else {
        _Btn1 ctrlSetText localize "STR_pInAct_SellHouse";
        _Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_sellGas; closeDialog 0;";
        _Btn1 ctrlShow true;

        if (((_curTarget getVariable "house_owner") select 0) != (getPlayerUID player)) then {
            _Btn1 ctrlEnable false;
        };
    };
};
