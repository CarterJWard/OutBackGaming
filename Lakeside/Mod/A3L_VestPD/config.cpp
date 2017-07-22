////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 5.66
//'now' is Sat Jul 22 22:19:02 2017 : 'file' last modified on Mon Aug 31 07:18:31 2015
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class A3L_VestPD : config.bin{
class CfgPatches
{
	class A3L_PoliceVests
	{
		units[] = {"A3L_PoliceJacket","A3L_CivShirtDigBick","A3L_CivShirtMoonMan","A3L_CivShirtCalled","A3L_CivShirtOink","A3L_CivShirtOnCall","A3L_CivShirtFormal","A3L_CivShirtFormal2","A3L_CivShirtPrincess","A3L_CivShirtPrincess2","A3L_CivShirtKappa","A3L_CivShirtPepe","A3L_CivShirtSalt","A3L_CivShirtSuperman"};
		weapons[] = {"DTU_vest_base","DTU_VEST_BLACK","DTU_VEST_TAN","A3L_docvest","A3L_ftovest","A3L_ftovest2","A3L_emsftovest","A3L_emsftovest2","A3L_negotiatorvest","A3L_emsride","A3L_sheriffvest","A3L_deptjvest1","A3L_cidvest1","A3L_k9unitvest","A3L_ttfvest","SO1_vest_base","A3L_PD_Rebreather_F","A3L_PDride","A3L_Bounty","A3L_Bounty2","A3L_PD_Rebreather","A3L_camovest","A3L_deinarde","A3L_vestbw","A3L_bounty3","A3L_potato","A3L_secretsv","A3L_PoliceJacket","A3L_CivShirtCalled","A3L_CivShirtOnCall","A3L_CivShirtOink","A3L_CivShirtdigbick","A3L_CivShirtMoonMan","A3L_CivShirtPrincess","A3L_CivShirtPrincess2","A3L_CivShirtFormal","A3L_CivShirtFormal2","A3L_CivShirtKappa","A3L_CivShirtSalt","A3L_CivShirtPepe","A3L_CivShirtSuperman"};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Characters_F_BLUFOR"};
	};
};
class CfgVehicles
{
	class C_man_1;
	class C_man_hunter_1_F;
	class B_Competitor_F;
	class A3L_PoliceJacket: C_man_hunter_1_F
	{
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_PoliceJacket";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\police.paa"};
		displayName = "PD PoliceJacket (Blue)";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtFormal: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtFormal";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\formal.paa"};
		displayName = "A3L Formal Outfit (White Black Tie)";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtKappa: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtKappa";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\kappa.paa"};
		displayName = "A3L Kappa Shirt";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtPepe: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtPepe";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\pepe.paa"};
		displayName = "A3L Pepe Shirt";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtSalt: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtSalt";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\salt.paa"};
		displayName = "A3L Salt Shirt";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtSuperman: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtSuperman";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\superman.paa"};
		displayName = "A3L Superman Shirt";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtFormal2: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtFormal2";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\formal2.paa"};
		displayName = "A3L Formal Outfit (Black White Tie)";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtPrincess: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtPrincess";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\princess.paa"};
		displayName = "Princess";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtPrincess2: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtPrincess2";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\princess2.paa"};
		displayName = "Princess (Tie)";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtDigBick: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtDigBick";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\digbick.paa"};
		displayName = "DigBick";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtMoonMan: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtMoonMan";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\moon.paa"};
		displayName = "MoonMan";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtCalled: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtCalled";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\called.paa"};
		displayName = "EMS Called To Serve";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtOink: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtOink";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\oink.paa"};
		displayName = "Oink";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
	class A3L_CivShirtOnCall: B_Competitor_F
	{
		_generalMacro = "B_Competitor_F";
		scope = 2;
		nakedUniform = "U_BasicBody";
		uniformClass = "A3L_CivShirtOnCall";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"A3L_VestPD\data\oncall.paa"};
		displayName = "EMS On Call For Life";
		author = "Eric Deinarde";
		hideUnitInfo = 1;
		hideWeaponsCargo = 1;
		hideWeaponsCommander = 1;
		hideWeaponsDriver = 1;
		hideWeaponsGunner = 1;
	};
};
class cfgWeapons
{
	class Uniform_Base;
	class UniformItem;
	class V_PlateCarrier1_rgr;
	class ItemCore;
	class V_TacVest_khk;
	class ItemInfo;
	class A3L_PoliceJacket: Uniform_Base
	{
		scope = 2;
		displayName = "Black Police Jacket (Open)";
		picture = "\A3\characters_f\data\ui\icon_U_B_CombatUniform_mcam_ca.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformClass = "A3L_PoliceJacket";
			containerClass = "Supply100";
			mass = 80;
		};
	};
	class A3L_CivShirtPrincess: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Princess";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtPrincess";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtKappa: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Kappa Shirt";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtKappa";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtSalt: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Salt Shirt";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtSalt";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtPepe: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Pepe Shirt";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtPepe";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtPrincess2: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Princess (Tie)";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtPrincess2";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtFormal: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Formal Outfit (White Black Tie)";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtFormal";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtSuperman: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Superman Shirt";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtSuperman";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtFormal2: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Formal Outfit (Black White Tie)";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtFormal2";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtCalled: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Called To Serve";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtCalled";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtOnCall: Uniform_Base
	{
		scope = 2;
		displayName = "A3L On Call For Life";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtOnCall";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtOink: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Oink";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtOink";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtdigbick: Uniform_Base
	{
		scope = 2;
		displayName = "A3L DigBick";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtDigBick";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class A3L_CivShirtMoonMan: Uniform_Base
	{
		scope = 2;
		displayName = "A3L Moonman";
		picture = "A3L_CivClothesPack\Data\ui\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\Suitpacks\suitpack_blufor_diver";
		author = "Eric Deinarde";
		class ItemInfo: UniformItem
		{
			uniformModel = "-";
			uniformClass = "A3L_CivShirtMoonMan";
			containerClass = "Supply100";
			mass = 2;
		};
	};
	class SO1_vest_base: V_PlateCarrier1_rgr
	{
		scope = 2;
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\BLUFOR\equip_b_vest02";
		author = "";
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply500";
			mass = 1;
			hiddenSelections[] = {"camo"};
		};
	};
	class DTU_vest_base: V_PlateCarrier1_rgr
	{
		scope = 2;
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\BLUFOR\equip_b_vest02";
		author = "Bobby McDangle";
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\BLUFOR\equip_b_vest02";
			containerClass = "Supply500";
			mass = 1;
			hiddenSelections[] = {"camo"};
		};
	};
	class DTU_VEST_BLACK: DTU_vest_base
	{
		displayName = "PD DTU Vest (Black)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\BLUFOR\equip_b_vest02";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\Data\DTUvest_co.paa"};
	};
	class A3L_docvest: SO1_vest_base
	{
		scope = 2;
		displayName = "Corrections Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\docvest_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_ftovest: SO1_vest_base
	{
		scope = 2;
		displayName = "Field Training Officer Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\ftovest_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_ftovest2: SO1_vest_base
	{
		scope = 2;
		displayName = "Field Training Officer Vest (Sheriff)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\ftovest2_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_emsftovest: V_TacVest_khk
	{
		scope = 2;
		displayName = "EMS Field Training Officer Vest (BLUE)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\ems_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_emsftovest2: V_TacVest_khk
	{
		scope = 2;
		displayName = "EMS Field Training Officer Vest (RED)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\ems2_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_negotiatorvest: SO1_vest_base
	{
		scope = 2;
		displayName = "PD SWAT Negotiator Vest (Yellow)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\pd_negotiator_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_emsride: V_TacVest_khk
	{
		scope = 2;
		displayName = "EMS Ridealong Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\emsride_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_pdride: V_TacVest_khk
	{
		scope = 2;
		displayName = "PD Ridealong Vest (Green)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\pdride_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_bounty: V_TacVest_khk
	{
		scope = 2;
		displayName = "Bounty Hunter Vest (Black)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\bounty_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_bounty2: V_TacVest_khk
	{
		scope = 2;
		displayName = "Bounty Hunter Vest (Blue)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\bounty2_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_bounty3: V_TacVest_khk
	{
		scope = 2;
		displayName = "Bounty Hunter Vest (Camo, Discrete)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\bounty3_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_potato: V_TacVest_khk
	{
		scope = 2;
		displayName = "Potato Department Vest (Black)";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\potato_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_camovest: V_TacVest_khk
	{
		scope = 2;
		displayName = "Camo Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\camo_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_secretsv: V_TacVest_khk
	{
		scope = 2;
		displayName = "Secret Service Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		author = "Eric Deinarde";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\ss_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			armor = 70;
			passThrough = 0.5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_sheriffvest: SO1_vest_base
	{
		scope = 2;
		displayName = "Sheriff's Office Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\sheriffvest_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_deptjvest1: SO1_vest_base
	{
		scope = 2;
		displayName = "DoJ Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\deptjvest_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_cidvest1: SO1_vest_base
	{
		scope = 2;
		displayName = "Detective Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\cidvest_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_k9unitvest: SO1_vest_base
	{
		scope = 2;
		displayName = "K9 Unit Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		armor = 50;
		passThrough = 0.3;
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\k9unitvest_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class A3L_ttfvest: SO1_vest_base
	{
		scope = 2;
		displayName = "Traffic Vest";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_tacticalvest";
		armor = 50;
		passThrough = 0.3;
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\data\ttfvest_co.paa"};
		class ItemInfo: ItemInfo
		{
			uniformModel = "A3\Characters_F\common\equip_tacticalvest";
			containerClass = "Supply120";
			mass = 5;
			hiddenSelections[] = {"camo"};
		};
	};
	class Vest_Camo_Base;
	class A3L_PD_Rebreather_F: Vest_Camo_Base
	{
		scope = 2;
		scopeCurator = 2;
		displayName = "A3L PD Rebreather Base";
		vehicleClass = "ItemsVests";
		class TransportItems
		{
			class A3L_PD_Rebreather
			{
				name = "A3L_PD_Rebreather";
				count = 1;
				scope = 2;
			};
		};
	};
	class VestItem;
	class A3L_PD_Rebreather: Vest_Camo_Base
	{
		scope = 2;
		displayName = "LS PD Marine Rebreather";
		picture = "\A3L_VestPD\Data\UI\A3L_Logo.paa";
		model = "\A3\Characters_F\Common\equip_rebreather";
		author = "Eva";
		hiddenSelections[] = {"camo"};
		hiddenUnderwaterSelections[] = {"hide"};
		shownUnderwaterSelections[] = {"unhide","unhide2"};
		hiddenUnderwaterSelectionsTextures[] = {"\A3L_VestPD\Data\a3l_PD_rebreather.paa","\A3L_VestPD\Data\a3l_PD_rebreather.paa","\A3\characters_f\data\visors_ca.paa"};
		hiddenSelectionsTextures[] = {"\A3L_VestPD\Data\a3l_PD_rebreather.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "\A3\Characters_F\Common\equip_rebreather";
			containerClass = "Supply0";
			scope = 2;
			mass = 80;
			armor = 10;
			passThrough = 1;
			vestType = "Rebreather";
			hiddenSelections[] = {"camo"};
			hiddenUnderwaterSelections[] = {"hide"};
			shownUnderwaterSelections[] = {"unhide","unhide2"};
			hiddenUnderwaterSelectionsTextures[] = {"\A3L_VestPD\Data\a3l_PD_rebreather.paa","\A3L_VestPD\Data\a3l_PD_rebreather.paa","\A3\characters_f\data\visors_ca.paa"};
			hiddenSelectionsTextures[] = {"\A3L_VestPD\Data\a3l_PD_rebreather.paa"};
		};
	};
};
class cfgMods
{
	author = "76561197993776619";
	timepacked = "1440976711";
};
//};
