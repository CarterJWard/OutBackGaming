/*
	Author: Maverick Applications
	Altis Life Intro Cam
*/

// Map configuration
class Maverick_IntroCam_Altis {
	class Info {
		secondsPerCam 	= 40;
		selectRandom 	= 0;
		music			= 1;
		musicVolume		= 0.8;
		musicName		= "cam_intro";
	};
	class Positions {
		data[] = {
			// Start pos, start target pos, end pos, end target pos, focus
			{{3291.26,13205.5,1.31894},{3305.16,13203.8,3.61894},{3315.9,13219.7,0.51876},{3350.41,13231.9,3.18779},5}
		};
	};
};
class Maverick_IntroCam_Tanoa {
	class Info {
		secondsPerCam 	= 30;
		music			= 1;
		musicVolume		= 0.8;
		musicName		= "cam_intro";
	};
	class Positions {
		data[] = {
			// Start pos, start target pos, end pos, end target pos, focus
			{{7536.88,9634.86,1.04907},{7548.25,9631.09,5.85541},{7530.79,9605.56,24.4457},{8403.7,8910.93,170.402},0.5},
			{{7095.83,11122.8,0.142052},{7099.96,11123.6,5.83911},{7109.68,11106.9,0.24205},{7125.99,11056.6,2.44202},10},
			{{11067.8,8435.91,1.25539},{11067.7,8465.66,0.400024},{11067.7,8465.66,0.400024},{11067.8,8478.64,37.3007},30},
			{{10505.7,6581.44,0.770596},{10516,6559.28,1.8706},{10504.7,6554.3,0.170596},{10524,6553.56,3.93291},10}
		};
	};
};
