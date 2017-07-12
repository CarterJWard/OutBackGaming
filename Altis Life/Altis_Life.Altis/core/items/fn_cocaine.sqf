/*
	Author:Larry lancelot
*/

//Close inventory
closeDialog 0;


//Little hint then wait a litle before starting drugs effects
hint "Snort it up.";
sleep 2;

1 = ["ChromAberration", 200, [0.45, 0.75, true]] spawn {
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
	_handle ppEffectAdjust [0.005, 0.005, false];
	_handle ppEffectCommit 0.5;
	uiSleep 0.5;
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};

2 = ["RadialBlur", 100, [100, 0.54, 0.55, 0.5]] spawn {
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
	uiSleep 45;
	_handle ppEffectAdjust [0.01, 0.01, 0.06, 0.06];
	_handle ppEffectCommit 0.5;
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};