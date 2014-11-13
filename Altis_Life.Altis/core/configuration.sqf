#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system
*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,750);
__CONST__(life_impound_air,2000);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 10000000; //Starting Bank Money
		life_paycheck = 100000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 10000000; //Starting Bank Money
		life_paycheck = 100000; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 10000000;
		life_paycheck = 100000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..
life_illegal_vehicles = ["O_MRAP_02_F"];  //custom illegal vehicle field
life_illegal_weapons = ["arifle_sdar_F","hgun_P07_snds_F","arifle_MX_F","SMG_02_ACO_F","hgun_ACPC2_F","arifle_MXC_F","arifle_TRG20_F","arifle_Katiba_F","srifle_DMR_01_F"]; //custom illegal weapon field
life_legal_weapons = ["hgun_Rook40_F","hgun_Pistol_heavy_02_F","hgun_ACPC2_F","hgun_PDW2000_F"];

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1850],["heroinp",3500],["cocaine",2500],["cocainep",4000],["marijuana",1950],["turtle",5000],["blastingcharge",10000],["boltcutter",500],["goldbar",95000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",60],
	["heroinu",1850],
	["heroinp",3500],
	["salema",65],
	["ornate",60],
	["mackerel",200],
	["tuna",750],
	["mullet",275],
	["catshark",330],
	["rabbit",70],
	["oilp",2800],
	["turtle",5000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",1950],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",65],
	["cocaine",2500],
	["cocainep",4000],
	["diamond",650],
	["diamondc",1800],
	["iron_r",1750],
	["copper_r",1550],
	["salt_r",1150],
	["glass",1150],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1500],
	["goldbar",95000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",70],
	["rabbit",80],
	["salema",70],
	["ornate",65],
	["mackerel",205],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",20],
	["turtle",5500],
	["turtlesoup",2500],
	["donuts",100],
	["coffee",20],
	["tbacon",85],
	["lockpick",450],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",75],
	["spikeStrip",2500],
	["blastingcharge",50000],
	["boltcutter",10000],
	["defusekit",2500],
	["storagesmall",150000],
	["storagebig",300000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",10000],
	["hgun_P07_snds_F",850],
	["hgun_P07_F",2000],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",75],
	["Medikit",450],
	["NVGoggles",1000],
	["16Rnd_9x21_Mag",30],
	["20Rnd_556x45_UW_mag",45],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",2000],
	["arifle_Katiba_F",20000],
	["30Rnd_556x45_Stanag",85],
	["20Rnd_762x51_Mag",100],
	["30Rnd_65x39_caseless_green",75],
	["DemoCharge_Remote_Mag",10000],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",550],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",575],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",17000],
	["SMG_01_F",2000],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30],
	["srifle_DMR_01_F",25000],
	["hgun_Pistol_heavy_02_F",3000],
	["hgun_ACPC2_F",5000],
	["hgun_PDW2000_F",7000]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",6750],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",300000],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",16500],
	["B_Truck_01_transport_F",45000],
	["B_Truck_01_box_F", 56250],
	["O_MRAP_02_F",101250],
	["B_Heli_Light_01_F",42000],
	["O_Heli_Light_02_unarmed_F",120000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
    ["O_Truck_03_covered_F",41250],
    ["O_Truck_03_transport_F",33750],
    ["O_Truck_03_device_F",102000],
	["B_MRAP_01_F",7500],
	["I_MRAP_03_F",85500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",1000000],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",137500],
	["B_Truck_01_box_F", 187500],
	["O_MRAP_02_F",375000],
	["B_Heli_Light_01_F",180000],
	["O_Heli_Light_02_unarmed_F",400000],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
    ["O_Truck_03_device_F",340000],
    ["O_Truck_03_covered_F",137500],
    ["O_Truck_03_transport_F",112500],
	["B_MRAP_01_F",10000],
	["I_MRAP_03_F",285000]
];
__CONST__(life_garage_sell,life_garage_sell);