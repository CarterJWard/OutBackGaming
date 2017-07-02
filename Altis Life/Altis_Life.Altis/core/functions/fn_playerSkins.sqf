#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_blue") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_1.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_burgundy") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_2.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_stripped") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_3.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_4.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_5.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_6.jpg"];
            };
            if (uniform player isEqualTo "U_C_Commoner1_1") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_7.jpg"];
            };
        };
        if (uniform player isEqualTo "U_C_WorkerCoveralls") then {
                player setObjectTextureGlobal [0, "textures\civ\prisonsuit.jpg"];
            };
    };

    case west: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\cop\cop_uniform.jpg";
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
                if ((life_gigcoplevel25) >= 1) then {
                    _skinName = ["textures\cop\cop_uniform",(life_gigcoplevel25),".jpg"] joinString "";
                };
            };
            player setObjectTextureGlobal [0, _skinName];
        };
        if (uniform player isEqualTo "U_BG_Guerrilla_6_1") then {
            player setObjectTextureGlobal [0,"textures\cop\swat.paa"];
        };
        
        (unitBackpack player) setObjectTextureGlobal [0,""];

    };

    case independent: {
        if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\medic\medic_uniform.jpg";
            if (call(life_gigmed61) >= 1) then {
                _skinName = ["textures\medic\medic_uniform",(life_gigmed61),".jpg"] joinString "";
            };
            player setObjectTextureGlobal [0,_skinName];
        };
    (unitBackpack player) setObjectTextureGlobal [0,""];
    };
};

