if (isServer) then {

_box = createVehicle ["Box_IND_AmmoVeh_F", OPFORSPAWN, [], 0, "can_Collide"];
_box setPos OPFORSPAWN;
_box enableSimulationGlobal false;

[_box] call hp_fnc_emptyContainer;
OPFORBUYBOX = _box;
publicVariable "OPFORBUYBOX";

}else{
	waitUntil {!isNil "OPFORBUYBOX"};
	[_box,"opf_" + hp_missionParam_OPFORFACTION + "_army",_box,_box,"Holding Position","Buy Equipment", {side player == EAST}] call grad_lbm_fnc_addInteraction;
};

