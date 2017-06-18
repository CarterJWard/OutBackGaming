_type = [_this,0,0,[[],0]] call BIS_fnc_param;
_wall = [_this,1,wall,[[],0]] call BIS_fnc_param;
_grafiti = [[]];
switch (_type) do {
case 0: { [_grafiti] spawn Larry_fnc_hideGraf};
case 1: {
    {
            if (_wall isEqualTo (_x select 0)) exitWith 
            {
                _graf = _x select 1;
            };
    } forEach _grafiti; 
    _graf hideObjectGlobal false;};
};
