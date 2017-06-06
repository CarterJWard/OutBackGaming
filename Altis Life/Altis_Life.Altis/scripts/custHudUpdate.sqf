#include "..\script_macros.hpp"
//Update statusbar if player count, bank or cash changes
[] spawn {
    while {true} do {
        _bank = BANK;
        _cash = CASH;
        _units = count playableUnits;
        sleep 1;
        waitUntil {_bank != BANK || _cash != CASH || _units != (count playableUnits)};
        [] execVM "scripts\custHud.sqf";
    };
};

if(!isNil "life_seatbelt") then {
    if ( vehicle player != player ) then {
        if(life_seatbelt) then {
            LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "icons\seatlocked.paa";
        } else {
            LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "icons\seatunlocked.paa";
        };
    } else {
        LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "";
    };
};