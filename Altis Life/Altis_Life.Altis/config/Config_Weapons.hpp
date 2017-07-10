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
            { "optic_ACO_grn_smg", "", 2500, -1 }
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
            { "SatchelCharge_Remote_Mag", "Explosive Device", 150000, -1 },
            { "NVGoggles", "", 5000, 100 },
            { "FirstAidKit", "", 100, -1 },
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
            { "arifle_SPAR_01_blk_F", "", 35000, 1000 },
            { "arifle_MXM_Black_F", "", 40000, 5000 },
            { "srifle_EBR_F", "", 80000, 2000},
            { "srifle_DMR_02_F", "",150000, 10000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 5000, 200},
            { "bipod_01_F_blk", "", 100, 10 },
            { "muzzle_snds_H", "", 10000, 1000},
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_556x45_Stanag", "", 300, 10 },
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
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 50000 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 25000, 1000 },
            { "arifle_CTAR_blk_F", "", 35000, 3000 },
            { "arifle_SPAR_01_blk_F", "", 35000, 1000 },
            { "arifle_MXM_Black_F", "", 40000, 5000 },
            { "arifle_MX_SW_Black_F", "", 150000, 10000 },
            { "srifle_EBR_F", "", 80000, 2000},  //mk18
            { "srifle_DMR_02_F", "", 150000, 10000 }, //Mar -10
            { "srifle_DMR_05_blk_F", "", 180000 , 12000 }, //Cyrus
            { "srifle_DMR_03_F", "", 100000, 7000 }, //mk 1 
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_Holosight_blk_F", "", 3000, 100 },
            { "LMG_Mk200_F", "", 400000, 40000 },
            { "optic_ERCO_blk_F", "", 5000, 200 },
            { "bipod_01_F_blk", "", 100, 10 },
            { "muzzle_snds_H", "", 10000, 1000 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_556x45_Stanag", "", 300, 10 },
            { "30Rnd_65x39_caseless_mag", "", 500, 100 },
            { "30Rnd_65x39_caseless_mag_Tracer", "6.5 Knockdown Rounds", 5000, 100},
            { "30Rnd_580x42_Mag_F", "", 2000, 100 },
            { "100Rnd_65x39_caseless_mag", "",5000, 100 },
            { "20Rnd_762x51_Mag", "", 2000, 100 },
            { "10Rnd_338_Mag", "", 4000, 500 },
            { "10Rnd_93x64_DMR_05_Mag", "",5000, 200 },
            { "200Rnd_65x39_cased_Box", "",5000, 200 },
            { "SmokeShellYellow", "Tear Gas", 10000, 100 },
            { "HandGrenade_Stone", "Flashbang", 15000, 200},
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
            { "SMG_02_ACO_F", "", 20000, -1 },
            { "hgun_P07_snds_F", "Stun Pistol", 2800, 650 },
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 30000 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 25000, 1000 },
            { "arifle_CTAR_blk_F", "", 35000, 3000 },
            { "arifle_SPAR_01_blk_F", "", 35000, 1000 },
            { "arifle_MXM_Black_F", "", 40000, 5000 },
            { "arifle_MX_SW_Black_F", "", 150000, 10000 },
            { "srifle_EBR_F", "", 50000, 2000},  //mk18
            { "srifle_DMR_02_F", "", 100000, 10000 }, //Mar -10
            { "srifle_DMR_05_blk_F", "", 180000 , 12000 }, //Cyrus
            { "srifle_DMR_03_F", "", 100000, 7000 }, //mk 1 
            { "srifle_GM6_F", "", 400000, 4000 },
            { "LMG_Mk200_F", "", 300000, 40000 },
            { "MMG_02_black_F", "", 450000, 40000 },
            { "MMG_01_hex_F", "", 500000, 50000 },
            { "optic_Arco_blk_F", "", 2500, 200 },
            { "optic_ERCO_blk_F", "", 3000, 200},
            { "optic_Holosight_blk_F", "", 3000, 100 },
            { "optic_DMS", "", 10000, 500 },
            { "optic_AMS", "", 50000, 1000 },
            { "optic_LRPS", "", 100000, 1000 },
            { "bipod_01_F_blk", "", 100, 10 },
            { "muzzle_snds_H", "", 10000, 1000},
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_556x45_Stanag", "", 300, 10 },
            { "30Rnd_65x39_caseless_mag", "", 500, 100 },
            { "30Rnd_65x39_caseless_mag_Tracer", "6.5 Knockdown Rounds", 4000, 100},
            { "30Rnd_580x42_Mag_F", "", 2000, 100 },
            { "100Rnd_65x39_caseless_mag", "",2000, 100 },
            { "20Rnd_762x51_Mag", "", 1000, 100 },
            { "10Rnd_338_Mag", "", 2500, 500 },
            { "10Rnd_93x64_DMR_05_Mag", "", 3000, 200 },
            { "200Rnd_65x39_cased_Box", "", 3000, 200 },
            { "130Rnd_338_Mag", "", 5000, 500 },
            { "150Rnd_93x64_Mag", "", 5000, 200},
            { "5Rnd_127x108_Mag", "", 5000, 500 },
            { "5Rnd_127x108_APDS_Mag", "HeadPoppers",10000, 200 },
            { "SmokeShellYellow", "Tear Gas", 10000, 100 },
            { "HandGrenade_Stone", "Flashbang", 11000, 200},
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
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 20000 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 20000, 1000 },
            { "arifle_CTAR_blk_F", "", 20000, 3000 },
            { "arifle_SPAR_01_blk_F", "", 10000, 1000 },
            { "arifle_MXM_Black_F", "", 30000, 5000 },
            { "arifle_MX_SW_Black_F", "", 100000, 10000 },
            { "srifle_EBR_F", "", 40000, 2000},  //mk18
            { "srifle_DMR_02_F", "", 80000, 10000 }, //Mar -10
            { "srifle_DMR_05_blk_F", "", 100000 , 12000 }, //Cyrus
            { "srifle_DMR_03_F", "", 80000, 7000 }, //mk 1 
            { "srifle_GM6_F", "", 300000, 4000 },
            { "LMG_Mk200_F", "", 250000, 40000 },
            { "MMG_02_black_F", "", 400000, 40000 },
            { "MMG_01_hex_F", "", 450000, 50000 },
            { "optic_Arco_blk_F", "", 2000, 200 },
            { "optic_ERCO_blk_F", "", 3000, 200},
            { "optic_Holosight_blk_F", "", 2000, 100 },
            { "optic_DMS", "", 8000, 500 },
            { "optic_AMS", "", 40000, 1000 },
            { "optic_LRPS", "", 80000, 1000 },
            { "bipod_01_F_blk", "", 100, 10 },
            { "muzzle_snds_H", "", 10000, 1000},
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_556x45_Stanag", "", 300, 10 },
            { "30Rnd_65x39_caseless_mag", "", 500, 100 },
            { "30Rnd_580x42_Mag_F", "", 2000, 100 },
            { "100Rnd_65x39_caseless_mag", "",2000, 100 },
            { "30Rnd_65x39_caseless_mag_Tracer", "6.5 Knockdown Rounds", 3000, 100},
            { "20Rnd_762x51_Mag", "", 1000, 100 },
            { "10Rnd_338_Mag", "", 2500, 500 },
            { "10Rnd_93x64_DMR_05_Mag", "",2000, 200 },
            { "200Rnd_65x39_cased_Box", "", 2000, 200 },
            { "130Rnd_338_Mag", "", 3000, 500 },
            { "150Rnd_93x64_Mag", "", 2000, 200},
            { "5Rnd_127x108_Mag", "", 4000, 500 },
            { "5Rnd_127x108_APDS_Mag", "",8000, 200 },
            { "SmokeShellYellow", "Tear Gas", 5000, 100 },
            { "HandGrenade_Stone", "Flashbang", 10000, 200},
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
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 10000 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 10000, 1000 },
            { "arifle_CTAR_blk_F", "", 15000, 3000 },
            { "arifle_SPAR_01_blk_F", "", 5000, 1000 },
            { "arifle_MXM_Black_F", "", 25000, 5000 },
            { "arifle_MX_SW_Black_F", "", 60000, 10000 },
            { "srifle_EBR_F", "", 30000, 2000},  //mk18
            { "srifle_DMR_02_F", "", 50000, 10000 }, //Mar -10
            { "srifle_DMR_05_blk_F", "", 700000 , 12000 }, //Cyrus
            { "srifle_DMR_03_F", "", 50000, 7000 }, //mk 1 
            { "srifle_GM6_F", "", 200000, 4000 },
            { "LMG_Mk200_F", "", 200000, 40000 },
            { "MMG_02_black_F", "", 300000, 40000 },
            { "MMG_01_hex_F", "", 350000, 50000 },
            { "optic_Arco_blk_F", "", 1000, 200 },
            { "optic_ERCO_blk_F", "", 1500, 200},
            { "optic_Holosight_blk_F", "", 1000, 100 },
            { "optic_DMS", "", 6000, 500 },
            { "optic_AMS", "", 25000, 1000 },
            { "optic_LRPS", "", 50000, 1000 },
            { "bipod_01_F_blk", "", 100, 10 },
            { "muzzle_snds_H", "", 8000, 1000},
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_556x45_Stanag", "", 300, 10 },
            { "30Rnd_65x39_caseless_mag", "", 250, 100 },
            { "30Rnd_580x42_Mag_F", "", 1000, 100 },
            { "30Rnd_65x39_caseless_mag_Tracer", "6.5 Knockdown Rounds", 1500, 100},
            { "100Rnd_65x39_caseless_mag", "",1000, 100 },
            { "20Rnd_762x51_Mag", "", 500, 100 },
            { "10Rnd_338_Mag", "", 2500, 500 },
            { "10Rnd_93x64_DMR_05_Mag", "",1500, 200 },
            { "200Rnd_65x39_cased_Box", "", 1000, 200 },
            { "130Rnd_338_Mag", "", 2000, 500 },
            { "150Rnd_93x64_Mag", "", 1000, 200},
            { "5Rnd_127x108_Mag", "", 3000, 500 },
            { "5Rnd_127x108_APDS_Mag", "GM6 Headpoppers",6000, 200 },
            { "SmokeShellYellow", "Tear Gas", 2000, 100 },
            { "HandGrenade_Stone", "Flashbang", 5000, 200},
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
            { "SatchelCharge_Remote_Mag", "Vehicle Destruction Device", 10000 },
            { "arifle_sdar_F", "Taser Rifle", 10000, 1000 },
            { "arifle_MX_Black_F", "", 5000, 1000 },
            { "arifle_CTAR_blk_F", "", 10000, 3000 },
            { "arifle_SPAR_01_blk_F", "", 5000, 1000 },
            { "arifle_MXM_Black_F", "", 20000, 5000 },
            { "arifle_MX_SW_Black_F", "", 35000, 10000 },
            { "srifle_EBR_F", "", 20000, 2000}, 
            { "srifle_DMR_02_F", "", 30000, 10000 }, 
            { "srifle_DMR_05_blk_F", "", 500000 , 12000 }, //Cyrus
            { "srifle_DMR_03_F", "", 20000, 7000 }, //mk 1 
            { "srifle_GM6_F", "", 100000, 4000 },
            { "LMG_Mk200_F", "", 80000, 40000 },
            { "MMG_02_black_F", "", 150000, 40000 },
            { "MMG_01_hex_F", "", 300000, 50000 },
            { "optic_Arco_blk_F", "", 500, 200 },
            { "optic_ERCO_blk_F", "", 1500, 200},
            { "optic_Holosight_blk_F", "", 1000, 100 },
            { "optic_DMS", "", 1000, 500 },
            { "optic_AMS", "", 5000, 1000 },
            { "optic_LRPS", "", 10000, 1000 },
            { "muzzle_snds_H", "", 3000, 1000},
            { "bipod_01_F_blk", "", 100, 10 },
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_9x21_Mag", "", 250 },
            { "20Rnd_556x45_UW_mag", "Taser Rifle Magazine", 45 },
            { "30Rnd_556x45_Stanag", "", 300, 10 },
            { "30Rnd_65x39_caseless_mag", "", 250, 100 },
            { "30Rnd_65x39_caseless_mag_Tracer", "6.5 Knockdown Rounds", 1000, 100},
            { "30Rnd_580x42_Mag_F", "", 1000, 100 },
            { "100Rnd_65x39_caseless_mag", "",1000, 100 },
            { "20Rnd_762x51_Mag", "", 500, 100 },
            { "10Rnd_338_Mag", "", 1500, 500 },
            { "10Rnd_93x64_DMR_05_Mag", "",500, 200 },
            { "200Rnd_65x39_cased_Box", "", 250, 200 },
            { "130Rnd_338_Mag", "", 1000, 500 },
            { "150Rnd_93x64_Mag", "", 500, 200},
            { "5Rnd_127x108_Mag", "", 1000, 500 },
            { "5Rnd_127x108_APDS_Mag", "",2000, 200 },
            { "SmokeShellYellow", "Tear Gas", 1000, 100 },
            { "HandGrenade_Stone", "Flashbang", 1000, 200},            
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles_OPFOR", "", 2000, 980 }
        };
        mags[]= {};
        accs[] = {};
    };

    class cop_swat {
        name = "Swat Shop";
        side = "cop";
        license = "swat";
        level[] = { "", "", -1, "" };
        items[] = {
            { "srifle_LRR_F", "", 45000, 1000 },
            { "7Rnd_408_Mag", "", 2000, 100 },
            { "arifle_SPAR_01_GL_blk_F", "", 10000, 200 },
            { "muzzle_snds_93mmg", "", 8000, 200 },
            { "muzzle_snds_B", "", 2000 },
            { "muzzle_snds_338_black", "", 5000, 200 },
            { "optic_ERCO_blk_F", "", 200, 50 },
            { "optic_Hamr", "", 500, 30 },
            { "optic_LRPS", "", 10000, 100 },
            { "bipod_01_F_blk", "", 100, 10 },
            { "30Rnd_556x45_Stanag", "", 100, 10 },
            { "1Rnd_SmokeYellow_Grenade_shell", "Tear Gas Grenade", 2000, 100 },
            { "SmokeShellYellow", "Tear Gas", 1000, 100 },
            { "HandGrenade_Stone", "Flashbang", 1000, 200 },
            { "Rangefinder", "", 2000, 100 },
            { "muzzle_snds_M", "", 5000, 100}
            };
        mags[] = {};
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
