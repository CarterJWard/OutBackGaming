class Life_PSA {
    idd = 26500;
    name = "life_ticket_give";
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground {
        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = -1;
            x = 0.3;
            y = 0.2;
            w = 0.47;
            h = (1 / 25);
        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0, 0, 0, 0.7};
            idc = -1;
            x = 0.3;
            y = 0.2 + (11 / 250);
            w = 0.47;
            h = 0.3 - (22 / 250);
        };
    };

    class controls {
        class Title: Life_RscTitle {
            colorBackground[] = {0, 0, 0, 0};
            idc = 26510;
            text = "";
            x = 0.3;
            y = 0.2;
            w = 0.6;
            h = (1 / 25);
        };

        class moneyEdit: Life_RscEdit {
            idc = 26520;
            text = "Enter you PSA here!";
            sizeEx = 0.030;
            x = 0.40;
            y = 0.30;
            w = 0.25;
            h = 0.05;
        };

        class payTicket: Life_RscButtonMenu {
            idc = -1;
            text = "Send PSA";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[] call life_fnc_copMsgAll";
            x = 0.40;
            y = 0.40;
            w = 0.25;
            h = 0.05;
        };
    };
};