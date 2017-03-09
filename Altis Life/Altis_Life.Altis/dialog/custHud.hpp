#include "common.hpp"

    class custHUD
    {
        idd = 1000000;
        movingEnable =  0;
        enableSimulation = 1;
        enableDisplay = 1;
        duration =  99999;
        fadein =  0.1;
        fadeout =  0.1;
        name = "custHUD";
		onLoad = "with uiNameSpace do { custHUD = _this select 0 }";
        class controls 
            {
                class healthico: Life_RscPicture
                {
                    idc = 1200;
                    text = "icons\health.paa";
                    x = 0.345312 * safezoneW + safezoneX;
                    y = 0.94 * safezoneH + safezoneY;
                    w = 0.020625 * safezoneW;
                    h = 0.033 * safezoneH;
                };
                class foodico: Life_RscPicture
                {
                    idc = 1201;
                    text = "icons\drink.paa";
                    x = 0.448438 * safezoneW + safezoneX;
                    y = 0.94 * safezoneH + safezoneY;
                    w = 0.020625 * safezoneW;
                    h = 0.033 * safezoneH;
                };
                class thirstico: Life_RscPicture
                {
                    idc = 1202;
                    text = "icons\food.paa";
                    x = 0.551562 * safezoneW + safezoneX;
                    y = 0.94 * safezoneH + safezoneY;
                    w = 0.020625 * safezoneW;
                    h = 0.033 * safezoneH;
                };
                class healthtext: Life_RscStructuredText
                {
                    idc = 1100;
                    text = "";
                    x = 0.371094 * safezoneW + safezoneX;
                    y = 0.94 * safezoneH + safezoneY;
                    w = 0.0721875 * safezoneW;
                    h = 0.033 * safezoneH;
                    colorText[] = {1,1,1,1};
                        class Attributes
                        {
                        color = "#FFFFFF";
                        align = "LEFT";
                        valign = "bottom";
                        underline = false;
                    }; 
                };
                class foodtext: Life_RscStructuredText
                {
                    idc = 1101;
                    text = "";
                    x = 0.474219 * safezoneW + safezoneX;
                    y = 0.94 * safezoneH + safezoneY;
                    w = 0.0721875 * safezoneW;
                    h = 0.033 * safezoneH;
                        class Attributes
                        {
                        color = "#FFFFFF";
                        align = "LEFT";
                        valign = "bottom";
                        underline = false;
                    }; 
                };
                class thirsttext: Life_RscStructuredText
                {
                    idc = 1102;
                    text = "";
                    x = 0.577344 * safezoneW + safezoneX;
                    y = 0.94 * safezoneH + safezoneY;
                    w = 0.0721875 * safezoneW;
                    h = 0.033 * safezoneH;
                        class Attributes
                        {
                        color = "#FFFFFF";
                        align = "LEFT";
                        valign = "bottom";
                        underline = false;
                    }; 
                };
            };
    };
				