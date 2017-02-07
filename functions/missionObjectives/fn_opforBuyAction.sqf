if (!hasInterface) exitWith {};

_barrel = createVehicle ["MetalBarrel_burning_F", OPFORSPAWN, [], 0, "can_Collide"];
_barrel setPos OPFORSPAWN;
_barrel enableSimulationGlobal false;

"Land_WoodenCrate_01_stack_x5_F", OPFORSPAWN, [], 0, "can_Collide"];

[_box] call uo_fnc_emptyContainer;

[_box,"opf_" + uo_missionParam_OPFORFACTION + "_army",_box,_box,"Holding Position","Buy Equipment", {side player == EAST}] call grad_lbm_fnc_addInteraction;
