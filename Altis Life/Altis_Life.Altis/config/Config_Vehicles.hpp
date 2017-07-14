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
    class civ_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "C_Hatchback_01_F", { "", "", -1 } },
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
            { "C_Hatchback_01_sport_F", { "", "", -1 } },
            { "C_Van_01_transport_F", { "", "", -1 } }
        };
    };

    class kart_shop {
        side = "civ";
        vehicles[] = {
            { "C_Kart_01_Blu_F", { "", "", -1 } },
            { "C_Kart_01_Fuel_F", { "", "", -1 } },
            { "C_Kart_01_Red_F", { "", "", -1 } },
            { "C_Kart_01_Vrana_F", { "", "", -1 } }
        };
    };

    class civ_truck {
        side = "civ";
        vehicles[] = {
            { "C_Van_01_box_F", { "", "", -1 } },
            { "I_Truck_02_transport_F", { "", "", -1 } },
            { "I_Truck_02_covered_F", { "", "", -1 } },
            { "B_Truck_01_transport_F", { "", "", -1 } },
            { "O_Truck_03_covered_F", { "", "", -1 } },
            { "B_Truck_01_box_F", { "", "", -1 } },
            { "O_Truck_03_device_F", { "", "", -1 } },
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "", "", -1 } },
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "I_Heli_Transport_02_F", { "", "", -1} },
            { "B_Heli_Transport_03_unarmed_F", { "", "", -1} },
            { "C_Plane_Civil_01_F", { "", "", -1} },
            { "C_Plane_Civil_01_racing_F", { "", "", -1 } }

        };
    };

     class civ_ship {
        side = "civ";
        vehicles[] = {
            { "C_Rubberboat", { "", "", -1 } },
            { "C_Boat_Civil_01_F", { "", "", -1 } },
            { "C_Boat_Civil_01_rescue_F", {"", "", -1} },
            { "B_Lifeboat", { "", "", -1} },
            { "C_Boat_Transport_02_F", { "", "", -1} },
            { "B_SDV_01_F", { "", "", -1 } }
        };
    };

    class reb_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "B_G_Offroad_01_F", { "", "", -1 } },
            { "O_MRAP_02_F", { "", "", -1 } },
            { "I_MRAP_03_F", {"", "", -1 } }, 
            { "B_Heli_Light_01_stripped_F", { "", "", -1 } },
            { "B_G_Offroad_01_armed_F", { "", "", -1 } },
            { "O_Heli_Transport_04_F", { "", "", -1} },
            { "I_Heli_light_03_unarmed_F", { "", "", -1} }
        };
    };

    class med_shop {
        side = "med";
        vehicles[] = {
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", {"life_gigmed61", "SCALAR", 1} },
            { "C_Hatchback_01_sport_F", { "life_gigmed61", "SCALAR", 3} },
            { "O_Truck_03_medical_F", { "life_gigmed61", "SCALAR", 3 } },
            { "B_Truck_01_medical_F", { "life_gigmed61", "SCALAR", 3 } },
            { "I_Truck_02_medical_F", { "life_gigmed61", "SCALAR", 4 } }
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
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
            { "I_MRAP_03_F", { "life_gigcoplevel25", "SCALAR", 2} },
            { "B_MRAP_01_F", { "life_gigcoplevel25", "SCALAR", 4} },
            { "C_Hatchback_01_sport_F", { "life_gigcoplevel25", "SCALAR", 5 } }
        };
    };

    class cop_air {
        side = "cop";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "life_gigcoplevel25", "SCALAR", 4 } },
            { "B_Heli_Transport_01_F", { "life_gigcoplevel25", "SCALAR", 5 } }
        };
    };

    class cop_ship {
        side = "cop";
        vehicles[] = {
            { "B_Boat_Transport_01_F", { "", "", -1 } },
            { "C_Boat_Civil_01_police_F", { "", "", -1 } },
            { "B_Boat_Armed_01_minigun_F", { "life_gigcoplevel25", "SCALAR", 3 } }
        };
    };
    
    class donor_vehicle {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "life_donorLevel", "SCALAR", 1 } },
            { "C_SUV_01_F", {"life_donorLevel", "SCALAR", 1} },
            { "C_Offroad_01_F",{"life_donorLevel", "SCALAR", 1} },
            { "B_Truck_01_box_F", { "life_donorLevel", "SCALAR", 1 } },
            { "C_Truck_02_covered_F",{"life_donorLevel","SCALAR", 1} },
            { "B_Heli_Light_01_F", { "life_donorLevel", "SCALAR", 1} },
            { "B_Heli_Transport_03_unarmed_F", { "life_donorLevel", "SCALAR", 1} },
            { "I_Heli_Transport_02_F", { "life_donorLevel", "SCALAR", 1} },
            { "O_Heli_Light_02_unarmed_F", { "life_donorLevel", "SCALAR", 3} },
            { "I_Heli_light_03_unarmed_F", { "life_donorLevel", "SCALAR", 3} }
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

    class I_Truck_02_medical_F {
        vItemSpace = 150;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 25000;
        textures[] = {};
    };

    class O_Truck_03_medical_F {
        vItemSpace = 200;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 45000;
        textures[] = {};
    };

    class B_Truck_01_medical_F {
        vItemSpace = 250;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 60000;
        textures[] = {};
    };

    class C_Rubberboat {
        vItemSpace = 45;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 5000;
        textures[] = { };
    };

    class B_Heli_Transport_01_F {
        vItemSpace = 200;
        licenses[] = { {""}, {"cAir"}, {""}, {""} };
        price = 200000;
        textures[] = {};
    };

    class B_MRAP_01_hmg_F {
        vItemSpace = 100;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 750000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            },"" }
        };
    };
    
    class I_MRAP_03_F {
        vItemSpace = 50;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 500000;
        textures[] = {
            { "Reb Black", "civ", {
                "textures\vehicles\rebStrider.jpg"
            },"" },
            { "Cop", "cop", {
                "textures\cop\copstrider.jpg"
            },"" }
        };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 75000;
        textures[] = { };
    };

    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 3000;
        textures[] = { };
    }; 

    class O_Truck_03_device_F {
        vItemSpace = 350;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 450000;
        textures[] = { };
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

    class B_G_Offroad_01_F {
        vItemSpace = 65;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 12500;
        textures[] = { };
    };

    class B_G_Offroad_01_armed_F {
        vItemSpace = 65;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 750000;
        textures[] = { };
    };

    class C_Boat_Civil_01_F {
        vItemSpace = 85;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 22000;
        textures[] = { };
    };
    
    class C_Boat_Civil_01_rescue_F {
        vItemSpace = 85;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 22000;
        textures[] = { };
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 20000;
        textures[] = { };
    };

    class B_Truck_01_box_F {
        vItemSpace = 800;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 950000;
        textures[] = { 
            { "Default", "civ", {
                "\A3\soft_f_beta\truck_01\data\truck_01_ext_01_co.paa"
            }, "" },
            { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            { "Granite", "donor", {
                "textures\vehicles\Donor2\M1.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Sea", "donor", {
                "textures\vehicles\Donor2\M2.jpg"
            }, "call life_donorLevel >= 2" },
            { "Crystal", "donor", {
                "textures\vehicles\Donor2\M3.jpg"
            }, "call life_donorLevel >= 2" },
            { "Bubbles", "donor", {
                "textures\vehicles\Donor2\M4.jpg"
            }, "call life_donorLevel >= 2" },
            { "Feathers", "donor", {
                "textures\vehicles\Donor2\M5.jpg"
            }, "call life_donorLevel >= 2" },
            { "Honey Comb", "donor", {
                "textures\vehicles\Donor2\M6.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Space", "donor", {
                "textures\vehicles\Donor2\M7.jpg"
            }, "call life_donorLevel >= 2" }
        };
    };

    class B_Truck_01_transport_F {
        vItemSpace = 325;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 275000;
        textures[] = { };
    };

    class O_MRAP_02_F {
        vItemSpace = 60;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 150000;
        textures[] = { };
    };

    class C_Offroad_01_F {
        vItemSpace = 65;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 12500;
        textures[] = {
            { "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            },"" },
            { "Yellow", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            },"" },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            },"" },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            },"" },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            },"" },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            },"" },
            { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            { "Granite", "donor", {
                "textures\vehicles\Donor2\M1.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Sea", "donor", {
                "textures\vehicles\Donor2\M2.jpg"
            }, "call life_donorLevel >= 2" },
            { "Crystal", "donor", {
                "textures\vehicles\Donor2\M3.jpg"
            }, "call life_donorLevel >= 2" },
            { "Bubbles", "donor", {
                "textures\vehicles\Donor2\M4.jpg"
            }, "call life_donorLevel >= 2" },
            { "Feathers", "donor", {
                "textures\vehicles\Donor2\M5.jpg"
            }, "call life_donorLevel >= 2" },
            { "Honey Comb", "donor", {
                "textures\vehicles\Donor2\M6.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Space", "donor", {
                "textures\vehicles\Donor2\M7.jpg"
            }, "call life_donorLevel >= 2" },
            { "Camo", "donor", {
                "textures\vehicles\donor3\offroad1.jpg"
            }, "call life_donorLevel >= 3"},
            { "Taxi", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            },"" },
            { "Police", "cop", {
                "textures\cop\copOffroad.jpg"
            },"" },
            { "Medical", "med", {
                "textures\medic\medicOffroad.jpg"
            }, "" }
        };
    };

    class C_Kart_01_Blu_F {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 15000;
        textures[] = {};
    };
