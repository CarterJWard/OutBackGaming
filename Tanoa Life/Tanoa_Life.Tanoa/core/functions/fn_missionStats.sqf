/*
    File: fn_missionStats.sqf
    Author: Fresqo
    Description: displays mission stats for selected mission
      in this case just crop dusting.. so far ... more to come
*/

private _type = param [3,"",[""]];

switch (_type) do {
    case "crop": 
        {
            private _stats = missionNamespace getVariable["cropTimes",[]];
            private _cnt = count _stats;
            if (_cnt isEqualTo 0) exitWith {hint "There are no results today yet"};
            private _order = [];
            for "_i" from 0 to _cnt -1 do 
                {
                    private _cnt2 = -1;
                    private _selection = _stats select _i select 1;
                    {
                        if (_selection >= _x select 1) then {_cnt2 = _cnt2 + 1;}; 
                    } forEach _stats;
                    _order set [_cnt2,(_stats select _i)];
                };
                
            _txt = "";
            private _cntr = 5;
            if (_cnt < 5) then {_cntr = _cnt};
            for "_i" from 0 to _cntr -1 do {
                _txt = _txt + format["<br/><t size='1.1'>Name:%1 | Time: %2</t>",(_order select _i select 0),[(_order select _i select 1),"MM:SS"] call BIS_fnc_secondsToString];
            };
            hint parseText format ["<t size='1.3'><t color='#FF0000'>TODAYS TOP %2<br/>Crop Duster(s) are...</t></t><br/>%1",_txt,_cntr];
        };
    default {hint "Nothing to Show"};
};
