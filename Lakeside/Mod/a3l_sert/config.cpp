////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.66
//'now' is Sat Jul 22 22:27:17 2017 : 'file' last modified on Mon Aug 17 06:41:11 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class a3l_sert : config.bin{
class CfgPatches
{
	class a3l_sert
	{
		units[] = {"B_Competitor_F"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F"};
	};
};
class cfgVehicles
{
	class B_Bergen_sgg;
	class back_base: B_Bergen_sgg
	{
		scope = 2;
		hiddenSelectionsTextures[] = {};
	};
	class B_Carryall_oli;
	class carry_base: B_Carryall_oli
	{
		scope = 2;
		hiddenSelectionsTextures[] = {};
	};
	class A3L_Blackback: back_base
	{
		displayName = "A3L Black Bergen";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\blackback.paa"};
	};
	class A3L_Canadaback: back_base
	{
		displayName = "A3L Canada Bergen";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\canadaback.paa"};
	};
	class A3L_Britainback: back_base
	{
		displayName = "A3L Britain Bergen";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\britainback.paa"};
	};
	class A3L_Blackciv: carry_base
	{
		displayName = "A3L Black Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\blackcarry.paa"};
	};
	class A3L_Hashciv: carry_base
	{
		displayName = "A3L Hash Tricolour Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\hashtricolorcarry.paa"};
	};
	class A3L_Digiciv: carry_base
	{
		displayName = "A3L Digital Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\digicarry.paa"};
	};
	class A3L_Jungleciv: carry_base
	{
		displayName = "A3L Jungle Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\junglecarry.paa"};
	};
	class A3L_Browngreyciv: carry_base
	{
		displayName = "A3L Brown Grey Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\browngreycarry.paa"};
	};
	class A3L_Desertciv: carry_base
	{
		displayName = "A3L Desert Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\desertcarry.paa"};
	};
	class A3L_Pinkciv: carry_base
	{
		displayName = "A3L Pink Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\pinkcarry.paa"};
	};
	class A3L_Urbanciv: carry_base
	{
		displayName = "A3L Urban Carryall";
		author = "Brian Badonde";
		hiddenSelectionsTextures[] = {"a3l_sert\data\urbancarry.paa"};
	};
	class SERT_Blackback: back_base
	{
		displayName = "SERT Black Bergen";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\SERT_backb.paa"};
	};
	class SERT_Digiback: back_base
	{
		displayName = "SERT Digital Bergen";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\SERT_backd.paa"};
	};
	class SERT_Greenback: back_base
	{
		displayName = "SERT Green Bergen";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\SERT_backg.paa"};
	};
	class SERT_Carrygreen: carry_base
	{
		displayName = "SERT Green Carryall";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\SERT_carryg.paa"};
	};
	class SERT_Carrydigi: carry_base
	{
		displayName = "SERT Digital Carryall";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\SERT_carryd.paa"};
	};
	class SERT_Carryblack: carry_base
	{
		displayName = "SERT Black Carryall";
		author = "Luke Najail";
		hiddenSelectionsTextures[] = {"a3l_sert\data\SERT_carryb.paa"};
	};
};
class cfgWeapons
{
	class ItemCore;
	class Uniform_Base;
	class UniformItem;
	class ItemInfo;
	class V_PlateCarrier1_rgr;
	class V_TacVest_khk;
	class REB_vest_base: V_TacVest_khk
	{
		scope = 2;
		author = "Luke Najail";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class REB_VEST_URBAN: REB_vest_base
	{
		displayName = "Rebel Vest (Urban)";
		picture = "\a3l_sert\Data\UI\icon_v_tacvest_blk_ca.paa";
		author = "Brian Badonde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\tacticalvest_urban.paa"};
	};
	class REB_VEST_PINK: REB_vest_base
	{
		displayName = "Rebel Vest (Pink)";
		picture = "\a3l_sert\Data\UI\icon_v_tacvest_blk_ca.paa";
		author = "Brian Badonde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\tacticalvest_pink.paa"};
	};
	class REB_VEST_JUNGLE: REB_vest_base
	{
		displayName = "Rebel Vest (Jungle)";
		picture = "\a3l_sert\Data\UI\icon_v_tacvest_blk_ca.paa";
		author = "Brian Badonde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\tacticalvest_jungle.paa"};
	};
	class REB_VEST_DIGI: REB_vest_base
	{
		displayName = "Rebel Vest (Digital)";
		picture = "\a3l_sert\Data\UI\icon_v_tacvest_blk_ca.paa";
		author = "Brian Badonde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\tacticalvest_digi.paa"};
	};
	class REB_VEST_DESERT: REB_vest_base
	{
		displayName = "Rebel Vest (Desert)";
		picture = "\a3l_sert\Data\UI\icon_v_tacvest_blk_ca.paa";
		author = "Brian Badonde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\tacticalvest_desert.paa"};
	};
	class REB_VEST_BLACK: REB_vest_base
	{
		displayName = "Rebel Vest (Black)";
		picture = "\a3l_sert\Data\UI\icon_v_tacvest_blk_ca.paa";
		author = "Luke Najail";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\blackvest.paa"};
	};
	class SERT_vest_base: V_PlateCarrier1_rgr
	{
		scope = 2;
		picture = "\a3l_sert\Data\UI\icon_v_plate_carrier_1_ca.paa";
		model = "\A3\Characters_F\BLUFOR\equip_b_vest02";
		author = "Luke Najail & Oliver McIvor";
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\BLUFOR\equip_b_vest02";
			containerClass = "Supply120";
			mass = 1;
			armor = 80;
			passThrough = 0.3;
			hiddenSelections[] = {"camo"};
		};
	};
	class SERT_VEST_BLACK: SERT_vest_base
	{
		displayName = "SERT Vest (Black)";
		picture = "\a3l_sert\Data\UI\icon_v_plate_carrier_1_ca.paa";
		model = "\A3\Characters_F\BLUFOR\equip_b_vest02";
		author = "Luke Najail & Oliver McIvor";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\SERT_vestb.paa"};
	};
	class SERT_VEST_DIGI: SERT_vest_base
	{
		displayName = "SERT Vest (Digital)";
		picture = "\a3l_sert\Data\UI\icon_v_plate_carrier_1_ca.paa";
		model = "\A3\Characters_F\BLUFOR\equip_b_vest02";
		author = "Luke Najail & Oliver McIvor";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\a3l_sert\data\SERT_vestd.paa"};
	};
};
class cfgMods
{
	author = "76561197993776619";
	timepacked = "1439764871";
};
//};
