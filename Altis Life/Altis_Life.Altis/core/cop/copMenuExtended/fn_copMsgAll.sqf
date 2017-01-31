/*
    File: fn_copMsgAll.sqf
    Author: !TS JORDAN
*/
private["_msg", "_from"];

_msg = ctrlText 26520;
_from = player getVariable ["realname",name _player];

if (_msg isEqualTo "") exitWith {
	hint "Please enter a message to send";
};

{
	hint parseText format["<t color='#FA4F4F'><t align='center'><t size='1.5'>Public Service Announcment.</t></t></t><br/><t size='1.25'>From officer: %1</t><br/><br/><t size='1.0'>%2</t>", _from, _msg];
}forEach playableUnits;