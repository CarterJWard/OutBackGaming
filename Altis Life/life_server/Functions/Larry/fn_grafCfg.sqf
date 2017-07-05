/*
Author: Larry Lancelot
Sorts grafiti stuff
*/
_type = [_this,0,0,[[],0]] call BIS_fnc_param;
_wall = [_this,1,objNull,[[],0]] call BIS_fnc_param;
_grafiti = [[gwall1,graf1],[gwall2,graf2],[gwall3,graf3]];
switch (_type) do {
case 0: {{_x select 0;}forEach _grafiti;};
case 1: {
    {
            if (_wall isEqualTo (_x select 0)) exitWith 
            {
                _graf = _x select 1;
            };
    } forEach _grafiti; 
    _graf hideObjectGlobal false;};
case 2: {_grafiti};
};
