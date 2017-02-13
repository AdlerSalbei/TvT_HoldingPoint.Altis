if (!hasInterface) exitWith {};
if (player getVariable ["originalSide", "UNKNOWN"] != "WEST") exitWith {};
if (missionNamespace getVariable ["uo_init_spawnChosen", false]) exitWith {};

[{!isNull (findDisplay 46)}, {
    openMap [true, true];
    [] call uo_fnc_bluforWaitDialog;
}, []] call CBA_fnc_waitUntilAndExecute;


if (isNil "bluforcommander") exitWith {};
if (player != bluforcommander) exitWith {};


[{SETUPTIMEREMAINING <= 0}, {
    ["Blufor Commander %1 is now choosing a city.", profileName] call uo_fnc_serverLog;

    //MAPCLICK EVENT ===============================================================
    mcd_chooseSpawnClick = [
        "mcd_chooseSpawn",
        "onMapSingleClick",
        {
            [WEST,"spawnMarker",true,_pos,"hd_start","COLORWEST"] call uo_fnc_createSideMarker;
            BLUFORSPAWN = _pos;
        }
    ] call BIS_fnc_addStackedEventHandler;

    //CONFIRM SELECTION ============================================================
    mcd_onSpawnKeyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", {
        if ((_this select 1 == 28)||(_this select 1 == 156)) then {
            if (isNil "BLUFORSPAWN") then {
                ["PLEASE CHOOSE A SPAWN POSITION BY CLICKING ON THE MAP"] call uo_ui_fnc_confirmHint;

            } else {
                //position not in blue area
                if (OPFORSPAWN distance BLUFORSPAWN < BLUFORSPAWNBAND) then {
                    ["PLEASE CHOOSE A SPAWN POSITION OUTSIDE THE BLUE RING"] call uo_ui_fnc_confirmHint;
                } else {

                    //position in water
                    if (surfaceIsWater BLUFORSPAWN) then {
                        ["PLEASE CHOOSE A SPAWN POSITION ON LAND"] call uo_ui_fnc_confirmHint;
                    } else {

                        //position successfully chosen
                        ["fn_chooseSpawn - %1 chose spawn at %2.", profileName, BLUFORSPAWN] call uo_fnc_serverLog;

                        uo_init_spawnChosen = true;
                        publicVariable "uo_init_spawnChosen";
                        publicVariable "BLUFORSPAWN";
			
						[WEST,"spawnMarker"] call uo_fnc_deleteSideMarker;	

                        ["mcd_chooseSpawn", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
                        (findDisplay 46) displayRemoveEventHandler ["KeyDown", mcd_onSpawnKeyDown];
                    };
                };
            };
        };
    }];
}, []] call CBA_fnc_waitUntilAndExecute;
