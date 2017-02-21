if (!hasInterface) exitWith {};
if (player getVariable ["originalSide", "UNKNOWN"] != "WEST") exitWith {};
if (missionNamespace getVariable ["hp_init_spawnChosen", false]) exitWith {};

[{!isNull (findDisplay 46)}, {
    openMap [true, true];
    [] call hp_fnc_bluforWaitDialog;
}, []] call CBA_fnc_waitUntilAndExecute;


if (isNil "bluforcommander") exitWith {};
if (player != bluforcommander) exitWith {};


[{SETUPTIMEREMAINING <= 0}, {
    ["Blufor Commander %1 is now choosing a city.", profileName] call hp_fnc_serverLog;

    //MAPCLICK EVENT ===============================================================
    slb_chooseSpawnClick = [
        "slb_chooseSpawn",
        "onMapSingleClick",
        {
            [WEST,"spawnMarker",true,_pos,"hd_start","COLORWEST"] call hp_fnc_createSideMarker;
            BLUFORSPAWN = _pos;
        }
    ] call BIS_fnc_addStackedEventHandler;

    //CONFIRM SELECTION ============================================================
    slb_onSpawnKeyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", {
        if ((_this select 1 == 28)||(_this select 1 == 156)) then {
            if (isNil "BLUFORSPAWN") then {
                ["PLEASE CHOOSE A SPAWN POSITION BY CLICKING ON THE MAP"] call hp_ui_fnc_confirmHint;

            } else {
                //position not in blue area
                if (OPFORSPAWN distance BLUFORSPAWN < BLUFORSPAWNBAND) then {
                    ["PLEASE CHOOSE A SPAWN POSITION OUTSIDE THE BLUE RING"] call hp_ui_fnc_confirmHint;
                } else {

                    //position in water
                    if (surfaceIsWater BLUFORSPAWN) then {
                        ["PLEASE CHOOSE A SPAWN POSITION ON LAND"] call hp_ui_fnc_confirmHint;
                    } else {

                        //position successfully chosen
                        ["fn_chooseSpawn - %1 chose spawn at %2.", profileName, BLUFORSPAWN] call hp_fnc_serverLog;

						[player, 6] call grad_lbm_fnc_setPermissionLevel;
						_boxPos = [BLUFORSPAWN] call hp_fnc_findRandomPos;
						BLUFORBUYBOX setPos _boxPos;
						
						hp_init_spawnChosen = true;
                        publicVariable "hp_init_spawnChosen";
                        publicVariable "BLUFORSPAWN";
			
						[WEST,"spawnMarker"] call hp_fnc_deleteSideMarker;	

                        ["slb_chooseSpawn", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
                        (findDisplay 46) displayRemoveEventHandler ["KeyDown", slb_onSpawnKeyDown];
                    };
                };
            };
        };
    }];
}, []] call CBA_fnc_waitUntilAndExecute;
