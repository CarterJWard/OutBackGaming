#include "..\..\script_macros.hpp"
/*
    File: fn_MarshalLaw.sqf
    Author: SoulGenetic
    Description: sends message server wide regarding marshal law
*/

if (FETCH_CONST(life_coplevel) < 6) then
    {
        titleText ["must be liuetenant or above to call Marshal Law","PLAIN", 1];
    } else {
        [1,hint parseText format["<t color='#3339ff'><t size='1.25'>Marshal Law<br/><br/>
        <t color='#FFFFFF'><t size='1'>The Military has declared Marshal Law on the Island of Tanoa. All Civilians are urged to stay inside as they are KOS with a firearm. All civilians are advised to leave the Island and flee to less populated islands to wait out the conflict. <br/>"]] remoteExec ["life_fnc_broadcast",-2];
    };
