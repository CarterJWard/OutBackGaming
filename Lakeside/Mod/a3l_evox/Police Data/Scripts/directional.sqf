diag_log "LIGHTS WORKING";
private["_vcl","_lights","_light"];
_vcl = _this;
_lights = "\A3L_CVPI\Lightbar\commander.paa";
//_light = "#lightpoint" createVehicleLocal getpos _vcl;
//_light lightAttachObject [_vcl,[ 0.54, -0.27, 1.60 ]];
//_light setLightBrightness 0.25;


while {alive _vcl} do
{	
	_phasedirectional = _vcl animationPhase "ani_directional";

    switch (_phasedirectional) do {
	
	case (0.1): { // Warning = Flash lights 17 and 22 twice each
	
		//Turn on the 17
		_vcl setObjectTexture [17,_lights];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];	
		
		sleep 0.1;
		
		//Turn off the 17
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];	
		
		sleep 0.1;
		
		//Turn on the 17
		_vcl setObjectTexture [17,_lights];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		

        sleep 0.2;
			
		//Turn on the 21
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,_lights];		

		sleep 0.1;
		
		//Turn off the 21
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		

		sleep 0.1;
		
		//Turn on the 21
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,_lights];		
		
		sleep 0.2;
		 
		 
		
    };
	
	case (0.2): { // Flashing -> Alternating 17+19+21 with 18+20+22
	
		//Turn on the 17+19+21 and off the others
		_vcl setObjectTexture [17,_lights];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,_lights];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,_lights];		

        sleep 0.3;
	
		//Turn on the 18+20 and off the others
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,_lights];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,_lights];
		_vcl setObjectTexture [21,""];		
		
		 sleep 0.3;
	
	};
	
	case (0.3): { // Directional Right -> From 17 to 21 and 12 to 13

		//Turn on 11+12
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 17
		_vcl setObjectTexture [17,_lights];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		

        sleep 0.2;
		
		//Turn on 10+11
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 18
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,_lights];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		
		
		 sleep 0.2;
		 
		//Turn on 10+15
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,_lights];
	
		//Turn on the 19
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,_lights];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		

        sleep 0.2;
		
		//Turn on 14+15
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,_lights];
	
		//Turn on the 20
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,_lights];
		_vcl setObjectTexture [21,""];		
		
		 sleep 0.2;
	
		 //Turn on 13+14
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 21
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,_lights];		

        sleep 0.2;	
	};
	
	case (0.4): { // Directional Left -> From 21 to 17 and 13 to 12

		//Turn on 13+14
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 21
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,_lights];
		
		 sleep 0.2;
		 
		//Turn on 14+15
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,_lights];
	
		//Turn on the 20
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,_lights];
		_vcl setObjectTexture [21,""];		

        sleep 0.2;
		
		//Turn on 10+15
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,_lights];
	
		//Turn on the 19
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,_lights];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		
		
		 sleep 0.2;
	
		 //Turn on 10+11
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 18
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,_lights];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		

        sleep 0.2;
		
		//Turn on 11+12
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 17
		_vcl setObjectTexture [17,_lights];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		
		
		 sleep 0.2;	
	};
	
		case (0.5): { // Bidirectional -> From 19 to 17 and 21 and from 10 and 15 to 12 and 13

		//Turn on 10+15
		_vcl setObjectTexture [10,_lights];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,_lights];
	
		//Turn on the 19 and 20
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,_lights];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		

        sleep 0.4;
		
		//Turn on 11+14
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,_lights];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,_lights];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 18 and 21
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,_lights];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,_lights];
		_vcl setObjectTexture [21,""];		
		
		 sleep 0.4;
		 
		 //Turn on 12+13
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,_lights];
		_vcl setObjectTexture [13,_lights];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
	
		//Turn on the 17 and 22
		_vcl setObjectTexture [17,_lights];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,_lights];		

        sleep 0.4;

	};
	
	case (0): { // All Off
	
		// Check if directional is using lightbar and release it
		_vcl setObjectTexture [10,""];
		_vcl setObjectTexture [11,""];
		_vcl setObjectTexture [12,""];
		_vcl setObjectTexture [13,""];
		_vcl setObjectTexture [14,""];
		_vcl setObjectTexture [15,""];
	
		_vcl setObjectTexture [17,""];
		_vcl setObjectTexture [18,""];
		_vcl setObjectTexture [19,""];
		_vcl setObjectTexture [20,""];
		_vcl setObjectTexture [21,""];		
		
        waitUntil {_vcl animationPhase "ani_directional" != 0};
    };

	}; //END SWITCH
	sleep 0.01;
}; // END WHILE

_light setLightBrightness 0;
exit;