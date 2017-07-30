diag_log "LIGHTS WORKING";
// {"lb-front-bumper-right", "lb-front-bumper-left", "lb-front-center", "lb-front-1", "lb-front-2", "lb-front-3", "lb-front-4", "lb-front-5", "lb-back-left", "lb-back-right", "lb-back-center-left", "lb-back-center-right"};
//              0 						1					2				3				4				5			6			7				8				9				10							11
private["_vcl","_lights","_light"];
_vcl = _this;
_lights = "\A3L_CVPI\PoliceData\commander.paa";
//_light = "#lightpoint" createVehicleLocal getpos _vcl;
//_light lightAttachObject [_vcl,[ 0.54, -0.27, 1.60 ]];
//_light setLightBrightness 0.25;

while {alive _vcl} do
{	_phase = _vcl animationPhase "ani_alley";
	
	/*hint format["AnimationPhase: %1", _phase];*/
	
    switch (_phase) do {
	
	case (0.1): { // Alternative Flash
	
		_vcl setObjectTexture [23,_lights];
		_vcl setObjectTexture [24,""];
		
	
		sleep 0.5;
		
		_vcl setObjectTexture [23,""];
		_vcl setObjectTexture [24,_lights];
		
		
		sleep 0.5;
		

		
		
    };
	
	case (0.2): { // Both Flash
	
		_vcl setObjectTexture [23,_lights];
		_vcl setObjectTexture [24,_lights];
		
		sleep 1;
		
		_vcl setObjectTexture [23,""];
		_vcl setObjectTexture [24,""];
		
		sleep 1;
	
	};
	
	case (0.3): { // Both ON

		_vcl setObjectTexture [23,_lights];
		_vcl setObjectTexture [24,_lights];
		waitUntil {_vcl animationPhase "ani_alley" != 0.3};
		
	};
	

	
	case (0): { // Both OFF
        _vcl setObjectTexture [23,""];
        _vcl setObjectTexture [24,""];

        waitUntil {_vcl animationPhase "ani_alley" != 0};
    };

	}; //END CASE
	sleep 0.01;
	}; // END WHILE
exit;