//init
[] call hp_fnc_setMissionParams;
[] call hp_fnc_setOriginalSide;
[{missionNamespace getVariable ["hp_init_missionParamsDone", false]}, {[] call hp_fnc_initPubVars}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_missionParamsDone", false]}, {[] call hp_fnc_initLoadoutFaction}, []] call CBA_fnc_waitUntilAndExecute;;

//setup on mission start
[{missionNamespace getVariable ["hp_init_missionParamsDone", false]}, {[] call hp_fnc_setCommandVehicleClass}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_missionParamsDone", false]}, {[] call hp_fnc_setTime}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_missionParamsDone", false]}, {[] call hp_fnc_setWeather}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_missionParamsDone", false]}, {[] call hp_fnc_setupCountdown}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_pubVarsDone", false]}, {[] call hp_fnc_chooseCity}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_pubVarsDone", false]}, {[] call hp_fnc_chooseSpawn}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_pubVarsDone", false]}, {[] call hp_fnc_setMoney}, []] call CBA_fnc_waitUntilAndExecute;

//report
if (isServer) then {[{["PRINT", "SERVER_SETUP"] call hp_fnc_diagReport}, [], 15] call CBA_fnc_waitAndExecute};

//setup after player choices
[{missionNamespace getVariable ["hp_init_cityChosen", false]}, {[] call hp_fnc_playAreaSetup}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_playAreaSetupDone", false]}, {[] call hp_fnc_findOpfStartPos}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_opforSpawnSet", false]}, {[EAST] call hp_fnc_tpSide}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_bluforSpawnSet", false]}, {[WEST] call hp_fnc_tpSide}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_spawnChosen", false]}, {[BLUFORSPAWN] call hp_fnc_createCommandVehicle}, []] call CBA_fnc_waitUntilAndExecute;
[{!isNil "OPFORSPAWN"}, {[] call hp_fnc_createTrigger}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_cvCreated", false]}, {[] call hp_fnc_findBluStartPos}, []] call CBA_fnc_waitUntilAndExecute;

//start ending checks
[{missionNamespace getVariable ["hp_init_gamestarted", false]}, {[] call hp_fnc_saveTeammembers}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_gamestarted", false]}, {[] call hp_fnc_checkBluKilled}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_gamestarted", false]}, {[] call hp_fnc_checkOpfKilled}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_gamestarted", false]}, {[] call hp_fnc_checkDefense}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_gamestarted", false]}, {[] call hp_fnc_checkCapture}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_gamestarted", false]}, {[] call hp_fnc_endMission}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["hp_init_gamestarted", false]}, {[[EAST],"BLUFOR SPAWNED","Game started."] call hp_fnc_sideNotification}, []] call CBA_fnc_waitUntilAndExecute;
