#include "..\..\script_macros.hpp"
/*
Author: Larry Lancelot
*/
diag_log "Admin actions called";
private ["_suit","_action"];
if (FETCH_CONST(life_gigadmin863) < 1) exitWith {closeDialog 0};
switch (life_gigadmin863) do {
    case 1: {_suit = "U_B_Soldier_VR"};
    case 2: {_suit = "U_O_Soldier_VR"};
    case 3: {_suit = "U_I_Soldier_VR"};
    case 4: {_suit = "U_C_Soldier_VR"};
    case 5: {_suit = "U_C_Soldier_VR"};
};
if (life_adminSuit) then {
    {player removeAction _x} forEach admin_actions;
    removeUniform player;
    player setVariable ["adminSuit",false,true];
    life_adminSuit = false;
    player allowDamage true;
    removeAllWeapons player;
    {player removeMagazine _x;} forEach (magazines player);
    removeVest player;
    removeBackpack player;
    removeGoggles player;
    removeHeadGear player;
    [] spawn TON_fnc_MapMarkersAdmin;
    //Give default loadout per side
        switch (playerSide) do {
            case west: {
                player addUniform "U_Rangemaster";
                player addVest "V_Rangemaster_belt";

                player addMagazine "16Rnd_9x21_Mag";
                player addWeapon "hgun_P07_snds_F";
                player addMagazine "16Rnd_9x21_Mag";
                player addMagazine "16Rnd_9x21_Mag";
                player addMagazine "16Rnd_9x21_Mag";
                player addMagazine "16Rnd_9x21_Mag";
                player addMagazine "16Rnd_9x21_Mag";

                /* ITEMS */
                player addItem "ItemMap";
                player assignItem "ItemMap";
                player addItem "ItemCompass";
                player assignItem "ItemCompass";
                player addItem "ItemWatch";
                player assignItem "ItemWatch";
                player addItem "ItemGPS";
                player assignItem "ItemGPS";

                [] call life_fnc_playerSkins;
                [] call life_fnc_saveGear;
            };

            case civilian: {
                _clothings = ["U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_redwhite","U_C_Commoner1_1"];
                player addUniform (selectRandom _clothings);

                /* ITEMS */
                player addItem "ItemMap";
                player assignItem "ItemMap";
                player addItem "ItemCompass";
                player assignItem "ItemCompass";
                player addItem "ItemWatch";
                player assignItem "ItemWatch";

                [] call life_fnc_playerSkins;
                [] call life_fnc_saveGear;
            };

            case independent: {
                [] call life_fnc_medicLoadout;
                player addUniform "U_Rangemaster";
                player addItem "FirstAidKit";
                player addItem "FirstAidKit";
                player addItem "ItemMap";
                player assignItem "ItemMap";
                player addItem "ItemCompass";
                player assignItem "ItemCompass";
                player addItem "ItemWatch";
                player assignItem "ItemWatch";

                [] call life_fnc_playerSkins;
                [] call life_fnc_saveGear;
            };
        };
    hint "Admin suit is now gone";
} else {
        removeUniform player;
        removeHeadgear player;
        player addUniform "U_C_Soldier_VR";
        [0,format ["%1 has entered admin mode",profileName]] remoteExecCall ["life_fnc_broadcast",RCLIENT];
        player setVariable ["adminSuit",true,true];
        life_adminSuit = true;
        player allowDamage false;
        [] spawn TON_fnc_MapMarkersAdmin;

        //Add Items
        player addItem "ItemMap";
        player assignItem "ItemMap";
        player addItem "ItemCompass";
        player assignItem "ItemCompass";
        player addItem "ItemWatch";
        player assignItem "ItemWatch";
        player addVest "V_TacVestIR_blk";
        player addHeadgear "NVGoggles";
        player addBackpack "B_ViperHarness_blk_F";
        player addMagazine "30Rnd_65x39_caseless_green";
        player addWeapon "arifle_ARX_blk_F";
        player addMagazine "30Rnd_65x39_caseless_green";
        player addMagazine "30Rnd_65x39_caseless_green";
        player addMagazine "30Rnd_65x39_caseless_green";
        player addMagazine "30Rnd_65x39_caseless_green";
        player addMagazine "10Rnd_50BW_Mag_F";
        player addMagazine "10Rnd_50BW_Mag_F";
        player addMagazine "10Rnd_50BW_Mag_F";
        player addMagazine "10Rnd_50BW_Mag_F";

        //Actions
        admin_actions = [player addAction["<t color='#FF0000'>Heal/Repair Target</t>",{cursorTarget setDamage 0;}]];
        admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Impound Target</t>",{_vehicle = cursorTarget; [_vehicle,true,player] remoteExec ["TON_fnc_vehicleStore",RSERV];}]];
        admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Get Keys Target</t>",{_vehicle = cursorTarget;life_vehicles pushBack _vehicle;}]];
        admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Get Vehicle Owners</t>",{_vehicle = cursorTarget;[_vehicle] spawn life_fnc_searchVehAction;}]];
        admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Refuel Target</t>",{_vehicle = cursorTarget; _vehicle setFuel 1;}]];
        admin_actions = admin_actions + [player addAction["<t color='#FF0000'>Get Target Name</t>",{hint format["%1", typeOf cursorObject]; diag_log (typeOf cursorObject);copyToClipboard (typeOf cursorObject);}]];
};