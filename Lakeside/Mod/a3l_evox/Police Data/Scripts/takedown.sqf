diag_log "LIGHTS WORKING";
// {"lb-front-bumper-right", "lb-front-bumper-left", "lb-front-center", "lb-front-1", "lb-front-2", "lb-front-3", "lb-front-4", "lb-front-5", "lb-back-left", "lb-back-right", "lb-back-center-left", "lb-back-center-right"};
//              0 						1					2				3				4				5			6			7				8				9				10							11
private["_vcl","_lights","_light"];
_vcl = _this;
_lights = "\A3L_CVPI\Lightbar\commander.paa";
_light = "#lightpoint" createVehicleLocal getpos _vcl;
_light lightAttachObject [_vcl,[ 0.54, -0.27, 1.60 ]];
_light setLightBrightness 0.25;

while {alive _vcl} do
{	_phase = _vcl animationPhase "ani_takedown";
	
	/*hint format["AnimationPhase: %1", _phase];*/
	
    switch (_phase) do {
	
	case (0.1): { // Alternative Flash
	
		_vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		
		sleep 0.1;
		
		_vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		
		sleep 0.1;
	
		_vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,""];
		
		sleep 0.2;
		
		_vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		
		sleep 0.1;
		
		_vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		
		sleep 0.1;
	
		_vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,_lights];
		
		sleep 0.2;
		

		
		
    };
	
	case (0.2): { // Both Flash
	
		_vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,_lights];
		
		sleep 0.1;
		
		_vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		
		sleep 0.1;
	
		_vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,_lights];
		
		sleep 0.1;
		
		_vcl setObjectTexture [2,""];
		_vcl setObjectTexture [7,""];
		
		sleep 0.3;
	
	};
	
	case (0.3): { // Both ON

		_vcl setObjectTexture [2,_lights];
		_vcl setObjectTexture [7,_lights];
		waitUntil {_vcl animationPhase "ani_takedown" != 0.3};
		
	};
	

	
	case (0): {
        _vcl setObjectTexture [2,""];
        _vcl setObjectTexture [7,""];

        waitUntil {_vcl animationPhase "ani_takedown" != 0};
    };

	}; //END CASE
	}; // END WHILE

exit;