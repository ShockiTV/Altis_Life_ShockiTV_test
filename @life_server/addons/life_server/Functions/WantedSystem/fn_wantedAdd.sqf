/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{

	case "187V": {_type = ["Zabiti prejetim",6500]};
	case "187": {_type = ["Zabiti",8500]};
	case "901": {_type = ["Utek z vezeni",4500]};
	case "261": {_type = ["Znasilneni",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Pokus o znasilneni",3000]};
	case "215": {_type = ["Pokus o odcudzenie vozidla",2000]};
	case "213": {_type = ["Pouzitie nelegalnych vybusnin",10000]};
	case "212": {_type = ["Pokus o lupez",5000]};
	case "211": {_type = ["Lupez",20000]};
	case "207": {_type = ["Unos",3500]};
	case "207A": {_type = ["Pokus o unos",2000]};
	case "487": {_type = ["Grand Theft",1500]};
	case "488": {_type = ["Petty Theft",700]};
	case "480": {_type = ["Hit and run",1300]};
	case "481": {_type = ["Drug Possession",1000]};
	case "482": {_type = ["Intent to distribute",5000]};
	case "483": {_type = ["Drug Trafficking",9500]};
	case "459": {_type = ["Burglary",6500]};


	case "1": {_type = ["Rizeni bez licence",1500]};
	case "2": {_type = ["Pokus o kradez civilniho vozidla",3500]};
	case "3": {_type = ["Kradez civilniho vozidla",5000]};
	case "4": {_type = ["Jizda bez svetel",350]};
	case "5": {_type = ["Prekroceni rychlosti",3500]};
	case "6": {_type = ["Nebezpecna jizda",2500]};
	case "7": {_type = ["Pokus o kradez policejniho vozidla",7500]};
	case "8": {_type = ["Kradez policejniho vozidla",20000]};
	case "9": {_type = ["Pristani v bezletove zone",2500]};
	case "10": {_type = ["Rizeni nelegalniho vozidla",10000]};
	case "11": {_type = ["Utek z mista cinu",5000]};
	case "12": {_type = ["Utek pred policii",7500]};
	case "13": {_type = ["Prejeti civilisty",1500]};
	case "14": {_type = ["Nelegalni silnicni zataras",5000]};
	case "15": {_type = ["Odpor pri zatykani",5000]};
	case "16": {_type = ["Obchod s nelegalnim zbozim",25000]};
	case "17": {_type = ["Urazeni policisty",2500]};
	case "18": {_type = ["Obtezovani policisty",8000]};
	case "19": {_type = ["Vstup do zakazane zony",5000]};
	case "20": {_type = ["Zabiti policisty",25000]};
	case "21": {_type = ["Strelba na policistu/majetek",15000]};
	case "22": {_type = ["Niceni policejniho majetku",15000]};
	case "23": {_type = ["Nelegalni pasovani",12000]};
	case "24": {_type = ["Drzeni strelne zbrane bez licence",5000]};
	case "25": {_type = ["Noseni zbrane ve meste",2500]};
	case "26": {_type = ["Drzeni nelegalni zbrane",10000]};
	case "27": {_type = ["Strelba ve meste",10000]};
	case "28": {_type = ["Drzeni rukojmi",30000]};
	case "29": {_type = ["Utok na osobu/vozidlo",10000]};
	case "30": {_type = ["Vykradeni banky",200000]};
	case "31": {_type = ["Vrazda",60000]};
	case "32": {_type = ["Rebelstvi",35000]};
	case "33": {_type = ["Naruseni poradku",35000]};
	case "34": {_type = ["Oblehani hlavniho mesta",25000]};
	case "35": {_type = ["Pilotovani bez licence",1500]};
	case "36": {_type = ["Letani pod povolenou vyskou 150m",2000]};
	case "37": {_type = ["Utek z vezeni",25000]};    
	case "38": {_type = ["Caste troubeni",1000]};

//potialto su tresty

	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};

