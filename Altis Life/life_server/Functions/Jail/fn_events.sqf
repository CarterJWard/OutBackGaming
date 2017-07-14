//Earthquake
private _randomT = (60*5);
private _random = random(3);
uiSleep (60*30);
uiSleep _randomT;
[_random] spawn BIS_fnc_earthquake;
[] execVM "\life_server\Functions\Larry\fn_events.sqf";