#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private ["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_I_CombatUniform") then {
                player setObjectTextureGlobal [0, "textures\outfits\mafiaboss.png"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_stripped") then {
                player setObjectTextureGlobal [0, "textures\outfits\cat.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
                player setObjectTextureGlobal [0, "textures\outfits\wolf.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\outfits\hand.jpg"];
            };
            if (uniform player isEqualTo "U_C_WorkerCoveralls") then {
                player setObjectTextureGlobal [0, "textures\outfits\prisonsuit.jpg"];
            };
        };
    };

    case west: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\cop\cop_uniform.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
                if (FETCH_CONST(life_coplevel) >= 1) then {
                    _skinName = ["textures\cop\cop_uniform_",(FETCH_CONST(life_coplevel)),".jpg"] joinString "";
                };
            };
            player setObjectTextureGlobal [0, _skinName];
        };
    };

    case independent: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            player setObjectTextureGlobal [0, "textures\medic\medic_uniform.jpg"];
        };
    };
};
