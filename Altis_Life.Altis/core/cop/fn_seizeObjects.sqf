/*
	File: fn_seizeObjectsAction.sqf
	Author: Skalicon
	
	Description:

*/
_clear = nearestObjects [player,["weaponholder"],3];
_destroyed = 0;
for "_i" from 0 to count _clear - 1 
do
{
	_destroyed = _destroyed + 1;
	deleteVehicle (_clear select _i);
	sleep 0.056;
};

titleText[format["Odebrane %1 objekty.", _destroyed],"PLAIN"];
[[51, player, format["Odebrane %1 objekty.", _destroyed]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;