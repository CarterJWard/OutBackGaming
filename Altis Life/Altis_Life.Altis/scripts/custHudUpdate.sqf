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