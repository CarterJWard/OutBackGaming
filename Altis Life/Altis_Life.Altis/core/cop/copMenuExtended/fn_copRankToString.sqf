/*
    File: fn_copRankToString.sqf
    Author: !TS JORDAN
    Descriptiong: Converts cop level int to the coresponding string value.
*/

params [
    ["_rank",0,[0]]
];

_return = switch (_rank) do {
	case 1: {"Cadet"};
	case 2: {"Constable"};
	case 3: {"Snr Constable"};
	case 4: {"Sargant"};
	case 5: {"LT"};		
	case 6: {"Inspector"};
	case 7: {"Captain"};
	default {""};
};

_return;
