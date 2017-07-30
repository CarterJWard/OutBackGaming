	/*
	Name: lightbar
	Description: Everything required to get the lightbar to work
	Author: Tisor - And edited by Caiden from A3L
	*/

diag_log "LIGHTS WORKING";
private["_vcl","_lights","_light"];
_vcl = _this;
_lights = "\A3L_CVPI\Lightbar\commander.paa";
//_light = "#lightpoint" createVehicleLocal getpos _vcl;
//_light lightAttachObject [_vcl,[ 0.54, -0.27, 1.60 ]];
//_light setLightBrightness 0.35;



_light = (alive _vcl);


while {alive _vcl} do {

	_phase = _vcl animationPhase "ani_lightbar";
	_phasetakedown = _vcl animationPhase "ani_takedown";
	_phasedirectional = _vcl animationPhase "ani_directional";

    switch (_phase) do {
	
	case (0.1): { // Mode 1 + 2 NOW -> Double flash for every color. 
	
		//TURN ON BLUE
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];

		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];

		sleep 0.1;
	
		//TURN ON RED
	    _vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,_lights];
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		sleep 0.1;
		
			
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,_lights];
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		
		sleep 0.2;
		
		//TURN ON BLUE
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];

		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];

		sleep 0.1;
		
		//TURN ON RED
	    _vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		sleep 0.1;
		
			
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,_lights];
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		
		sleep 0.2;
		
		//TURN ON BLUE
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];

		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];

		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
	
	    _vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,_lights];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [25,""]; 
		_vcl setObjectTexture [26,""];
		sleep 0.1;
		
			
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
		
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,_lights];
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		};
		_vcl setObjectTexture [16,_lights];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,_lights];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,_lights];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,_lights];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then  { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 11+12
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		//Turn on 10+11
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 10+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		//Turn on 14+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 13+14
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		//Turn on 14+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 10+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		 //Turn on 10+11
		 if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 11+12
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		//Turn on 10+11
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 10+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		//Turn on 14+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 13+14
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		//Turn on 14+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 10+15
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,_lights];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,_lights];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,_lights];
        _vcl setObjectTexture [6,_lights];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,_lights];
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,_lights]; 
		_vcl setObjectTexture [25,""];
		 //Turn on 10+11
		 if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;
		
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,_lights];
        _vcl setObjectTexture [4,_lights];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,_lights];
		_vcl setObjectTexture [9,""];
		_vcl setObjectTexture [16,_lights];
		
		_vcl setObjectTexture [25,_lights]; 
		_vcl setObjectTexture [26,""];
		//Turn on 11+12
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
		};
		
		sleep 0.1;

	};
	
	case (0): {
		_vcl setObjectTexture [1,""];
		if (_phasetakedown == 0) then { // Check if takedown are in their own thing
        _vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		};
        _vcl setObjectTexture [3,""];
        _vcl setObjectTexture [4,""];
        _vcl setObjectTexture [5,""];
        _vcl setObjectTexture [6,""];
		_vcl setObjectTexture [8,""];
		_vcl setObjectTexture [9,""];
		if (_phasedirectional < 0.3) then { // Check if directional is using the lightbar
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [15,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		};
		_vcl setObjectTexture [16,""];
		_vcl setObjectTexture [26,""]; 
		_vcl setObjectTexture [25,""];

        waitUntil {_vcl animationPhase "ani_lightbar" != 0};
    };

	}; //END CASE
	Sleep 0.01;
	}; // END WHILE
	

exit;