/*
    File: fn_houseConfig.sqf
    Author: BoGuu // Larry

    Description:
    Fetch data from Config_Housing/Garages
*/

private _house = param [0,"",[""]]; 

if (_house isEqualTo "") exitWith {[]}; 

private _gasConfig = missionConfigFile >> "Gas" >> worldName >> _house; 

private _config = [_gasConfig] select {isClass _x};

if (_config isEqualTo []) exitWith {[]};

_config = _config select 0; 
private _price = getNumber(_config >> "price"); 

//Return
[_price]
