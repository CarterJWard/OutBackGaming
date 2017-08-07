class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: ARRAY (This is for limiting items to certain things)
    *            0: Variable to read from
    *            1: Variable Value Type (SCALAR / BOOL /EQUAL)
    *            2: What to compare to (-1 = Check Disabled)
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
    */
    class civ_basic {
        side = "civ";
        vehicles[] = {
            { "A3L_VolvoS60RBlack", { "", "", -1 } },
            { "RDS_Golf4_civ_01", { "", "", -1 } },
            { "Jonzie_Mini_Cooper", { "", "", -1 } },
            { "Jonzie_Mini_Cooper_R_spec", { "", "", -1 } },
            { "red_beetle_66_bahamablue", {"", "", -1} },
            { "red_beetle_66_black", {"", "", -1} },
            { "red_beetle_66_javagreen", {"", "", -1} },
            { "red_beetle_66_pearlwhite", {"", "", -1} },
            { "red_beetle_66_rubyred", {"", "", -1} },   
            { "red_beetle_66_seasand", {"", "", -1} },
            { "red_beetle_66_seablue", {"", "", -1} },
            { "red_genesis_16_yellow", {"","",-1 } },
            { "red_genesis_16_aqua", {"","",-1 } },
            { "red_genesis_16_white", {"","",-1 } },
            { "red_genesis_16_red", {"","",-1 } },
            { "red_genesis_16_green", {"","",-1 } },
            { "red_genesis_16_orange", {"","",-1 } },
            { "red_genesis_16_pink", {"","",-1 } },
            { "red_genesis_16_black", {"","",-1 } },
            { "red_genesis_16_purple", {"","",-1 } },
            { "red_genesis_16_darkred", {"","",-1 } },
            { "red_genesis_16_darkblue", {"","",-1 } },
            { "red_genesis_16_darkgreen", {"","",-1 } },
            { "A3L_BMW_M6_pink", {"","",-1 } }, 
            { "A3L_BMW_M6_orange", {"","",-1 } }, 
            { "A3L_BMW_M6_grey", {"","",-1 } }, 
            { "A3L_BMW_M6_black", {"","",-1 } }, 
            { "A3L_BMW_M6_darkblue", {"","",-1 } }, 
            { "A3L_BMW_M6_purple", {"","",-1 } }, 
            { "A3L_BMW_M6_yellow", {"","",-1 } }, 
            { "A3L_BMW_M6_white", {"","",-1 } }, 
            { "A3L_BMW_M6_red", {"","",-1 } }
        };
    };
    class civ_dodge {
        side = "civ";
        vehicles[] = {
            { "red_ram_06_aqua", {"", "", -1} },
            { "red_ram_06_black", {"", "", -1} },
            { "red_ram_06_darkblue", {"", "", -1} },
            { "red_ram_06_darkgreen", {"", "", -1} },
            { "red_ram_06_darkred", {"", "", -1} },
            { "red_ram_06_red", {"", "", -1} },
            { "red_ram_06_purple", {"", "", -1} },
            { "red_ram_06_pink", {"", "", -1} },
            { "red_ram_06_orange", {"", "", -1} },
            { "red_ram_06_green", {"", "", -1} },
            { "red_ram_06_yellow", {"", "", -1} },
            { "red_ram_06_white", {"", "", -1} },
            { "red_charger_12_yellow", {"",""-1} },
            { "red_charger_12_green", {"",""-1} },
            { "red_charger_12_orange", {"",""-1} },
            { "red_charger_12_black", {"",""-1} },
            { "red_charger_12_aqua", {"",""-1} },
            { "red_charger_12_red", {"",""-1} },
            { "red_charger_12_white", {"",""-1} },
            { "red_charger_12_purple", {"",""-1} },
            { "red_charger_12_pink", {"",""-1} },
            { "red_charger_12_darkred", {"",""-1} },
            { "red_charger_12_darkblue", {"",""-1} },
            { "red_charger_15_red", {"","",-1} },
            { "red_charger_15_purple", {"","",-1} },
            { "red_charger_15_pink", {"","",-1} },
            { "red_charger_15_orange", {"","",-1} },
            { "red_charger_15_green", {"","",-1} },
            { "red_charger_15_yellow", {"","",-1} },
            { "red_charger_15_aqua", {"","",-1} },
            { "red_charger_15_black", {"","",-1} },
            { "red_charger_15_white", {"","",-1} },
            { "red_charger_15_darkred", {"","",-1} },
            { "red_charger_15_darkgreen", {"","",-1} },
            { "red_charger_15_darkblue", {"","",-1} },
        };
    };
    class civ_chevy {
        side = "civ";
        vehicles[] = {
            {"red_camaro_12_aqua", {"", "", -1} },
            {"red_camaro_12_black", {"", "", -1} },
            {"red_camaro_12_blue", {"", "", -1} },
            {"red_camaro_12_darkblue", {"", "", -1} },
            {"red_camaro_12_darkgreen", {"", "", -1} },
            {"red_camaro_12_white", {"", "", -1} },
            {"red_camaro_12_yellow", {"", "", -1} },
            {"red_camaro_12_red", {"", "", -1} },
            {"red_camaro_12_darkred", {"", "", -1} },
            {"red_camaro_12_green", {"", "", -1} },
            {"red_camaro_12_orange", {"", "", -1} },
            {"red_camaro_12_pink", {"", "", -1} },
            {"red_camaro_12_purple", {"", "", -1} },
            {"red_corvette_14_red", {"", "", -1} },
            {"red_corvette_14_white", {"", "", -1} },
            {"red_corvette_14_yellow", {"", "", -1} },
            {"red_corvette_14_purple", {"", "", -1} },
            {"red_corvette_14_pink", {"", "", -1} },
            {"red_corvette_14_orange", {"", "", -1} },
            {"red_corvette_14_green", {"", "", -1} },
            {"red_corvette_14_aqua", {"", "", -1} },
            {"red_corvette_14_black", {"", "", -1} },
            {"red_corvette_14_darkgreen", {"", "", -1} },
            {"red_corvette_14_darkblue", {"", "", -1} },
            {"red_corvette_14_darkred", {"", "", -1} },
            {"red_suburban_15_purple", {"","",-1} },
            {"red_suburban_15_white", {"","",-1} },
            {"red_suburban_15_black", {"","",-1} },
            {"red_suburban_15_blue", {"","",-1} },
            {"red_suburban_15_darkblue", {"","",-1} },
            {"red_suburban_15_darkred", {"","",-1} },
            {"red_suburban_15_darkgreen", {"","",-1} },
            {"shounka_avalanche_grise", {"","",-1 } },
            {"shounka_avalanche_orange", {"","",-1 } },
            {"shounka_avalanche_rouge", {"","",-1 } },
            {"shounka_avalanche_rose", {"","",-1 } },
            {"shounka_avalanche_violet", {"","",-1 } },
            {"shounka_avalanche_jaune", {"","",-1 } },
            {"shounka_avalanche_bleufonce", {"","",-1 } },
            {"shounka_avalanche_noir", {"","",-1 } },
            {"shounka_avalanche", {"","",-1 } },
            {"shounka_avalanche_pussywagon", {"","",-1 } }
        };
    };
    class civ_ford {
        side = "civ";
        vehicles[] = {
            { "Jonzie_Raptor", { "", "", -1} },
            { "Urbanized_67Mustang_orange", { "", "", -1} },
            { "Urbanized_67Mustang_white", { "", "", -1} },
            { "Urbanized_67Mustang_black", { "", "", -1} },
            { "Urbanized_67Mustang_darkred", { "", "", -1} },
            { "Urbanized_67Mustang_blue", { "", "", -1} },
            { "red_fusion_10_red", {"", "", -1 } },
            { "red_fusion_10_purple", {"", "", -1 } },
            { "red_fusion_10_darkred", {"", "", -1 } },
            { "red_fusion_10_orange", {"", "", -1 } },
            { "red_fusion_10_pink", {"", "", -1 } },
            { "red_fusion_10_darkgreen", {"", "", -1 } },
            { "red_fusion_10_white", {"", "", -1 } },
            { "red_fusion_10_aqua", {"", "", -1 } },
            { "red_fusion_10_black", {"", "", -1 } },
            { "red_fusion_10_blue", {"", "", -1 } },
            { "red_fusion_10_darkblue", {"", "", -1 } },
            { "red_taurus_10_white", {"", "", -1} },
            { "red_taurus_10_red", {"", "", -1} },
            { "red_taurus_10_purple", {"", "", -1} },
            { "red_taurus_10_pink", {"", "", -1} },
            { "red_taurus_10_orange", {"", "", -1} },
            { "red_taurus_10_darkred", {"", "", -1} },
            { "red_taurus_10_yellow", {"", "", -1} },
            { "red_taurus_10_darkgreen", {"", "", -1} },
            { "red_taurus_10_darkblue", {"", "", -1} },
            { "red_taurus_10_blue", {"", "", -1} },
            { "red_taurus_10_black", {"", "", -1} },
            { "red_taurus_10_aqua", {"", "", -1} },
            { "red_cvpi_06_red", {"", "", -1} },
            { "red_cvpi_06_white", {"", "", -1} },
            { "red_cvpi_06_purple", {"", "", -1} },
            { "red_cvpi_06_pink", {"", "", -1} },
            { "red_cvpi_06_orange", {"", "", -1} },
            { "red_cvpi_06_darkred", {"", "", -1} },
            { "red_cvpi_06_yellow", {"", "", -1} },
            { "red_cvpi_06_darkgreen", {"", "", -1} },
            { "red_cvpi_06_darkblue", {"", "", -1} },
            { "red_cvpi_06_blue", {"", "", -1} },
            { "red_cvpi_06_black", {"", "", -1} },
            { "red_explorer_16_yellow", {"","",-1} },
            { "red_explorer_16_pink", {"","",-1} },
            { "red_explorer_16_purple", {"","",-1} },
            { "red_explorer_16_white", {"","",-1} },
            { "red_explorer_16_red", {"","",-1} },
            { "red_explorer_16_aqua", {"","",-1} },
            { "red_explorer_16_black", {"","",-1} },
            { "red_explorer_16_blue", {"","",-1} },
            { "red_explorer_16_darkred", {"","",-1} },
            { "red_explorer_16_darkblue", {"","",-1} },
            { "red_explorer_16_darkgreen", {"","",-1} }
        };
    };
    class civ_top {
        side = "civ";
        vehicles[] = {
            { "A3L_Ferrari458black",{"", "", -1 } },
            { "A3L_Ferrari458white",{"", "", -1 } },
            { "A3L_Ferrari458red",{"", "", -1 } },
            { "A3L_Ferrari458blue",{"", "", -1 } },
            { "red_xkrs_12_orange", {"","",-1} },
            { "red_xkrs_12_purple", {"","",-1} },
            { "red_xkrs_12_red", {"","",-1} },
            { "red_xkrs_12_pink", {"","",-1} },
            { "red_xkrs_12_aqua", {"","",-1} },
            { "red_xkrs_12_black", {"","",-1} },
            { "red_xkrs_12_darkgreen", {"","",-1} },
            { "red_xkrs_12_darkred", {"","",-1} },
            { "red_xkrs_12_darkblue", {"","",-1} },
            { "red_s65_12_red", {"","",-1 } },
            { "red_s65_12_white", {"","",-1 } },
            { "red_s65_12_purple", {"","",-1 } },
            { "red_s65_12_pink", {"","",-1 } },
            { "red_s65_12_orange", {"","",-1 } },
            { "red_s65_12_black", {"","",-1 } },
            { "red_s65_12_darkblue", {"","",-1 } },
            { "red_s65_12_darkgreen", {"","",-1 } },
            { "red_s65_12_darkred", {"","",-1 } },
            { "red_vanquish_12_yellow", {"","",-1} },
            { "red_vanquish_12_aqua", {"","",-1} },
            { "red_vanquish_12_green", {"","",-1} },
            { "red_vanquish_12_orange", {"","",-1} },
            { "red_vanquish_12_pink", {"","",-1} },
            { "red_vanquish_12_purple", {"","",-1} },
            { "red_vanquish_12_red", {"","",-1} },
            { "red_vanquish_12_white", {"","",-1} },
            { "red_vanquish_12_blue", {"","",-1} },
            { "red_vanquish_12_black", {"","",-1} },
            { "red_vanquish_12_darkred", {"","",-1} },
            { "red_vanquish_12_darkblue", {"","",-1} },
            { "red_vanquish_12_darkgreen", {"","",-1} },
            { "red_gs350_13_yellow", {"","",-1} },
            { "red_gs350_13_white", {"","",-1} },
            { "red_gs350_13_red", {"","",-1} },
            { "red_gs350_13_purple", {"","",-1} },
            { "red_gs350_13_pink", {"","",-1} },
            { "red_gs350_13_orange", {"","",-1} },
            { "red_gs350_13_black", {"","",-1} },
            { "red_gs350_13_darkgreen", {"","",-1} },
            { "red_gs350_13_darkred", {"","",-1} },
            { "red_gs350_13_darkblue", {"","",-1} },
            { "Mrshounka_agera_p_rose",{"","",-1 } },
            { "Mrshounka_agera_p_jaune",{"","",-1 } },
            { "Mrshounka_agera_p_violet",{"","",-1 } },
            { "Mrshounka_agera_p_noir",{"","",-1 } },
            { "Mrshounka_agera_p_bleu",{"","",-1 } },
            { "Mrshounka_agera_p_grise",{"","",-1 } },
            { "Mrshounka_agera_p_orange",{"","",-1 } },
            { "Mrshounka_agera_p",{"","",-1 } },
            { "Urbanized_CTSV_black", {"","",-1 } },
            { "Urbanized_CTSV_blue", {"","",-1 } },
            { "Urbanized_CTSV_chrome", {"","",-1 } },
            { "Urbanized_CTSV_lime", {"","",-1 } },
            { "Urbanized_CTSV_orange", {"","",-1 } },
            { "Urbanized_CTSV_pink", {"","",-1 } },
            { "Urbanized_CTSV_purple", {"","",-1 } },
            { "Urbanized_CTSV_yellow", {"","",-1 } },
            { "Urbanized_CTSV_white", {"","",-1 } },
            { "Urbanized_CTSV_red", {"","",-1 } }
        };
    };
    class civ_porsche {
        side = "civ";
        vehicles[] = {
            { "S_PorscheRS_Black", { "", "", -1} },
            { "S_PorscheRS_White", { "", "", -1} },
            { "S_PorscheRS_Yellow", { "", "", -1} },
            { "red_panmera_10_white", {"", "", -1 } },
            { "red_panmera_10_red", {"", "", -1 } },
            { "red_panmera_10_purple", {"", "", -1 } },
            { "red_panmera_10_pink", {"", "", -1 } },
            { "red_panmera_10_green", {"", "", -1 } },
            { "red_panmera_10_aqua", {"", "", -1 } },
            { "red_panmera_10_black", {"", "", -1 } },
            { "red_panmera_10_darkblue", {"", "", -1 } },
            { "red_panmera_10_darkgreen", {"", "", -1 } },
            { "red_panmera_10_darkred", {"", "", -1 } },
            { "red_panmera_10_orange", {"", "", -1 } },
            { "red_porsche_12_green", {"","",-1} },
            { "red_porsche_12_aqua", {"","",-1} }, 
            { "red_porsche_12_orange", {"","",-1} }, 
            { "red_porsche_12_pink", {"","",-1} }, 
            { "red_porsche_12_purple", {"","",-1} }, 
            { "red_porsche_12_red", {"","",-1} }, 
            { "red_porsche_12_white", {"","",-1} }, 
            { "red_porsche_12_yellow", {"","",-1} }, 
            { "red_porsche_12_blue", {"","",-1} }, 
            { "red_porsche_12_darkblue", {"","",-1} }, 
            { "red_porsche_12_darkgreen", {"","",-1} }, 
            { "red_porsche_12_darkred", {"","",-1} }, 
            { "red_porsche_12_black", {"","",-1} }
        };
    };
    class civ_exo {
        side = "civ";
        vehicles[] = {
            {"Urbanized_427_black", {"", "", -1} },
            {"Urbanized_427_blue", {"", "", -1} },
            {"Urbanized_427_orange", {"", "", -1} },
            {"Urbanized_427_pink", {"", "", -1} },
            {"Urbanized_427_red", {"", "", -1} },
            {"Urbanized_427_wed", {"", "", -1} },
            {"Urbanized_427_white", {"", "", -1} },
            {"Urbanized_427_yellow", {"", "", -1} },
            {"red_venomgt_11_yellow", {"", "", -1} },
            {"red_venomgt_11_pink", {"", "", -1} },
            {"red_venomgt_11_purple", {"", "", -1} },
            {"red_venomgt_11_red", {"", "", -1} },
            {"red_venomgt_11_white", {"", "", -1} },
            {"red_venomgt_11_aqua", {"", "", -1} },
            {"red_venomgt_11_black", {"", "", -1} },
            {"red_venomgt_11_darkgreen", {"", "", -1} },
            {"red_venomgt_11_darkblue", {"", "", -1} },
            {"red_venomgt_11_green", {"", "", -1} },
            {"red_venomgt_11_darkred", {"", "", -1} },
            {"red_venomgt_11_orange", {"", "", -1} },
            {"quiet_bugatti_blanche_f", {"", "",-1} },
            {"A3L_Veyron", {"","",-1 } },
            {"A3L_Veyron_Orange", {"","",-1 } },
            {"A3L_Veyron_Black", {"","",-1 } }, 
            {"A3L_Veyron_white", {"","",-1 } },
            {"A3L_Veyron_purple", {"","",-1 } },
            {"A3L_Veyron_red", {"","",-1 } }
        };
    };
    class civ_truck {
        side = "civ";
        vehicles[] = {
            { "Jonzie_Box_Truck", { "", "", -1 } },
            { "A3L_Dumptruck", { "", "", -1} },
            { "Jonzie_Western", { "", "", -1 } },
            { "Jonzie_Superliner", {"", "", -1} },
            { "Jonzie_Curtain", { "", "", -1 } },
            { "A3L_TowTruck", { "", "", -1 } },
            { "red_towtruck_08_tow1", {"", "", -1} },
            { "red_towtruck_08_tow2", {"", "", -1} }
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "", "", -1 } },
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "O_Heli_Light_02_unarmed_F", { "", "", -1 } }
        };
    };

     class civ_ship {
        side = "civ";
        vehicles[] = {
            { "C_Rubberboat", { "", "", -1 } },
            { "C_Boat_Civil_01_F", { "", "", -1 } },
            { "B_SDV_01_F", { "", "", -1 } }
        };
    };

    class reb_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "B_G_Offroad_01_F", { "", "", -1 } },
            { "O_MRAP_02_F", { "", "", -1 } },
            { "B_Heli_Light_01_stripped_F", { "", "", -1 } },
            { "B_G_Offroad_01_armed_F", { "", "", -1 } }
        };
    };

    class med_shop {
        side = "med";
        vehicles[] = {
            { "A3L_AmberLamps", { "", "", -1 } }
        };
    };

    class med_air_hs {
        side = "med";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "O_Heli_Light_02_unarmed_F", { "", "", -1 } }
        };
    };

    class cop_car {
        side = "cop";
        vehicles[] = {
            { "EvoXSo1", { "", "", -1 } },
            { "EvoXSo2", { "", "", -1 } },
            { "EvoXSo3", { "", "", -1 } },
            { "EvoXSo4", { "", "", -1 } },
            { "A3L_Jailbus", { "", "", -1 } }
        };
    };
    class cop_SO {
        side = "cop";
        vehicles[] = {
            { "red_f350_08_p_Patrol", {"", "", -1} }
        };
    };
    class cop_air {
        side = "cop";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "B_Heli_Transport_01_F", { "life_coplevel", "SCALAR", 3 } }
        };
    };

    class cop_ship {
        side = "cop";
        vehicles[] = {
            { "B_Boat_Transport_01_F", { "", "", -1 } },
            { "C_Boat_Civil_01_police_F", { "", "", -1 } },
            { "B_Boat_Armed_01_minigun_F", { "life_coplevel", "SCALAR", 3 } },
            { "B_SDV_01_F", { "", "", -1 } }
        };
    };
};

