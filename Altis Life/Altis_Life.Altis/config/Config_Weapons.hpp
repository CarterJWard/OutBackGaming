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
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 6500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 },
            { "hgun_ACPC2_F", "", 11500, -1 },
            { "hgun_PDW2000_F", "", 20000, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 2500 }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Pistol_heavy_01_F", "", 15000, 2000 },
            { "arifle_TRG20_F", "", 25000, 2500 },
            { "arifle_Katiba_F", "", 30000, 5000 },
            { "arifle_Mk20_F", "", 35000, 5000 },
            { "srifle_DMR_01_F", "", 50000, 6000 },
            { "arifle_SDAR_F", "", 20000, 7500 },
            { "arifle_AK12_F", "", 90000, 10000 },
            { "srifle_EBR_F", "", 100000, 10000 },
            { "MMG_01_hex_F", "", 900000, 50000 },
            { "LMG_Mk200_F", "", 600000, 45000 },
            { "MMG_02_camo_F", "", 700000, 100000 },
            { "LMG_Zafir_F", "", 750000, 49000 },
            { "srifle_DMR_06_olive_F", "", 150000, 20000 },
            { "srifle_DMR_02_sniper_F", "", 650000, 60000 },
            { "srifle_DMR_03_khaki_F", "", 70000, 10000 },
            { "srifle_DMR_04_Tan_F", "", 550000, 70000 },
            { "srifle_DMR_05_hex_F", "", 600000, 100000 },
            { "srifle_LRR_F", "", 1100000, 100000 },
            { "srifle_GM6_F", "", 1300000, 120000 },
            { "SatchelCharge_Remote_Mag", "Explosive Device", 150000, -1 }
        };
        mags[] = {
            { "11Rnd_45ACP_Mag", "", 150 },
            { "30Rnd_556x45_Stanag", "", 300 },
            { "30Rnd_65x39_caseless_green", "", 275 },
            { "10Rnd_762x54_Mag", "", 500 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "30Rnd_762x39_Mag_F", "", 650},
            { "150Rnd_93x64_Mag", "", 4500 },
            { "200Rnd_65x39_cased_Box", "", 1500 },
            { "150Rnd_762x54_Box", "", 3000 },
            { "7Rnd_408_Mag", "", 4500 },
            { "20Rnd_762x51_Mag", "", 4600 },
            { "5Rnd_127x108_Mag", "", 5000 },
            { "5Rnd_127x108_APDS_Mag", "GM6 Headpoppers", 10000 },
            { "10Rnd_338_Mag", "", 7000 },
            { "10Rnd_127x54_Mag", "", 5000 },
            { "10Rnd_93x64_DMR_05_Mag", "", 5000 },
            { "130Rnd_338_Mag", "", 6000 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 7500 },
            { "acc_flashlight", "", 1000 },
            { "muzzle_snds_M", "", 20000 },
            { "optic_DMS", "", 30000 },
            { "optic_LRPS", "", 200000 },
            { "optic_AMS", "", 70000 }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 1500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1 },
            { "hgun_ACPC2_F", "", 4500, -1 },
            { "hgun_PDW2000_F", "", 9500, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 950 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Recruit Police Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_sdar_F", "Taser Rifle", 20000, 2000 },
            { "hgun_P07_snds_F", "Stun Pistol", 5000, 650 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 }
        };
        accs[] = {
            { "muzzle_snds_L", "", 650 }
        };
    };

    class cop_cadet {
        name = "Prob.Constable Weapon Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "SMG_02_ACO_F", "", 30000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 4000, 650 },
            { "arifle_sdar_F", "Taser Rifle", 15000, 1000 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[] = {};
        accs[] = {};
    };

    class cop_constable {
        name = "Constable Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "SMG_02_ACO_F", "", 25000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 12000, 1000 },
            { "arifle_MX_Black_F", "", 50000, 1000},
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "muzzle_snds_H", "", 20000 , 2000 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 500},
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[] = {};
        accs[] = {};
    };

    class cop_snrConstable {
        name = "Senior Constable Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 20000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 25000, 1000},
            { "arifle_CTAR_blk_F", "", 35000, 3000 },
            { "arifle_MXM_Black_F", "", 40000, 5000 },
            { "srifle_EBR_F", "", 80000, 2000},
            { "srifle_DMR_02_F", "",150000, 10000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "muzzle_snds_H", "", 10000, 1000},
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 500, 100 },
            { "30Rnd_580x42_Mag_F", "", 2000, 100 },
            { "20Rnd_762x51_Mag", "", 3000, 100 },
            { "10Rnd_338_Mag", "", 5000, 500 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_sergeant {
        name = "Sergeant Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 20000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 20000, 3000 },
            { "arifle_MXM_Black_F", "", 20000, 5000 },
            { "srifle_EBR_F", "", 70000, 2000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 20000, 1000 },
            { "optic_AMS", "", 50000, 2000 },
            { "muzzle_snds_H", "", 7000, 1000},
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 3000, 200 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_incSergeant {
        name = "Inc. Sergeant Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 20000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 20000, 3000 },
            { "arifle_MXM_Black_F", "", 20000, 5000 },
            { "srifle_EBR_F", "", 50000, 2000 },
            { "srifle_DMR_03_F", "", 80000, 5000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 15000, 1000 },
            { "optic_AMS", "", 40000, 2000 },
            { "optic_LRPS", "", 100000, 5000 },
            { "muzzle_snds_H", "", 7000, 1000},
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 200 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_snrSergeant {
        name = "Senior Sergeant Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 15000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 20000, 3000 },
            { "arifle_MXM_Black_F", "", 20000, 5000 },
            { "srifle_EBR_F", "", 35000, 2000 },
            { "srifle_DMR_03_F", "", 65000, 5000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 15000, 1000 },
            { "optic_AMS", "", 40000, 2000 },
            { "optic_LRPS", "", 100000, 5000 },
            { "muzzle_snds_H", "", 7000, 1000},
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 75000},
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 200 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles_OPFOR", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_inspector {
        name = "Inspector Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 10000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 10000, 3000 },
            { "arifle_MXM_Black_F", "", 15000, 5000 },
            { "srifle_EBR_F", "", 35000, 2000 },
            { "srifle_DMR_03_F", "", 65000, 5000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 10000, 1000 },
            { "optic_AMS", "", 30000, 2000 },
            { "optic_LRPS", "", 100000, 5000 },
            { "muzzle_snds_H", "", 5000, 1000},
            { "muzzle_snds_B", "", 20000, 1000 },
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 75000},
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 200 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles_OPFOR", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_cheifInspector {
        name = "Chief Inspector Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 10000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 10000, 3000 },
            { "arifle_MXM_Black_F", "", 15000, 5000 },
            { "srifle_EBR_F", "", 35000, 2000 },
            { "srifle_DMR_03_F", "", 65000, 5000 },
            { "srifle_DMR_02_F", "", 120000, 2000 },
            { "LMG_Mk200_F", "", 300000, 10000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 10000, 1000 },
            { "optic_AMS", "", 30000, 2000 },
            { "optic_LRPS", "", 100000, 5000 },
            { "optic_Holosight", "", 5000, 100 },
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 50000},
            { "muzzle_snds_H", "", 5000, 1000},
            { "muzzle_snds_B", "", 20000, 1000 },
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 200 },
            { "200Rnd_65x39_cased_Box", 10000, 1000 },
            { "10Rnd_338_Mag", "", 2000, 100 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles_OPFOR", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_superintendent {
        name = "Superintendent Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 5000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 10000, 3000 },
            { "arifle_MXM_Black_F", "", 15000, 5000 },
            { "srifle_EBR_F", "", 35000, 2000 },
            { "srifle_DMR_03_F", "", 65000, 5000 },
            { "srifle_DMR_02_F", "", 120000, 2000 },
            { "srifle_DMR_05_blk_F", "", 150000, 2000 },
            { "LMG_Mk200_F", "", 250000, 10000 },
            { "MMG_02_black_F", "", 300000, 10000 },
            { "MMG_01_hex_F", "", 400000, 15000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 10000, 1000 },
            { "optic_AMS", "", 30000, 2000 },
            { "optic_LRPS", "", 100000, 5000 },
            { "optic_Holosight", "", 5000, 100 },
            { "muzzle_snds_H", "", 5000, 1000},
            { "muzzle_snds_B", "", 20000, 1000 },
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 40000},
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 200 },
            { "200Rnd_65x39_cased_Box", "",8000, 1000 },
            { "10Rnd_338_Mag", "", 2000, 100 },
            { "150Rnd_93x64_Mag", "", 10000, 1000 },
            { "130Rnd_338_Mag", "", 7000, 200 },
            { "10Rnd_93x64_DMR_05_Mag", "",5000, 200 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles_OPFOR", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_csuperintendent {
        name = "Cheif Superintendent Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 5000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 10000, 3000 },
            { "arifle_MXM_Black_F", "", 15000, 5000 },
            { "srifle_EBR_F", "", 35000, 2000 },
            { "srifle_DMR_03_F", "", 65000, 5000 },
            { "srifle_DMR_02_F", "", 120000, 2000 },
            { "srifle_DMR_05_blk_F", "", 150000, 2000 },
            { "srifle_GM6_F", "", 500000, 50000 },
            { "LMG_Mk200_F", "", 250000, 10000 },
            { "MMG_02_black_F", "", 300000, 10000 },
            { "MMG_01_hex_F", "", 400000, 15000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 10000, 1000 },
            { "optic_AMS", "", 30000, 2000 },
            { "optic_LRPS", "", 100000, 5000 },
            { "optic_Holosight", "", 5000, 100 },
            { "muzzle_snds_H", "", 5000, 1000},
            { "muzzle_snds_B", "", 10000, 1000 },
            { "muzzle_snds_93mmg", "", 100000, 10000 },
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 30000},
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 200 },
            { "200Rnd_65x39_cased_Box", "",6000, 1000 },
            { "10Rnd_338_Mag", "", 2000, 100 },
            { "150Rnd_93x64_Mag", "", 10000, 1000 },
            { "130Rnd_338_Mag", "", 7000, 200 },
            { "10Rnd_93x64_DMR_05_Mag", "",5000, 200 },
            { "5Rnd_127x108_Mag", "", 5000, 200 },
            { "5Rnd_127x108_APDS_Mag", "", 10000, 200 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles_OPFOR", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    
    class cop_commissioner {
        name = "Commissioner Shop";
        side = "cop";
        license = "";
        level[] = { "","",-1,"" };
        items[] = {
            { "SMG_02_ACO_F", "", 5000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000},
            { "arifle_CTAR_blk_F", "", 10000, 3000 },
            { "arifle_MXM_Black_F", "", 15000, 5000 },
            { "srifle_EBR_F", "", 35000, 2000 },
            { "srifle_DMR_03_F", "", 65000, 5000 },
            { "srifle_DMR_02_F", "", 120000, 2000 },
            { "srifle_DMR_05_blk_F", "", 150000, 2000 },
            { "srifle_GM6_F", "", 500000, 50000 },
            { "LMG_Mk200_F", "", 250000, 10000 },
            { "MMG_02_black_F", "", 300000, 10000 },
            { "MMG_01_hex_F", "", 400000, 15000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "optic_DMS", "", 10000, 1000 },
            { "optic_AMS", "", 30000, 2000 },
            { "optic_LRPS", "", 100000, 5000 },
            { "optic_Holosight", "", 5000, 100 },
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 10000},
            { "muzzle_snds_H", "", 5000, 1000},
            { "muzzle_snds_B", "", 10000, 1000 },
            { "muzzle_snds_93mmg", "", 100000, 10000 },
            { "muzzle_snds_338_black", "", 130000, 1000},
            { "bipod_01_F_blk", "", 5000, 200 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_65x39_caseless_mag", "", 300, 100 },
            { "30Rnd_580x42_Mag_F", "", 1500, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 200 },
            { "200Rnd_65x39_cased_Box", "",6000, 1000 },
            { "10Rnd_338_Mag", "", 2000, 100 },
            { "150Rnd_93x64_Mag", "", 10000, 1000 },
            { "130Rnd_338_Mag", "", 7000, 200 },
            { "10Rnd_93x64_DMR_05_Mag", "",5000, 200 },
            { "5Rnd_127x108_Mag", "", 5000, 200 },
            { "5Rnd_127x108_APDS_Mag", "", 10000, 200 },
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles_OPFOR", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };
    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, 45 },
            { "Binocular", "", 150, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 1200, 980 }
        };
        mags[] = {};
        accs[] = {};
    };
};
