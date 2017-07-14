#include "..\..\script_macros.hpp"
/*Author: Larry Lancelot
Sends notifications and adds to bank*/
params ["_buyer","_price"];
hint parseText format ["<t align='center'><t color='#e0c918'><t font='TahomaB'><t size='1.2'>Gas Station<br/></t></t></t><t size='1.2'>%1 has purchased $%2 worth of gas from one of your stations.",name _buyer, [_price] call life_fnc_numberText];
ADD(BANK,_price);
