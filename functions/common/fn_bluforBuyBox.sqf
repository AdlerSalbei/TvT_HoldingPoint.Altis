if (isServer) exitWith {};
_pos = ["spawnPosBlu"] call hp_fnc_getIslandCfgValue;
_box = createVehicle ["Box_EAST_AmmoVeh_F", _pos, [], 0, "can_Collide"];
_box enableSimulationGlobal false;

[_box] call hp_fnc_emptyContainer;
BLUFORBUYBOX = _box;
publicVariable "BLUFORBUYBOX";