/*
To edit another information in this classes you can use this exemple.
class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{
    vItemSpace = 40;
    price = ;
};

will modify the virtual space and the price of the vehicle, but other information such as license and textures will pick up the vehicle declare at : Vehicle {};
*/
    class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{}; // Get all information of C_Kart_01_Blu_F
    class C_Kart_01_Red_F  : C_Kart_01_Blu_F{};
    class C_Kart_01_Vrana_F : C_Kart_01_Blu_F{};

    class C_Hatchback_01_sport_F {
        vItemSpace = 45;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 40000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            },"" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            },"" },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            },"" },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            },"" },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            },"" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            },"" },
            { "Police", "cop", {
                "textures\cop\copHatch.jpg"
            },"" },
            { "Highway Black", "cop", {
                "textures\cop\blackvic.jpg"    
            }, "" },
            { "Highway White", "cop", {
                "textures\cop\whiteVic.jpg"    
            }, "" },
            { "EMS", "med", {
                "textures\medic\medHatch.jpg"
            },"" }
        };
    };

    class B_Quadbike_01_F {
        vItemSpace = 25;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2500;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            },"" },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            },"" },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            },"" },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            },"" },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            },"" },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            },"" },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            },"" },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            },"" },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            },"" },
            { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            { "Granite", "donor", {
                "textures\vehicles\Donor2\M1.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Sea", "donor", {
                "textures\vehicles\Donor2\M2.jpg"
            }, "call life_donorLevel >= 2" },
            { "Crystal", "donor", {
                "textures\vehicles\Donor2\M3.jpg"
            }, "call life_donorLevel >= 2" },
            { "Bubbles", "donor", {
                "textures\vehicles\Donor2\M4.jpg"
            }, "call life_donorLevel >= 2" },
            { "Feathers", "donor", {
                "textures\vehicles\Donor2\M5.jpg"
            }, "call life_donorLevel >= 2" },
            { "Honey Comb", "donor", {
                "textures\vehicles\Donor2\M6.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Space", "donor", {
                "textures\vehicles\Donor2\M7.jpg"
            }, "call life_donorLevel >= 2" }
        };
    };

    class I_Truck_02_covered_F {
        vItemSpace = 350;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 150000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            },"" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            },"" }
        };
    };

    class I_Truck_02_transport_F {
        vItemSpace = 300;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 100000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            },"" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            },"" }
        };
    };

    class O_Truck_03_covered_F {
        vItemSpace = 300;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 250000;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 40;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 9500;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            },"" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            },"" },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            },"" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            },"" },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            },"" },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            },"" },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            },"" },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            },"" },
             { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" }
        };
    };

    class C_SUV_01_F {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 30000;
        textures[] = {
            { "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            },"" },
            { "Silver", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            },"" },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            },"" },
             { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            { "Granite", "donor", {
                "textures\vehicles\Donor2\M1.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Sea", "donor", {
                "textures\vehicles\Donor2\M2.jpg"
            }, "call life_donorLevel >= 2" },
            { "Crystal", "donor", {
                "textures\vehicles\Donor2\M3.jpg"
            }, "call life_donorLevel >= 2" },
            { "Bubbles", "donor", {
                "textures\vehicles\Donor2\M4.jpg"
            }, "call life_donorLevel >= 2" },
            { "Feathers", "donor", {
                "textures\vehicles\Donor2\M5.jpg"
            }, "call life_donorLevel >= 2" },
            { "Honey Comb", "donor", {
                "textures\vehicles\Donor2\M6.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Space", "donor", {
                "textures\vehicles\Donor2\M7.jpg"
            }, "call life_donorLevel >= 2" },
            { "Li Mafu", "donor", {
                "textures\vehicles\donor3\suv1.jpg"
            },"call life_donorLevel >= 3" },
            { "Doodle", "donor",{
                "textures\vehicles\donor3\suv2.jpg"
            }, "call life_donorLevel >= 3 "},
            { "Blocks", "donor", {
                "textures\vehicles\donor3\suv3.jpg"
            }, "call life_donorLevel >= 3"},
            { "Demons", "donor", {
                "textures\vehicles\donor3\suv4.jpg"
            }, "call life_donorLevel >= 3"},
            { "Leopard", "donor", {
                "textures\vehicles\donor3\suv5.jpg"
            }, "call life_donorLevel >= 3"},
            { "Tribal Warfare", "donor", {
                "textures\vehicles\donor3\suv6.jpg"
            }, "call life_donorLevel >= 3"},
            { "Voodoo", "donor", {
                "textures\vehicles\donor3\suv7.jpg"
            }, "call life_donorLevel >= 3"},
            { "Police", "cop", {
                "textures\cop\cop_suv1.jpg"
            },"" }, 
            { "Highway Orange", "cop", {
                "textures\cop\highPatrolS.jpg"    
            }, "" },
            { "Highway Blue", "cop", {
                "textures\cop\High1.jpg"    
            }, "" },
            { "Undercover Orange", "cop", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            },"license_cop_detective" },
            { "Undercover Silver", "cop", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            },"license_cop_detective" },
            { "EMS", "med", {
                "textures\medic\medicSuv.jpg"
            },"" }
        };
    };

    class C_Van_01_transport_F {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 45000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            },"" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            },"" }
        };
    };

    class C_Van_01_box_F {
        vItemSpace = 150;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 60000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            },"" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            },"" }
        };
    };

     class B_Heli_Light_01_stripped_F {
        vItemSpace = 90;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 275000;
        textures[] = {
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            },"" }
        };
    };

    class B_Heli_Light_01_F {
        vItemSpace = 90;
        licenses[] = { {"pilot"}, {"cAir"}, {"mAir"}, {""} };
        price = 245000;
        textures[] = {
            { "Police", "cop", {
                "textures\cop\copHum.jpg"
            },"" },
            { "Sheriff", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
            },"" },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            },"" },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            },"" },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            },"" },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            },"" },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            },"" },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            },"" },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            },"" },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            },"" },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            },"" },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            },"" },
             { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            { "Granite", "donor", {
                "textures\vehicles\Donor2\M1.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Sea", "donor", {
                "textures\vehicles\Donor2\M2.jpg"
            }, "call life_donorLevel >= 2" },
            { "Crystal", "donor", {
                "textures\vehicles\Donor2\M3.jpg"
            }, "call life_donorLevel >= 2" },
            { "Bubbles", "donor", {
                "textures\vehicles\Donor2\M4.jpg"
            }, "call life_donorLevel >= 2" },
            { "Feathers", "donor", {
                "textures\vehicles\Donor2\M5.jpg"
            }, "call life_donorLevel >= 2" },
            { "Honey Comb", "donor", {
                "textures\vehicles\Donor2\M6.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Space", "donor", {
                "textures\vehicles\Donor2\M7.jpg"
            }, "call life_donorLevel >= 2" },
            {"Sea Breeze", "donor", {
                "textures\vehicles\donor3\hummin.jpg"
            }, "call life_donorLevel >= 3"},
            {"Fire Tribal", "donor", {
                "textures\vehicles\donor3\hummin3.jpg"
            }, "call life_donorLevel >= 3" },
            {"Demon", "donor", {
                "textures\vehicles\donor3\hummin4.jpg"
            }, "call life_donorLevel >= 3" },
            { "Wolf Pack", "donor", {
                "textures\vehicles\donor3\hummin5.jpg"
            }, "call life_donorLevel >= 3" },
            { "Fire Flower", "donor", {
                "textures\vehicles\donor3\hummin6.jpg"
            }, "call life_donorLevel >= 3" },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            },"" },
            { "EMS", "med", {
                "textures\medic\medLittleBird.jpg"
            },"" }
        };
    };

    class C_Heli_Light_01_civil_F : B_Heli_Light_01_F {
        vItemSpace = 75;
        price = 245000;
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 210;
        licenses[] = { {"pilot" }, {""}, {"mAir"}, {""} };
        price = 750000;
        textures[] = {
            { "EMS", "med", {
                "textures\medic\medOrca.jpg"
            },"" },
            { "Rust Camo", "donor", {
                "textures\vehicles\donor3\orca2.jpg"
            }, "call life_donorLevel >= 3" },
            { "Pink Camo", "donor", {
                "textures\vehicles\donor3\orca3.jpg"
            }, "call life_donorLevel >= 3" }
        };
    };

    class B_SDV_01_F {
        vItemSpace = 50;
        licenses[] = { {"boat"}, {"cg"}, {""}, {""} };
        price = 150000;
        textures[] = {};
    };

    class B_MRAP_01_F {
        vItemSpace = 50;
        vFuelSpace = 5000;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 100000;
        textures[] = {
            { "Police", "civ", {
                "textures\cop\hunter_front.jpg",
                "textures\cop\hunter_back.jpg"
            },"" }
        };
    };

    class B_Heli_Transport_03_unarmed_F {
        vItemSpace = 600;
        vFuelSpace = 20000;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 1800000;
        textures[] = {
            {"Default", "civ", {
                "\A3\air_f_heli\heli_transport_03\data\heli_transport_03_ext01_black_co.paa",
                "\A3\air_f_heli\heli_transport_03\data\heli_transport_03_ext02_black_co.paa"
            }, ""},
            { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg",
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg",
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg",
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg",
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg",
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg",
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg",
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg",
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg",
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg",
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg",
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg",
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg",
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg",
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg",
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            { "Granite", "donor", {
                "textures\vehicles\Donor2\M1.jpg",
                "textures\vehicles\Donor2\M1.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Sea", "donor", {
                "textures\vehicles\Donor2\M2.jpg",
                "textures\vehicles\Donor2\M2.jpg"
            }, "call life_donorLevel >= 2" },
            { "Crystal", "donor", {
                "textures\vehicles\Donor2\M3.jpg",
                "textures\vehicles\Donor2\M3.jpg"
            }, "call life_donorLevel >= 2" },
            { "Bubbles", "donor", {
                "textures\vehicles\Donor2\M4.jpg",
                "textures\vehicles\Donor2\M4.jpg"
            }, "call life_donorLevel >= 2" },
            { "Feathers", "donor", {
                "textures\vehicles\Donor2\M5.jpg",
                "textures\vehicles\Donor2\M5.jpg"
            }, "call life_donorLevel >= 2" },
            { "Honey Comb", "donor", {
                "textures\vehicles\Donor2\M6.jpg",
                "textures\vehicles\Donor2\M6.jpg"
            }, "call life_donorLevel >= 2" },
            { "Deep Space", "donor", {
                "textures\vehicles\Donor2\M7.jpg",
                "textures\vehicles\Donor2\M7.jpg"
            }, "call life_donorLevel >= 2" },            
            {"Galaxy", "donor", {
                "textures\vehicles\donor3\huronf1.jpg",
                "textures\vehicles\donor3\huronb1.jpg"
            }, "call life_donorLevel >= 3" },
            {"Red Camo", "donor", {
                "textures\vehicles\donor3\huronf2.jpg",
                "textures\vehicles\donor3\huronb2.jpg"
            }, "call life_donorLevel >= 3" }
        };
    };

    class I_Heli_Transport_02_F {
        vItemSpace = 450;
        vFuelSpace = 15000;
        licenses[] = {{""}, {""}, {""}, {""} };
        price = 650000;
        textures[] = {
            { "Dahoman,", "civ", {
                "\A3\air_f_beta\heli_transport_02\data\skins\heli_transport_02_1_dahoman_co",
                "\A3\air_f_beta\heli_transport_02\data\skins\heli_transport_02_2_dahoman_co",
                "\A3\air_f_beta\heli_transport_02\data\skins\heli_transport_02_3_dahoman_co"
            },"" },
            { "Ion", "civ", {
                "\A3\air_f_beta\heli_transport_02\data\skins\heli_transport_02_1_ion_co",
                "\A3\air_f_beta\heli_transport_02\data\skins\heli_transport_02_2_ion_co",
                "\A3\air_f_beta\heli_transport_02\data\skins\heli_transport_02_3_ion_co"
            },"" },
            { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg",
                "textures\vehicles\Donor1\aqua.jpg",
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg",
                "textures\vehicles\Donor1\babyBlue.jpg",
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg",
                "textures\vehicles\Donor1\blueGrad.jpg",
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg",
                "textures\vehicles\Donor1\brown.jpg",
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg",
                "textures\vehicles\Donor1\dpurple.jpg",
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg",
                "textures\vehicles\Donor1\green.jpg",
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg",
                "textures\vehicles\Donor1\hotPink.jpg",
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg",
                "textures\vehicles\Donor1\lime.jpg",
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg",
                "textures\vehicles\Donor1\magenta.jpg",
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg",
                "textures\vehicles\Donor1\orange.jpg",
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg",
                "textures\vehicles\Donor1\pinkGrad.jpg",
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg",
                "textures\vehicles\Donor1\purple.jpg",
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg",
                "textures\vehicles\Donor1\rose.jpg",
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg",
                "textures\vehicles\Donor1\roseGold.jpg",
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg",
                "textures\vehicles\Donor1\turquoise.jpg",
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            {"Leaves", "donor", {
                "textures\vehicles\donor3\mohawkf1.jpg",
                "textures\vehicles\donor3\mohawkm1.jpg",
                "Textures\vehicles\donor3\mohawkb1.jpg"
            }, "call life_donorLevel >= 3" },
            {"Tribal", "donor", {
                "textures\vehicles\donor3\mohawkf2.jpg",
                "textures\vehicles\donor3\mohawkm2.jpg",
                "Textures\vehicles\donor3\mohawkb2.jpg"
            }, "call life_donorLevel >= 3" },
            {"Green Leaves", "donor", {
                "textures\vehicles\donor3\mohawkf3.jpg",
                "textures\vehicles\donor3\mohawkm3.jpg",
                "Textures\vehicles\donor3\mohawkb3.jpg"
            }, "call life_donorLevel >= 3" },
            {"Sea", "donor", {
                "textures\vehicles\donor3\mohawkf4.jpg",
                "textures\vehicles\donor3\mohawkm4.jpg",
                "Textures\vehicles\donor3\mohawkb4.jpg"
            }, "call life_donorLevel >= 3" }
        };
    };

    class C_Plane_Civil_01_racing_F {
        vItemSpace = 50;
        vFuelSpace = 2000;
        licenses[] = {{""},{""},{""},{""} };
        price = 500000;
        texures[] = {};
    };

    class C_Plane_Civil_01_F {
        vItemSpace = 50;
        vFuelSpace = 2000;
        licenses[] = {{""},{""},{""},{""} };
        price = 500000;
        texures[] = {};
    };

    class B_Lifeboat {
        vItemSpace = 20;
        vFuelSpace = 5000;
        licenses[] = {{"boat"},{""},{""},{""} };
        price = 45000;
        textures[] = {};
    };

    class C_Boat_Transport_02_F {
        vItemSpace = 50;
        vFuelSpace = 8000;
        licenses[] = {{"boat"},{""},{""},{""} };
        price = 100000;
        textures[] = {};
    };

    class O_Heli_Transport_04_F {
        vItemSpace = 200;
        vFuelSpace = 10000;
        licenses[] = {{"rebel"},{""},{""},{""}};
        price = 550000;
        textures[] = {};
    };

    class C_Truck_02_covered_F {
        vItemSpace = 350;
        vFuelSpace = 5000;
        licenses[] = {{"trucking"},{""},{""},{""}};
        price = 150000;
        textures[] = {
            { "Aqua", "donor", {
                "textures\vehicles\Donor1\aqua.jpg"
            }, "call life_donorLevel >= 1" },
            { "Baby Blue", "donor", {
                "textures\vehicles\Donor1\babyBlue.jpg"
            }, "call life_donorLevel >= 1" },
            { "Aqua Gradient", "donor", {
                "textures\vehicles\Donor1\blueGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Brown", "donor", {
                "textures\vehicles\Donor1\brown.jpg"
            }, "call life_donorLevel >= 1" },
            { "Dark Purple", "donor", {
                "textures\vehicles\Donor1\dpurple.jpg"
            }, "call life_donorLevel >= 1" },
            { "Green", "donor", {
                "textures\vehicles\Donor1\green.jpg"
            }, "call life_donorLevel >= 1" },
            { "Hot Pink", "donor", {
                "textures\vehicles\Donor1\hotPink.jpg"
            }, "call life_donorLevel >= 1" },
            { "Lime", "donor", {
                "textures\vehicles\Donor1\lime.jpg"
            }, "call life_donorLevel >= 1" },
            { "Magenta", "donor", {
                "textures\vehicles\Donor1\magenta.jpg"
            }, "call life_donorLevel >= 1" },
            { "Orange", "donor", {
                "textures\vehicles\Donor1\orange.jpg"
            }, "call life_donorLevel >= 1" },
            { "Pink Orange", "donor", {
                "textures\vehicles\Donor1\pinkGrad.jpg"
            }, "call life_donorLevel >= 1" },
            { "Purple", "donor", {
                "textures\vehicles\Donor1\purple.jpg"
            }, "call life_donorLevel >= 1"},
            { "Rose", "donor", {
                "textures\vehicles\Donor1\rose.jpg"
            }, "call life_donorLevel >= 1" },
            { "Rose Gold", "donor", {
                "textures\vehicles\Donor1\roseGold.jpg"
            }, "call life_donorLevel >= 1" },
            { "Turquoise", "donor", {
                "textures\vehicles\Donor1\turquoise.jpg"
            }, "call life_donorLevel >= 1" },
            {"Rusty Cab", "donor", {
                "textures\vehicles\donor3\zamakf1.jpg"
            }, "call life_donorLevel >= 3" }
        };
    };
    class I_Heli_light_03_unarmed_F {
        vItemSpace = 100;
        licenses[] = {{"rebel"},{""},{""},{""}};
        price = 700000;
        textures[] = {
            {"Rebel", "civ", {
                "\A3\air_f_epb\heli_light_03\Data\heli_light_03_base_co.paa"
            }, ""},
            {"Black Camo", "donor", {
                "textures\vehicles\donor3\hellcat.jpg"
            }, "call life_donorLevel >= 3" },
            {"Desert Camo", "donor", {
                "textures\vehicles\donor3\hellcat1.jpg"
            }, "call life_donorLevel >= 3" },
            {"Blue Camo", "donor", {
                "textures\vehicles\donor3\hellcat2.jpg"
            }, "call life_donorLevel >= 3" }
        };
    };
};
