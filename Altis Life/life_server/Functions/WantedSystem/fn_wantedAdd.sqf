/*
    File: fn_wantedAdd.sqf
    Author: Bryan "Tonic" Boardwine"
    Database Persistence By: ColinM
    Assistance by: Paronity
    Stress Tests by: Midgetgrimm

    Description:
    Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_pastCrimes","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if (_uid isEqualTo "" || _type isEqualTo "" || _name isEqualTo "") exitWith {}; //Bad data passed.

//What is the crime?
switch (_type) do
{
    case "1": {_type = ["1",5000]};
    case "2": {_type = ["2",7500]};
    case "3": {_type = ["3",10000]};
    case "4": {_type = ["4",7500]};
    case "5": {_type = ["5",10000]};
    case "6": {_type = ["6",20000]};
    case "7": {_type = ["7",10000]};
    case "8": {_type = ["8",1200]};
    case "9": {_type = ["9",8000]};
    case "10": {_type = ["10",5000]};
    case "11": {_type = ["11",15000]};
    case "12": {_type = ["12",5000]};
    case "13": {_type = ["13",5000]};
    case "14": {_type = ["14",10000]};
    case "15": {_type = ["15",10000]};
    case "16": {_type = ["16",30000]};
    case "17": {_type = ["17",20000]};
    case "18": {_type = ["18",50000]};
    case "19": {_type = ["19",200000]};
    case "481": {_type = ["481",5000]};
    case "481P": {_type = ["481P",10000]};
    case "20": {_type = ["20",15000]};
    case "483": {_type = ["483",20000]};
    case "21": {_type = ["21",30000]};
    case "22": {_type = ["22",5000]};
    case "211": {_type = ["211",36000]};
    case "23": {_type = ["23",30000]};
    case "24": {_type = ["24",50000]};
    case "25": {_type = ["25",200000]};
    case "26": {_type = ["26",10000]};
    case "27": {_type = ["27",20000]};
    case "28": {_type = ["28",30000]};
    case "29": {_type = ["29",50000]};
    case "482": {_type = ["482",30000]};
    case "30": {_type = ["30",80000]};
    case "31": {_type = ["31",3000]};
    case "32": {_type = ["32",100000]};
    case "33": {_type = ["33",50000]};
    case "187V": {_type = ["187V",75000]};
    case "34": {_type = ["34",50000]};
    case "187": {_type = ["187",75000]};
    case "35": {_type = ["35",100000]};
    case "36": {_type = ["36",50000]};
    case "37": {_type = ["37",5000]};
    case "38": {_type = ["38",50000]};
    case "487": {_type = ["487",15000]};
    case "459": {_type = ["459",20000]};
    case "215": {_type = ["215",10000]};
    case "901": {_type = ["901",20000]};
    case "39": {_type = ["39",20000]};
    case "40": {_type = ["40",40000]};
    case "41": {_type = ["41",30000]};
    case "42": {_type = ["42",75000]};
    case "43": {_type = ["43",90000]};
    case "44": {_type = ["44",75000]};
    case "45": {_type = ["45",800000]};
    case "46": {_type = ["46",900000]};
    case "47": {_type = ["47",1200000]};
    case "48": {_type = ["48", 50000]};
    default {_type = [];};
};

if (count _type isEqualTo 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if (_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.

_query = format["SELECT wantedID FROM wanted WHERE wantedID='%1'",_uid];
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
_val = [_type select 1] call DB_fnc_numberSafe;
_number = _type select 0;

if (count _queryResult != 0) then
{
    _crime = format["SELECT wantedCrimes, wantedBounty FROM wanted WHERE wantedID='%1'",_uid];
    _crimeresult = [_crime,2] call DB_fnc_asyncCall;
    _pastcrimess = [_crimeresult select 0] call DB_fnc_mresToArray;
    if (_pastcrimess isEqualType "") then {_pastcrimess = call compile format["%1", _pastcrimess];};
    _pastCrimes = _pastcrimess;
    _pastCrimes pushBack _number;
    _pastCrimes = [_pastCrimes] call DB_fnc_mresArray;
    _query = format["UPDATE wanted SET wantedCrimes = '%1', wantedBounty = wantedBounty + '%2', active = '1' WHERE wantedID='%3'",_pastCrimes,_val,_uid];
    [_query,1] call DB_fnc_asyncCall;
} else {
    _crimes = [_type select 0];
    _crimes = [_crimes] call DB_fnc_mresArray;
    _query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes, wantedBounty, active) VALUES('%1', '%2', '%3', '%4', '1')",_uid,_name,_crimes,_val];
    [_query,1] call DB_fnc_asyncCall;
};
