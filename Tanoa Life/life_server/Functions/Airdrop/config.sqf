/*
	@file Version: 1.0.0.0
	@file Author: RYN_Ryan
	@file edit: 20.01.2015
	Copyright � 2015 Ryan Torzynski, All rights reserved
	All servers are allowed to use this code, modify and publish it. Every modified release of this script must contain "Original by RTT"
*/
airdrop_helicopter_main = "B_Heli_Transport_03_unarmed_F";
airdrop_helicopter_scnd = "B_Heli_Attack_01_F";
airdrop_chance = 100;
//Cords Of Were To Do The Drops
airdrop_positions = [[3869.14,12586.25,0],[2093.86,7904.97,0],[8445.84,8638.766,0],[12917.693,9519.59,0]];
_airdrop_time_interval = [1,2]; //Time given in hours, this is the interval in which the airdrop should take place

// Do not modify the following code
airdrop_time_min = _airdrop_time_interval select 0;
airdrop_time_max = _airdrop_time_interval select 1;
airdrop_time_min = airdrop_time_min*3600;
airdrop_time_max = airdrop_time_max*3600;

if (airdrop_time_min>=airdrop_time_max) exitWith {airdrop_enable=false;};
airdrop_enable=true;
airdrop_goingon=false;