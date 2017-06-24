#include "..\..\script_macros.hpp"
/*
    File: fn_buyClothes.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if ((lbCurSel 3101) isEqualTo -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};

_price = 0;
{
    if (!(_x isEqualTo -1)) then {
        _price = _price + _x;
    };
} forEach life_clothing_purchase;

if (_price > CASH) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
CASH = CASH - _price;

life_clothesPurchased = true;

if (uniform player isEqualTo "U_I_CombatUniform") then {    
    _action = [
    "What color do you want you uniform",
     "Uniform Options",
     "Blue",
     "Blue"
] call BIS_fnc_guiMessage;

if (_action) then {
    _type = "Swat Blue"
} else {
    _type = "Swat Black";
};};
[0,_type] call life_fnc_exClothes;
[] call life_fnc_playerSkins;
closeDialog 0;
[] call life_fnc_hudUpdate;