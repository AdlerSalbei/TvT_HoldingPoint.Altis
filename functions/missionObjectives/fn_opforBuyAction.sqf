params ["_dealer"];

if (!hasInterface) exitWith {};

_randomPos = OPFORSPAWN vectorAdd [0.5 + random 1,0.5 + random 1,0.2];
_barrel = createVehicle ["Land_BarrelEmpty_F", _randomPos, [], 0, "can_Collide"];
[_barrel,"opf_" + uo_missionParam_OPFORFACTION + "_army",_barrel,_barrel,"Holding Position","Buy Equipment", {side player == EAST}] call grad_lbm_fnc_addInteraction;

