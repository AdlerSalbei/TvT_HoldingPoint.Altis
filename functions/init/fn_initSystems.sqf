//init
[] call uo_fnc_setMissionParams;
[] call uo_fnc_setOriginalSide;
[{missionNamespace getVariable ["uo_init_missionParamsDone", false]}, {[] call uo_fnc_initPubVars}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_missionParamsDone", false]}, {[] call uo_fnc_initLoadoutFaction}, []] call CBA_fnc_waitUntilAndExecute;;

//setup on mission start
[{missionNamespace getVariable ["uo_init_missionParamsDone", false]}, {[] call uo_fnc_setCommandVehicleClass}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_missionParamsDone", false]}, {[] call uo_fnc_setTime}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_missionParamsDone", false]}, {[] call uo_fnc_setWeather}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_missionParamsDone", false]}, {[] call uo_fnc_setupCountdown}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_pubVarsDone", false]}, {[] call uo_fnc_setLocationMarkers}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_pubVarsDone", false]}, {[] call uo_fnc_chooseCity}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_pubVarsDone", false]}, {[] call uo_fnc_chooseSpawn}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_pubVarsDone", false]}, {[] call uo_fnc_setMoney}, []] call CBA_fnc_waitUntilAndExecute;

//exit JIP
if (hasInterface && missionNamespace getVariable ["uo_init_gamestarted", false] && {(playerSide == WEST && _westCondition) || (playerSide == EAST && _eastCondition)}) exitWith {player setDamage 1};

//report
if (isServer) then {[{["PRINT", "SERVER_SETUP"] call uo_fnc_diagReport}, [], 15] call CBA_fnc_waitAndExecute};

//setup after player choices
[{missionNamespace getVariable ["uo_init_cityChosen", false]}, {[] call uo_fnc_playAreaSetup}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_cityChosen", false]}, {[] call uo_fnc_initCivs}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_playAreaSetupDone", false]}, {[] call uo_fnc_findOpfStartPos}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_opforSpawnSet", false]}, {[EAST] call uo_fnc_tpSide}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_bluforSpawnSet", false]}, {[WEST] call uo_fnc_tpSide}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_spawnChosen", false]}, {[BLUFORSPAWN] call uo_fnc_createCommandVehicle}, []] call CBA_fnc_waitUntilAndExecute;
[{!isNil "OPFORSPWAN"}, {[] call uo_fnc_createTrigger}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_cvCreated", false]}, {[] call uo_fnc_findBluStartPos}, []] call CBA_fnc_waitUntilAndExecute;

//start ending checks
[{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[] call uo_common_fnc_saveTeammembers}, []] call CBA_fnc_waitUntilAndExecute;
    [{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[] call uo_missionstart_fnc_createLegendMarkers}, []] call CBA_fnc_waitUntilAndExecute;
    [{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[] call uo_endings_fnc_checkBluKilled}, []] call CBA_fnc_waitUntilAndExecute;
    [{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[] call uo_endings_fnc_checkOpfKilled}, []] call CBA_fnc_waitUntilAndExecute;
    [{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[] call uo_endings_fnc_checkDefense}, []] call CBA_fnc_waitUntilAndExecute;
    [{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[] call uo_endings_fnc_checkCapture}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[] call uo_endings_fnc_endMission}, []] call CBA_fnc_waitUntilAndExecute;
[{missionNamespace getVariable ["uo_init_gamestarted", false]}, {[[EAST],"BLUFOR SPAWNED","Game started."] call uo_common_fnc_sideNotification}, []] call CBA_fnc_waitUntilAndExecute;
