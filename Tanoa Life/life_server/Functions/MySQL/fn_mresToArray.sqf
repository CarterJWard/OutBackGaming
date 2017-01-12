params[["_array","",[""]]];
if (_array isEqualTo "") exitWith {[]};
_array = toArray(_array);

private _indexes = [];
private _p = 0;

for "_i" from 0 to (count _array)-1 do {
    _sel = _array select _i;
    if (_sel == 96) then
    {
        _array set[_i,39];
        if (!(_p isEqualTo 2) && {_array select (_i - 1) isEqualTo 39}) then {
            _indexes pushBack _i;
            _p = _p + 1;
        } else {
            if (_p isEqualTo 2) then {_p = 0;};
        };
    };
};

if !(_indexes isEqualTo []) then {
    private _y = 0;
    {
        _array deleteAt (_x - _y);
        _y = _y + 1;
        false
    } count _indexes;
};

_array = toString(_array);
_array = call compile format["%1", _array];
_array;