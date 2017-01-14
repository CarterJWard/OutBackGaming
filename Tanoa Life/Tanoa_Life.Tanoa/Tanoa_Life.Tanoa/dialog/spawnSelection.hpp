//spawnSelectionTextured
#define Color_Transparent { 0, 0, 0, 0 }
//

class life_spawn_selection
{
	idd = 38500;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class laptop: life_RscPicture
		{
			idc = 1200;
			text = "textures\spawnMenu.paa";
			x = 0.193594 * safezoneW + safezoneX;
			y = 0.01 * safezoneH + safezoneY;
			w = .556 * safezoneW;
			h = 0.981 * safezoneH;
		};
		
		class Title : Life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = -1;
			text = "$STR_Spawn_Title";
			x = 0 * safezoneW + safezoneX;
			y = 0 * safezoneH + safezoneY;
			w = 0 * safezoneW;
			h = 0 * safezoneH;
		};
		
		class SpawnPointTitle : Title
		{
			idc = 38501;
			style = 1;
			text = "";
		};
		
		class MapView : Life_RscMapControl 
		{
			idc = 38502;
			x = 0.54400 * safezoneW + safezoneX;
			y = 0.351 * safezoneH + safezoneY;
			w = 0.1100 * safezoneW;
			h = 0.23848 * safezoneH;
			maxSatelliteAlpha = 0.75;//0.75;
			alphaFadeStartScale = 1.15;//0.15;
			alphaFadeEndScale = 1.29;//0.29;
		};
	};
	
	class controls
	{	
		class SpawnPointList: Life_RscListNBox
		{
			idc = 38510;
			text = "";
			ColorText[] = {0, 0, 0, 1};
			sizeEx = 0.0401;
			coloumns[] = {0,0,0.85};
			drawSideArrows = false;
			idcLeft = -1;
			idcRight = -1;
			rowHeight = 0.050;
			x = 0.2929050 * safezoneW + safezoneX;
			y = 0.353574 * safezoneH + safezoneY;
			w = 0.2450208 * safezoneW;
			h = 0.441111 * safezoneH;
			onLBSelChanged = "_this call life_fnc_spawnPointSelected;";
		};
		
		class spawnButton : Life_RscButtonSilent
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0.4};
			text = "$STR_Spawn_Spawn";
			onButtonClick = "[] call life_fnc_spawnConfirm";
			x = 0.54685 * safezoneW + safezoneX;
			y = 0.593 * safezoneH + safezoneY;
			w = 0.1077083 * safezoneW;
			h = 0.033587 * safezoneH;
		 };
	};
};
