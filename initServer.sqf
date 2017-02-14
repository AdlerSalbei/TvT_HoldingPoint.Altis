if ("Preset" call BIS_fnc_getParamValue == 1) then {
    OPFORSPAWN = [14930.4,16482.7,0];
    publicVariable "OPFORSPAWN";
    hp_init_cityChosen = true;
    publicVariable "hp_init_cityChosen";
    
    _box = createVehicle ["Box_IND_AmmoVeh_F", OPFORSPAWN, [], 0, "can_Collide"];
    _box setPos OPFORSPAWN;
    _box enableSimulationGlobal false;
};

["Initialize", [true]] call BIS_fnc_dynamicGroups;

if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {[] execVM "tfarsettings.sqf";};
