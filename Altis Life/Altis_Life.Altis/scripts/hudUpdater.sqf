/*
	Author: !TS JORDAN
    File: fn_hudUpdater.sqf
    Des: Sefl Explanitory
*/

_i = 0;
while {(_i < 9999)} do	{
	_j = 0;
	while {(_j < 9999)} do	{
		_k = 0;
		while {(_k < 9999)} do	{
			[] execVM "scripts\custHud.sqf";
			sleep 1;
			_k = __k + 1;
		};
		_j = _j + 1;
	};
	_i = _i + 1;
};