#include "..\..\script_macros.hpp"
/*
    File: fn_useItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Main function for item effects and functionality through the player menu.
*/
private "_item";
disableSerialization;
if ((lbCurSel 2005) isEqualTo -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = CONTROL_DATA(2005);

switch (true) do {
    case (_item in ["waterBottle","coffee","redgull"]): {
        if ([false,_item,1] call life_fnc_handleInv) then {
            life_thirst = 100;
            if (LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 0;};
            if (_item isEqualTo "redgull" && {LIFE_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1}) then {
                [] spawn {
                    life_redgull_effect = time;
                    titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
                    player enableFatigue false;
                    waitUntil {!alive player || ((time - life_redgull_effect) > (3 * 60))};
                    player enableFatigue true;
                };
            };
        };
    };

    case (_item isEqualTo "boltcutter"): {
        [cursorObject] spawn life_fnc_boltcutter;
        closeDialog 0;
    };

    case (_item isEqualTo "blastingcharge"): {
        player reveal fed_bank;
        (group player) reveal fed_bank;
        [cursorObject] spawn life_fnc_blastingCharge;
        closeDialog 0;
    };

    case (_item isEqualTo "defusekit"): {
        [cursorObject] spawn life_fnc_defuseKit;
        closeDialog 0;
    };

    case (_item isEqualTo "storagesmall"): {
        [false] call life_fnc_storageBox;
    };

    case (_item isEqualTo "storagebig"): {
        [true] call life_fnc_storageBox;
    };

    case (_item isEqualTo "spikeStrip"): {
        if (!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"; closeDialog 0};
        if ([false,_item,1] call life_fnc_handleInv) then {
            [] spawn life_fnc_spikeStrip;
            closeDialog 0;
        };
    };

    case (_item isEqualTo "fuelFull"): {
        if (vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
        [] spawn life_fnc_jerryRefuel;
        closeDialog 0;
    };

    case (_item isEqualTo "fuelEmpty"): {
        [] spawn life_fnc_jerryCanRefuel;
        closeDialog 0;
    };

    case (_item isEqualTo "lockpick"): {
        [] spawn life_fnc_lockpick;
        closeDialog 0;
    };

    case (_item isEqualTo "marijuana"): {
    if(([false,_item,1] call life_fnc_handleInv)) then
	{
        [] spawn life_fnc_weed;
		};
    };

    case (_item isEqualTo "cocaine_processed"): {
    if(([false,_item,1] call life_fnc_handleInv)) then
    {
        []spawn life_fnc_cocaine;
        };
    };

    case (_item isEqualTo "heroin_processed"): {
    if (([false,_item,1] call life_fnc_handleInv)) then
    {
        []spawn life_fnc_heroin;
        };
    };

    case (_item in ["banana","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle_soup","hen","rooster","sheep","goat","donuts","tbacon","pawpaw"]): {
        if (!(M_CONFIG(getNumber,"VirtualItems",_item,"edible") isEqualTo -1)) then {
            if ([false,_item,1] call life_fnc_handleInv) then {
                _val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
                _sum = life_hunger + _val;
                switch (true) do {
                    case (_val < 0 && _sum < 1): {life_hunger = 5;}; //This adds the ability to set the entry edible to a negative value and decrease the hunger without death
                    case (_sum > 100): {life_hunger = 100;};
                    default {life_hunger = _sum;};
                };
            };
        };
    };
    
    case (_item isEqualTo "firewood"): {
    if ((player distance (getMarkerPos "hunting_zone")) > 600) exitWith {hint "You need to be inside the hunting zone to make a camp fire!";};
        [] spawn life_fnc_campFire;
        closeDialog 0;
    };
    
    case (_item in ["rabbit_raw","salema_raw","ornate_raw","mackerel_raw","tuna_raw","mullet_raw","catshark_raw","turtle_raw","hen_raw","rooster_raw","sheep_raw","goat_raw"]): {
    if !(typeOf cursorObject isEqualTo "Land_Campfire_F") exitWith {hint "You can cook this with a camp fire!"};
        [cursorObject,_item] spawn life_fnc_cook;
        closeDialog 0;
    };

    default {
        hint localize "STR_ISTR_NotUsable";
    };
};

[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
