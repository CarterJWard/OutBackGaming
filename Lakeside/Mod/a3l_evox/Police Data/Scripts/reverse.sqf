diag_log "REVERSE LIGHTS WORKING";
private["_vcl", "velocidad"];

_vcl = _this;
_lights = "\A3L_CVPI\data\9464a026_lightson.paa";


while {alive _vcl} do {

	_velocidad = speed _vcl;

	if (_velocidad < 0) then {			

		_vcl setObjectTexture [37,_lights];
		//waitUntil {(speed _vcl > 0)};
		sleep 1;
		
	} else {
		_vcl setObjectTexture [37,""];
		sleep 1;
	};	
	sleep 0.01;
};

exit;