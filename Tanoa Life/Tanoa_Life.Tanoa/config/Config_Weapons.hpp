/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Gun List";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 16500, 500, { "", "", -1 } },
            { "hgun_Pistol_heavy_02_F", "", 19850, -1, { "", "", -1 } },
            { "hgun_ACPC2_F", "", 11500, -1, { "", "", -1 } },
            { "hgun_P07_khk_F", "", 21000, -1, { "", "", -1 } }, //Apex DLC
            { "hgun_Pistol_01_F", "", 20000, -1, { "", "", -1 } } //Apex DLC
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25, 100, { "", "", -1 } },
            { "6Rnd_45ACP_Cylinder", "", 50, 100, { "", "", -1 } },
            { "9Rnd_45ACP_Mag", "", 45, 100, { "", "", -1 } },
            { "10Rnd_9x21_Mag", "", 75, 100, { "", "", -1 } } //Apex DLC - Had to guess this. Not referenced anywhere
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 2500, 100, { "", "", -1 } }
        };
    };

    class rebel {
        name = "Guerilla Outpost";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_TRG20_F", "", 100000, 2500, { "", "", -1 } },
            { "arifle_Katiba_F", "", 120000, 5000, { "", "", -1 } },
            { "srifle_DMR_01_F", "", 175000, -1, { "", "", -1 } },
            { "arifle_SDAR_F", "", 20000, 7500, { "", "", -1 } },
            { "arifle_AK12_F", "", 220000, 7500, { "", "", -1 } }, //Apex DLC
            { "arifle_AKS_F", "", 150000, 7500, { "", "", -1 } }, //Apex DLC
            { "arifle_AKM_F", "", 220000, 7500, { "", "", -1 } }, //Apex DLC
            { "arifle_ARX_blk_F", "", 150000, 7500, { "", "", -1 } }, //Apex DLC
            { "arifle_CTAR_blk_F", "", 185000, 5000, { "", "", -1 } }, //Apex DLC
            { "MMG_02_sand_F", "", 585000, 5000, { "", "", -1 } }, 
            { "srifle_DMR_05_tan_f", "", 385000, 5000, { "", "", -1 } } ,
            { "srifle_DMR_02_sniper_F", "", 385000, 5000, { "", "", -1 } },
            { "launch_RPG7_F", "", 1000000, 5000, { "", "", -1 } },
            { "Rangefinder", "", 150, -1, { "", "", -1 } },
            { "ItemGPS", "", 100, 45, { "", "", -1 } },
            { "ItemMap", "", 50, 35, { "", "", -1 } },
            { "ItemCompass", "", 50, 25, { "", "", -1 } },
            { "ItemWatch", "", 50, -1, { "", "", -1 } },
            { "FirstAidKit", "", 150, 65, { "", "", -1 } },
            { "NVGoggles", "", 2000, 980, { "", "", -1 } }
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 700, 100, { "", "", -1 } },
            { "30Rnd_762x39_Mag_F", "", 700, 100, { "", "", -1 } },
            { "30Rnd_545x39_Mag_F", "", 700, 100, { "", "", -1 } }, //Apex DLC
            { "30Rnd_65x39_caseless_green", "", 275, 100, { "", "", -1 } },
            { "10Rnd_762x54_Mag", "", 500, 100, { "", "", -1 } },
            { "20Rnd_556x45_UW_mag", "", 300, 100, { "", "", -1 } },
            { "30Rnd_580x42_Mag_F", "", 300, 100, { "", "", -1 } }, //Apex DLC
            { "130Rnd_338_Mag", "", 10000, 100, { "", "", -1 } },
            { "10Rnd_93x64_DMR_05_Mag", "", 1000, 100, { "", "", -1 } },
            { "10Rnd_338_Mag", "", 1000, 100, { "", "", -1 } },
            { "RPG7_F", "", 100000, 100, { "", "", -1 } }
        };
        accs[] = {
            { "optic_ACO_grn", "", 35000, 100, { "", "", -1 } },
            { "optic_Holosight", "", 36000, 100, { "", "", -1 } },
            { "optic_Hamr", "", 7500, 100, { "", "", -1 } },
            { "optic_LRPS", "", 75000, 100, { "", "", -1 } },
            { "optic_DMS", "", 25000, 100, { "", "", -1 } },
            { "optic_AMS", "", 45000, 100, { "", "", -1 } },
            { "optic_Arco", "", 30000, 100, { "", "", -1 } },
            { "acc_flashlight", "", 1000, 100, { "", "", -1 } },
            { "bipod_03_F_blk", "", 2500, 250, { "", "", -1}},
            { "bipod_02_F_tan", "", 2500, 250, { "", "", -1}}
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 1500, 500, { "", "", -1 } },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1, { "", "", -1 } },
            { "hgun_ACPC2_F", "", 4500, -1, { "", "", -1 } },
            { "hgun_PDW2000_F", "", 9500, -1, { "", "", -1 } }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25, 100, { "", "", -1 } },
            { "6Rnd_45ACP_Cylinder", "", 50, 100, { "", "", -1 } },
            { "9Rnd_45ACP_Mag", "", 45, 100, { "", "", -1 } },
            { "30Rnd_9x21_Mag", "", 75, 100, { "", "", -1 } }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 950, 100, { "", "", -1 } }
        };
    };

    //Basic Shops
    class genstore {
        name = "Tanoa General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1, { "", "", -1 } },
            { "ItemGPS", "", 100, 45, { "", "", -1 } },
            { "ItemMap", "", 50, 35, { "", "", -1 } },
            { "ItemCompass", "", 50, 25, { "", "", -1 } },
            { "ItemWatch", "", 50, -1, { "", "", -1 } },
            { "FirstAidKit", "", 150, 65, { "", "", -1 } },
            { "NVGoggles", "", 2000, 980, { "", "", -1 } },
            { "Chemlight_red", "", 300, -1, { "", "", -1 } },
            { "Chemlight_yellow", "", 300, 50, { "", "", -1 } },
            { "Chemlight_green", "", 300, 50, { "", "", -1 } },
            { "Chemlight_blue", "", 300, 50, { "", "", -1 } }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Tanoa Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1, { "", "", -1 } },
            { "ItemGPS", "", 500, 45, { "", "", -1 } },
            { "ItemMap", "", 250, 35, { "", "", -1 } },
            { "ItemCompass", "", 250, 25, { "", "", -1 } },
            { "ItemWatch", "", 250, -1, { "", "", -1 } },
            { "FirstAidKit", "", 750, 65, { "", "", -1 } },
            { "NVGoggles", "", 10000, 980, { "", "", -1 } },
            { "Chemlight_red", "", 1500, -1, { "", "", -1 } },
            { "Chemlight_yellow", "", 1500, 50, { "", "", -1 } },
            { "Chemlight_green", "", 1500, 50, { "", "", -1 } },
            { "Chemlight_blue", "", 1500, 50, { "", "", -1 } }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Tanoa Military Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1, { "", "", -1 } },
            { "Laserdesignator_01_khk_F", "", 150, -1, { "", "", -1 } },
            { "Laserbatteries", "", 50, -1, { "", "", -1 } },
            { "ItemGPS", "", 100, 45, { "", "", -1 } },
            { "FirstAidKit", "", 150, 65, { "", "", -1 } },
            { "NVGoggles", "", 2000, 980, { "", "", -1 } },
            { "B_UavTerminal", "", 500, 0, {"life_coplevel", "SCALAR", 11 } },
            { "HandGrenade_Stone", "Flashbang", 1700, -1, { "", "", -1 } },
            { "SmokeShellGreen", "Tear Gas", 2750, -1, { "life_coplevel", "SCALAR", 4 } },
            { "3Rnd_SmokeGreen_Grenade_shell", "Tear Gas", 3000, -1, {"life_coplevel", "SCALAR", 2} },
            { "Chemlight_blue", "", 150, 50, { "", "", -1 } },
            { "SmokeShellBlue", "", 100, -1, { "life_coplevel", "SCALAR", 1 } },
            { "SmokeShellOrange", "", 100, -1, { "life_coplevel", "SCALAR", 1 } },
            { "hgun_P07_snds_F", "Stun Pistol", 2000, 650, { "", "", -1 } },
            //{ "arifle_sdar_F", "Taser Rifle", 20000, 7500, { "", "", -1 } },
            { "hgun_P07_F", "Taser Pistol", 7500, 1500, { "", "", -1 } },
            { "hgun_ACPC2_F", "", 1500, -1, { "", "", -1 } },
            { "arifle_MX_khk_F", "", 35000, 0, { "", "", -1} },
            { "arifle_MX_F", "", 35000, 7500, {"", "", -1 } },
            { "arifle_MX_GL_khk_F", "", 30000, 0, {"life_coplevel", "SCALAR", 2 } },
            { "arifle_MXC_F", "", 30000, 5000, {"life_coplevel", "SCALAR", 3 } },
            { "arifle_MXC_khk_F", "", 30000, 0, {"life_coplevel", "SCALAR", 3 } },
            { "arifle_MXM_khk_F", "", 30000, 0, {"life_coplevel", "SCALAR", 4 } },
            { "arifle_SPAR_01_khk_F", "", 25000, 0, {"life_coplevel", "SCALAR", 5 } },
            { "arifle_SPAR_02_khk_F", "", 25000, 0, {"life_coplevel", "SCALAR", 5 } },
            { "arifle_SPAR_03_khk_F", "", 25000, 0, {"life_coplevel", "SCALAR", 6 } },
            { "srifle_LRR_tna_F", "", 150000, 0, {"life_coplevel", "SCALAR", 7 } },
            { "srifle_DMR_02_camo_F", "", 80000, 0, {"life_coplevel", "SCALAR", 7 } },
            { "SMG_05_F", "", 1000, 0, {"", "", -1 } },
            { "launch_O_Titan_F","", 150000, 20000, {"life_coplevel", "SCALAR", 5 } },
            { "launch_NLAW_F", "", 250000, 0, {"life_coplevel", "SCALAR", 4 } },
            { "DemoCharge_Remote_Mag", "", 20000, 2000, {"life_coplevel", "SCALAR", 2 } },
            { "srifle_EBR_F", "", 50000, 5000, {"life_coplevel", "SCALAR", 4} },
            { "srifle_DMR_03_F", "", 50000, 5000, {"life_coplevel", "SCALAR", 4 } },
            { "MMG_01_hex_F", "", 40000, 2000, {"life_coplevel", "SCALAR", 4 } }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 0, 0, { "", "", -1 } },
            { "9Rnd_45ACP_Mag", "", 10, 0, { "", "", -1 } },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45, 100, { "", "", -1 } },
            { "30Rnd_556x45_Stanag", "", 100, 0, { "", "", -1 } },
            { "30Rnd_65x39_caseless_mag", "", 100, 0, { "", "", -1 } },
            { "20Rnd_762x51_Mag", "", 50, 0, { "", "", -1 } },
            { "10Rnd_338_Mag", "", 50, 0, { "", "", -1 } },
            { "30Rnd_9x21_Mag_SMG_02", "", 50, 0, { "", "", -1 } },
            { "150Rnd_556x45_Drum_Mag_F", "", 50, 0, { "", "", -1 } },
            { "7Rnd_408_Mag", "", 0, 0, { "", "", -1 } },
            { "30Rnd_9x21_Mag", "", 0, 0, {"life_coplevel", "SCALAR", 2 } },
            { "9Rnd_45ACP_Mag", "", 0, 0, {"life_coplevel", "SCALAR", 3 } },
            { "20Rnd_650x39_Cased_Mag_F", "", 0, 0, {"life_coplevel", "SCALAR", 3 } }, //Apex DLC
            { "NLAW_F", "", 0, 0, {"life_coplevel", "SCALAR", 4 } },
            { "150Rnd_93x64_Mag", "",300, 10, {"life_coplevel", "SCALAR", 4 } },
            { "Titan_AA", "", 20000, {"life_coplevel", "SCALAR", 5} }
        };
        accs[] = {
            { "optic_NVS", "", 50000, 100, { "", "", -1 } },
            { "optic_ACO_grn", "", 3500, 100, { "", "", -1 } },
            { "optic_Holosight", "", 3600, 100, { "", "", -1 } },
            { "optic_Hamr", "", 7500, 100, { "", "", -1 } },
            { "optic_LRPS", "", 7500, 100, { "", "", -1 } },
            { "optic_DMS", "", 2500, 100, { "", "", -1 } },
            { "optic_AMS", "", 4500, 100, { "", "", -1 } },
            { "optic_Arco", "", 3000, 100, { "", "", -1 } },
            { "optic_SOS", "", 5000, 300, { "", "", -1} },
            { "optic_MRCO", "", 3000, 200, { "", "", -1} },
            { "optic_ERCO_khk_F", "", 3000, 100, { "", "", -1 } },
            { "muzzle_snds_B_khk_F", "", 3500, 100, { "", "", -1 } },
            { "acc_pointer_IR", "", 1000, 100, { "", "", -1 } },
            { "acc_flashlight", "", 1000, 100, { "", "", -1 } }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, 45, { "", "", -1 } },
            { "Binocular", "", 150, -1, { "", "", -1 } },
            { "FirstAidKit", "", 150, 65, { "", "", -1 } },
            { "NVGoggles", "", 1200, 980, { "", "", -1 } }
        };
        mags[] = {};
        accs[] = {};
    };
};
