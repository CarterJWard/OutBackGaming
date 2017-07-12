/*
	Author:Larry lancelot
*/

//Close inventory
closeDialog 0;

hint "Let's go for a ride";
sleep 2;

1 = ["ColorCorrections", 1500, [
	1, 
	0.4, 
	0, 
	0, 0, 0, 0, 
	0.5, 0.8, 0.36, 0, 
	1, 1, 1, 0
]] spawn {
	params ["_name", "_priority", "_effect", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust _effect;
	_handle ppEffectCommit 2;
	waitUntil {ppEffectCommitted _handle};
	uiSleep 49; 
	comment "admire effect for a sec";
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};

1 = ["ChromAberration", 200, [0.15, 0.55, true]] spawn {
	params ["_name", "_priority", "_effect", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust _effect;
	_handle ppEffectCommit 5;
	waitUntil {ppEffectCommitted _handle};
	uiSleep 46; 
	comment "admire effect for a sec";
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};

2 = ["RadialBlur", 100, [100, 0.9, 0.8, 0.5]] spawn {
	params ["_name", "_priority", "_effect", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust _effect;
	_handle ppEffectCommit 5;
	waitUntil {ppEffectCommitted _handle};
	uiSleep 25; 
	comment "admire effect for a sec";
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};
uiSleep 25;
3 = ["RadialBlur", 100, [100, 0.7, 0.72, 0.5]] spawn {
	params ["_name", "_priority", "_effect", "_handle"];
	while {
		_handle = ppEffectCreate [_name, _priority];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust _effect;
	_handle ppEffectCommit 5;
	waitUntil {ppEffectCommitted _handle};
	uiSleep 20; 
	comment "admire effect for a sec";
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};