class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    "price" is the price before any multipliers set in Master_Config are applied.
    *
    *    Default Multiplier Values & Calculations:
    *       Civilian [Purchase, Sell]: [1.0, 0.5]
    *       Cop [Purchase, Sell]: [0.5, 0.5]
    *       Medic [Purchase, Sell]: [0.75, 0.5]
    *       ChopShop: Payout = price * 0.25
    *       GarageSell: Payout = price * [0.5, 0.5, 0.5, -1]
    *       Cop Impound: Payout = price * 0.1
    *       Pull Vehicle from Garage: Cost = price * [1, 0.5, 0.75, -1] * [0.5, 0.5, 0.5, -1]
    *           -- Pull Vehicle & GarageSell Array Explanation = [civ,cop,medic,east]
    *
    *       1: ARRAY (license required)
    *         Ex: { "driver", "" , "" , "" } //civilian, west, independent, east
    *         licenses[] = { {"CIV"}, {"COP"}, {"MEDIC"}, {"EAST"} };
    *    Textures config follows { Texture Name, side, {texture(s)path}}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    *
    */

    class Default {
        vItemSpace = -1;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };
    class shounka_avalanche {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 90000;
        textures[] = {};
    };
    class shounka_avalanche_noir : shounka_avalanche{};
    class shounka_avalanche_pussywagon : shounka_avalanche{};
    class shounka_avalanche_bleufonce : shounka_avalanche{};
    class shounka_avalanche_jaune : shounka_avalanche{};
    class shounka_avalanche_violet : shounka_avalanche{};
    class shounka_avalanche_rose : shounka_avalanche{};
    class shounka_avalanche_rouge : shounka_avalanche{};
    class shounka_avalanche_orange : shounka_avalanche{};
    class shounka_avalanche_grise : shounka_avalanche{};
    class Urbanized_CTSV_black {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 560000;
        textures[] = {};
    };
    class Urbanized_CTSV_blue : Urbanized_CTSV_black{};
    class Urbanized_CTSV_chrome : Urbanized_CTSV_black{};
    class Urbanized_CTSV_lime : Urbanized_CTSV_black{};
    class Urbanized_CTSV_orange : Urbanized_CTSV_black{};
    class Urbanized_CTSV_pink : Urbanized_CTSV_black{};
    class Urbanized_CTSV_purple : Urbanized_CTSV_black{};
    class Urbanized_CTSV_yellow : Urbanized_CTSV_black{};
    class Urbanized_CTSV_white : Urbanized_CTSV_black{};
    class Urbanized_CTSV_red : Urbanized_CTSV_black{};
    
    class A3L_Veyron {
        vItemSpace = -1;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 3500000;
        textures[] = {};
    };
    class A3L_Veyron_orange : A3L_Veyron {};
    class A3L_Veyron_black : A3L_Veyron {};
    class A3L_Veyron_white : A3L_Veyron {};
    class A3L_Veyron_purple : A3L_Veyron {};
    class A3L_Veyron_red : A3L_Veyron {};
    class quiet_bugatti_blanche_f {
        vItemSpace = -1;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 4100000;
        textures[] = {};
    };
    class A3L_BMW_M6_pink {
        vItemSpace = 15;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 470000;
        textures[] = {};
    };
    class A3L_BMW_M6_orange : A3L_BMW_M6_pink{};
    class A3L_BMW_M6_grey : A3L_BMW_M6_pink{};
    class A3L_BMW_M6_black : A3L_BMW_M6_pink{};
    class A3L_BMW_M6_darkblue : A3L_BMW_M6_pink{};
    class A3L_BMW_M6_purple : A3L_BMW_M6_pink{};
    class A3L_BMW_M6_yellow : A3L_BMW_M6_pink{};
    class A3L_BMW_M6_white : A3L_BMW_M6_pink{};
    class A3L_BMW_M6_red : A3L_BMW_M6_pink{};
    class Mrshounka_agera_p {
        vItemSpace = -1;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 580000;
        textures[] = {};
    };
    class Mrshounka_agera_p_jaune : Mrshounka_agera_p{};
    class Mrshounka_agera_p_violet : Mrshounka_agera_p{};
    class Mrshounka_agera_p_rose : Mrshounka_agera_p{};
    class Mrshounka_agera_p_noir : Mrshounka_agera_p{};
    class Mrshounka_agera_p_bleu : Mrshounka_agera_p{};
    class Mrshounka_agera_p_grise : Mrshounka_agera_p{};
    class Mrshounka_agera_p_orange : Mrshounka_agera_p{};
    class red_genesis_16_yellow {
        vItemSpace = 15;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 75000;
        textures[] = {};
    };
    class red_genesis_16_aqua : red_genesis_16_yellow{};
    class red_genesis_16_white : red_genesis_16_yellow{};
    class red_genesis_16_red : red_genesis_16_yellow{};
    class red_genesis_16_green : red_genesis_16_yellow{};
    class red_genesis_16_orange : red_genesis_16_yellow{};
    class red_genesis_16_pink : red_genesis_16_yellow{};
    class red_genesis_16_black : red_genesis_16_yellow{};
    class red_genesis_16_purple : red_genesis_16_yellow{};
    class red_genesis_16_darkred : red_genesis_16_yellow{};
    class red_genesis_16_darkgreen : red_genesis_16_yellow{};
    class red_genesis_16_darkblue : red_genesis_16_yellow{};
    
    class red_explorer_16_yellow {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 230000;
        textures[] = {};
    };
    class red_explorer_16_pink : red_explorer_16_yellow{};
    class red_explorer_16_purple : red_explorer_16_yellow{};
    class red_explorer_16_white : red_explorer_16_yellow{};
    class red_explorer_16_red : red_explorer_16_yellow{};
    class red_explorer_16_aqua : red_explorer_16_yellow{};
    class red_explorer_16_blue : red_explorer_16_yellow{};
    class red_explorer_16_black : red_explorer_16_yellow{};
    class red_explorer_16_darkred : red_explorer_16_yellow{};
    class red_explorer_16_darkblue : red_explorer_16_yellow{};
    class red_explorer_16_darkgreen : red_explorer_16_yellow{};
    
    class red_charger_15_red {
        vItemSpace = -1;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 525000;
        textures[] = {};
    };
    class red_charger_15_purple : red_charger_15_red{};
    class red_charger_15_pink : red_charger_15_red{};
    class red_charger_15_orange : red_charger_15_red{};
    class red_charger_15_green : red_charger_15_red{};
    class red_charger_15_yellow : red_charger_15_red{};
    class red_charger_15_aqua : red_charger_15_red{};
    class red_charger_15_black : red_charger_15_red{};
    class red_charger_15_white : red_charger_15_red{};
    class red_charger_15_darkgreen : red_charger_15_red{};
    class red_charger_15_darkblue : red_charger_15_red{};
    class red_charger_15_darkred : red_charger_15_red{};
    
    class red_charger_12_yellow {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 475000;
        textures[] = {};
    };
    class red_charger_12_green : red_charger_12_yellow{};
    class red_charger_12_black : red_charger_12_yellow{};
    class red_charger_12_aqua : red_charger_12_yellow{};
    class red_charger_12_darkred : red_charger_12_yellow{};
    class red_charger_12_darkblue : red_charger_12_yellow{};
    class red_charger_12_white : red_charger_12_yellow{};
    class red_charger_12_pink : red_charger_12_yellow{};
    class red_charger_12_orange : red_charger_12_yellow{};
    class red_charger_12_purple : red_charger_12_yellow{};
    class red_charger_12_red : red_charger_12_yellow{};
    class red_suburban_15_purple {
        vItemSpace = 60;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 400000;
        textures[] = {};
    };
    class red_suburban_15_white : red_suburban_15_purple{};
    class red_suburban_15_black : red_suburban_15_purple{};
    class red_suburban_15_blue : red_suburban_15_purple{};
    class red_suburban_15_darkred : red_suburban_15_purple{};
    class red_suburban_15_darkgreen : red_suburban_15_purple{};
    class red_suburban_15_darkblue : red_suburban_15_purple{};
    class red_corvette_14_red {
        vItemSpace = -1;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 720000;
        textures[] = {};
    };
    class red_corvette_14_white : red_corvette_14_red{};
    class red_corvette_14_yellow : red_corvette_14_red{};
    class red_corvette_14_purple : red_corvette_14_red{};
    class red_corvette_14_pink : red_corvette_14_red{};
    class red_corvette_14_aqua : red_corvette_14_red{};
    class red_corvette_14_green : red_corvette_14_red{};
    class red_corvette_14_orange : red_corvette_14_red{};
    class red_corvette_14_black : red_corvette_14_red{};
    class red_corvette_14_darkgreen : red_corvette_14_red{};
    class red_corvette_14_darkred : red_corvette_14_red{};
    class red_corvette_14_darkblue : red_corvette_14_red{};
    class red_gs350_13_yellow {
        vItemSpace = -1;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 535000;
        textures[] = {};
    };
    class red_gs350_13_white : red_gs350_13_yellow{};
    class red_gs350_13_red : red_gs350_13_yellow{};
    class red_gs350_13_purple : red_gs350_13_yellow{};
    class red_gs350_13_white : red_gs350_13_yellow{};
    class red_gs350_13_orange : red_gs350_13_yellow{};
    class red_gs350_13_black : red_gs350_13_yellow{};
    class red_gs350_13_darkred : red_gs350_13_yellow{};
    class red_gs350_13_darkgreen : red_gs350_13_yellow{};
    class red_gs350_13_darkblue : red_gs350_13_yellow{};
    
    class red_vanquish_12_yellow {
        vItemSpace = -1;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 480000;
        textures[] = {};
    };
    class red_vanquish_12_aqua : red_vanquish_12_yellow{};
    class red_vanquish_12_green : red_vanquish_12_yellow{};
    class red_vanquish_12_orange : red_vanquish_12_yellow{};
    class red_vanquish_12_pink : red_vanquish_12_yellow{};
    class red_vanquish_12_purple : red_vanquish_12_yellow{};
    class red_vanquish_12_red : red_vanquish_12_yellow{};
    class red_vanquish_12_white : red_vanquish_12_yellow{};
    class red_vanquish_12_blue : red_vanquish_12_yellow{};
    class red_vanquish_12_black : red_vanquish_12_yellow{};
    class red_vanquish_12_darkred : red_vanquish_12_yellow{};
    class red_vanquish_12_darkblue : red_vanquish_12_yellow{};
    class red_vanquish_12_darkgreen : red_vanquish_12_yellow{};
    
    class red_porsche_12_green {
        vItemSpace = -1;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 850000;
        textures[] = {};
    };
    class red_porsche_12_aqua : red_porsche_12_green{};
    class red_porsche_12_black : red_porsche_12_green{};
    class red_porsche_12_orange : red_porsche_12_green{};
    class red_porsche_12_pink : red_porsche_12_green{};
    class red_porsche_12_purple : red_porsche_12_green{};
    class red_porsche_12_red : red_porsche_12_green{};
    class red_porsche_12_white : red_porsche_12_green{};
    class red_porsche_12_yellow : red_porsche_12_green{};
    class red_porsche_12_blue : red_porsche_12_green{};
    class red_porsche_12_darkblue : red_porsche_12_green{};
    class red_porsche_12_darkred : red_porsche_12_green{};
    class red_porsche_12_darkgreen : red_porsche_12_green{};

    class red_s65_12_red {
        vItemSpace = 5;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 850000;
        textures[] = {};
    };
    class red_s65_12_white : red_s65_12_red{};
    class red_s65_12_purple : red_s65_12_red{};
    class red_s65_12_pink : red_s65_12_red{};
    class red_s65_12_orange : red_s65_12_red{};
    class red_s65_12_black : red_s65_12_red{};
    class red_s65_12_darkred : red_s65_12_red{};
    class red_s65_12_darkblue : red_s65_12_red{};
    class red_s65_12_darkgreen : red_s65_12_red{};
    
    class red_xkrs_12_orange {
        vItemSpace = 20;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 700000;
        textures[] = {};
    };
    class red_xkrs_12_purple : red_xkrs_12_orange{};
    class red_xkrs_12_red : red_xkrs_12_orange{};
    class red_xkrs_12_pink : red_xkrs_12_orange{};
    class red_xkrs_12_aqua : red_xkrs_12_orange{};
    class red_xkrs_12_black : red_xkrs_12_orange{};
    class red_xkrs_12_darkgreen : red_xkrs_12_orange{};
    class red_xkrs_12_darkblue : red_xkrs_12_orange{};
    class red_xkrs_12_darkred : red_xkrs_12_orange{};

    class red_camaro_12_aqua {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 390000;
        textures[] = {};
    };
    class red_camaro_12_black : red_camaro_12_aqua{};
    class red_camaro_12_blue : red_camaro_12_aqua{};
    class red_camaro_12_darkblue : red_camaro_12_aqua{};
    class red_camaro_12_darkgreen : red_camaro_12_aqua{};
    class red_camaro_12_white : red_camaro_12_aqua{};
    class red_camaro_12_yellow : red_camaro_12_aqua{};
    class red_camaro_12_red : red_camaro_12_aqua{};
    class red_camaro_12_darkred : red_camaro_12_aqua{};
    class red_camaro_12_green : red_camaro_12_aqua{};
    class red_camaro_12_orange : red_camaro_12_aqua{};
    class red_camaro_12_pink : red_camaro_12_aqua{};
    class red_camaro_12_purple : red_camaro_12_aqua{};

    class red_panmera_10_white {
        vItemSpace = 10;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 900000;
        textures[] = {};
    };
    class red_panmera_10_red : red_panmera_10_white{};
    class red_panmera_10_purple : red_panmera_10_white{};
    class red_panmera_10_pink : red_panmera_10_white{};
    class red_panmera_10_green : red_panmera_10_white{};
    class red_panmera_10_aqua : red_panmera_10_white{};
    class red_panmera_10_black : red_panmera_10_white{};
    class red_panmera_10_darkblue : red_panmera_10_white{};
    class red_panmera_10_darkgreen : red_panmera_10_white{};
    class red_panmera_10_darkred : red_panmera_10_white{};
    class red_panmera_10_orange : red_panmera_10_white{};

    class red_taurus_10_white {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 115000;
        textures[] = {};
    };
    class red_taurus_10_red : red_taurus_10_white{};
    class red_taurus_10_purple : red_taurus_10_white{};
    class red_taurus_10_pink : red_taurus_10_white{};
    class red_taurus_10_orange : red_taurus_10_white{};
    class red_taurus_10_darkred : red_taurus_10_white{};
    class red_taurus_10_yellow : red_taurus_10_white{};
    class red_taurus_10_darkgreen : red_taurus_10_white{};
    class red_taurus_10_darkblue : red_taurus_10_white{};
    class red_taurus_10_blue : red_taurus_10_white{};
    class red_taurus_10_black : red_taurus_10_white{};
    class red_taurus_10_aqua : red_taurus_10_white{};

    class red_fusion_10_red {
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 85000;
        textures[] = {};
    };
    class red_fusion_10_purple : red_fusion_10_red{};
    class red_fusion_10_darkred : red_fusion_10_red{};
    class red_fusion_10_orange : red_fusion_10_red{};
    class red_fusion_10_pink : red_fusion_10_red{};
    class red_fusion_10_darkgreen : red_fusion_10_red{};
    class red_fusion_10_white : red_fusion_10_red{};
    class red_fusion_10_aqua : red_fusion_10_red{};
    class red_fusion_10_black : red_fusion_10_red{};
    class red_fusion_10_blue : red_fusion_10_red{};
    class red_fusion_10_darkblue : red_fusion_10_red{};

    class red_venomgt_11_yellow {
        vItemSpace = 10;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2100000;
        textures[] = {};
    };
    class red_venomgt_11_pink : red_venomgt_11_yellow{};
    class red_venomgt_11_purple : red_venomgt_11_yellow{};
    class red_venomgt_11_red : red_venomgt_11_yellow{};
    class red_venomgt_11_white : red_venomgt_11_yellow{};
    class red_venomgt_11_aqua : red_venomgt_11_yellow{};
    class red_venomgt_11_black : red_venomgt_11_yellow{};
    class red_venomgt_11_darkgreen : red_venomgt_11_yellow{};
    class red_venomgt_11_darkblue : red_venomgt_11_yellow{};
    class red_venomgt_11_green : red_venomgt_11_yellow{};
    class red_venomgt_11_darkred : red_venomgt_11_yellow{};
    class red_venomgt_11_orange : red_venomgt_11_yellow{};
    class red_towtruck_08_tow1 {
        vItemSpace = 35;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 340000;
        textures[] = {};
    };
    class red_towtruck_08_tow2 : red_towtruck_08_tow1{};
    class red_f350_08_p_Patrol {
        vItemSpace = 100;
        licenses[] = {{""}, {""}, {""}, {""} };
        price = 150000;
        textures[] = {};
    }
    class red_cvpi_06_red {
        vItemSpace = 35;
        licenses[] = { {"driver"},{""},{""},{""} };
        price = 225000;
        textures[] = {};  
    };
    class red_cvpi_06_white : red_cvpi_06_red{};
    class red_cvpi_06_purple : red_cvpi_06_red{};
    class red_cvpi_06_pink : red_cvpi_06_red{};
    class red_cvpi_06_orange : red_cvpi_06_red{};
    class red_cvpi_06_darkred : red_cvpi_06_red{};
    class red_cvpi_06_yellow : red_cvpi_06_red{};
    class red_cvpi_06_darkgreen : red_cvpi_06_red{};
    class red_cvpi_06_darkblue : red_cvpi_06_red{};
    class red_cvpi_06_blue : red_cvpi_06_red{};
    class red_cvpi_06_black : red_cvpi_06_red{};
    class Urbanized_67Mustang_orange {
        vItemSpace = 20;
        licenses[] = { {"driver"},{""},{""},{""} };
        price = 600000;
        textures[] = {};
    };
        class Urbanized_67Mustang_white :  Urbanized_67Mustang_orange{};
        class Urbanized_67Mustang_black :  Urbanized_67Mustang_orange{};
        class Urbanized_67Mustang_darkred :  Urbanized_67Mustang_orange{};
        class Urbanized_67Mustang_blue :  Urbanized_67Mustang_orange{};
    class red_ram_06_aqua {
        vItemSpace = 135;
        licenses[] = { {"driver"},{""},{""},{""} };
        price = 320000;
        textures[] = {};
    };
        class red_ram_06_black : class red_ram_06_aqua {};
        class red_ram_06_darkblue : class red_ram_06_aqua {};
        class red_ram_06_darkgreen : class red_ram_06_aqua {};
        class red_ram_06_darkred : class red_ram_06_aqua {};
        class red_ram_06_red : class red_ram_06_aqua {};
        class red_ram_06_purple : class red_ram_06_aqua {};
        class red_ram_06_pink : class red_ram_06_aqua {};
        class red_ram_06_orange : class red_ram_06_aqua {};
        class red_ram_06_green : class red_ram_06_aqua {};
        class red_ram_06_yellow : class red_ram_06_aqua {};
        class red_ram_06_white : class red_ram_06_aqua {};
    class Urbanized_427_black {
        vItemSpace = 15;
        licenses[] = { {"driver"},{""},{""},{""} };
        price = 565000;
        textures[] = {};
    };
    class Urbanized_427_blue : Urbanized_427_black{};
    class Urbanized_427_orange : Urbanized_427_black{};
    class Urbanized_427_pink : Urbanized_427_black{};
    class Urbanized_427_red : Urbanized_427_black{};
    class Urbanized_427_wed : Urbanized_427_black {
        price = 710000;
    };
    class Urbanized_427_white : Urbanized_427_black{};
    class Urbanized_427_yellow : Urbanized_427_black{};
    class A3L_Jailbus {
        vItemSpace = 20;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 100000;
        textures[] = {};
    };
    class Jonzie_Curtain {
        vItemSpace = 500;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 400000;
        textures[] = {};
    };
    class Jonzie_Curtain_Roadtrain : Jonzie_Curtain {
        vItemSpace = 350;
        price = 300000;
    };
    class Jonzie_Western {
        vItemSpace = 100;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 450000;
        textures[] = {};
    };
    class Jonzie_Superliner {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 750000;
        textures[] = {};
    };
    class EvoXSo1 {
        vItemSpace = 10;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 150000;
        textures[] = {};
    };
    class EvoXSo2 : EvoXSo1{};
    class EvoXSo3 : EvoXSo1{};
    class EvoXSo4 : EvoXSo1{};
    class S_PorscheRS_Black {
        vItemSpace = 10;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 450000;
        Textures[] = {};
    };
    class S_PorscheRS_Yellow : S_PorscheRS_Black {};
    class S_PorscheRS_White : S_PorscheRS_Black {};
    class Jonzie_Mini_Cooper {
        vItemSpace = 15;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 20000;
        textures[] = {};
    };

    class Jonzie_Mini_Cooper_R_spec {
        vItemSpace = 15;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 60000;
        textures[] = {};
    };

    class A3L_AmberLamps {
        vItemSpace = 30;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 60000;
        textures[] = {};
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 350;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 700;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class Jonzie_Raptor {
        vItemSpace = 115;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 100000;
        textures[] = {};
    }

    class A3L_Ferrari458black {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 870000;
        textures[] = {};
    };
    class A3L_Ferrari458white : A3L_Ferrari458black{};
    class A3L_Ferrari458red : A3L_Ferrari458black{};
    class A3L_Ferrari458blue : A3L_Ferrari458black{};
    
    class RDS_Golf4_civ_01 {
        vItemSpace = 35;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 25000;
        textures[] = {};
    };

    class A3L_VolvoS60RBlack {
        vItemSpace = 30;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 20000;
        textures[] = {};
    };

     class B_Heli_Light_01_stripped_F {
        vItemSpace = 90;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 275000;
        textures[] = {
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } }
        };
    };

    class B_Heli_Light_01_F {
        vItemSpace = 90;
        licenses[] = { {"pilot"}, {"cAir"}, {"mAir"}, {""} };
        price = 245000;
        textures[] = {
            { "Sheriff", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
            } },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "Digi Green", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
            { "EMS White", "med", {
                "#(argb,8,8,3)color(1,1,1,0.8)"
            } }
        };
    };

    class Jonzie_Box_Truck {
        vItemSpace = 400;
        vFuelSpace = 50000;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 500000;
        textures[] = {};
    };

    class A3L_Dumptruck {
        vItemSpace = 325;
        vFuelSpace = 50000;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 400000;
        textures[] = {};
    };
};
