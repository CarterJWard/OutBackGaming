/*
Opens the gate
*/
diag_log "Gate started";
{ if (_x animationPhase "Door_1_rot" == 1) then {
		_x animate ["Door_1_rot", 0];
	} else {
		_x animate ["Door_1_rot", 1];
	};
} forEach (nearestObjects [player, ["Land_BarGate_F"], 15]);
diag_log "gate finished";