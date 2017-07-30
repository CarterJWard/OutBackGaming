	/*
	Name: sirens
	Description: Everything required to get the lightbar to work
	Author: Tisor for A3L
	*/

diag_log "SIRENS WORKING";
private["_vcl"];

_vcl = _this;


while {alive _vcl} do {


	if (!isNull driver _vcl && _vcl animationPhase "ani_siren" > 0 && getdammage _vcl < 0.7 && _vcl animationPhase "ani_lightbar" > 0) then {			
		_phase = _vcl animationPhase "ani_siren";
		
		switch (_phase) do {
			case (0.2): {
				_vcl say3D "WailRumbler";
				sleep 23.11;
			};
			
			case (0.4): {
				_vcl say3D "YelpRumbler";
				sleep 14.22;
			};
			
			case (0.6): {
				_vcl say3D "Siren3";
				sleep 3.668;
			};
		
		};
		
	} else {
		waitUntil {sleep 2; (_vcl animationPhase "ani_siren" > 0 && getdammage _vcl < 0.7 && _vcl animationPhase "ani_lightbar" > 0)};
	};	
};

exit;