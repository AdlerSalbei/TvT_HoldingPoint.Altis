if (!hasInterface) exitWith {};
if (player getVariable ["originalSide", "UNKNOWN"] != "EAST") exitWith {};
if (missionNamespace getVariable ["hp_init_cityChosen", false]) exitWith {};

[{!isNull (findDisplay 46)}, {
    openMap [true, true];
    [] call hp_fnc_opforWaitDialog;

    if (isNil "opforcommander") exitWith {};
    if (player != opforcommander) exitWith {};

    ["Opfor Commander %1 is now choosing a point.", profileName] call hp_fnc_serverLog;

    //MAPCLICK EVENT ===============================================================
    slb_chooseCityClick = [
        "slb_chooseCity",
        "onMapSingleClick",
        {
            [EAST,"selectionMarker",true,_pos,"hd_start","ColorRed"] call hp_fnc_createSideMarker;
			OPFORSPAWN = _pos;
        }
    ] call BIS_fnc_addStackedEventHandler;

    //CONFIRM SELECTION ============================================================
    slb_onCityKeyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", {
        if ((_this select 1 == 28)||(_this select 1 == 156)) then {
            if (isNil "OPFORSPAWN") then {
                ["PLEASE CHOOSE A LOCATION!"] call hp_ui_fnc_confirmHint;

            } else {
			
				if (surfaceIsWater OPFORSPAWN) then {
                    ["PLEASE CHOOSE A SPAWN POSITION ON LAND"] call hp_ui_fnc_confirmHint;
                } else {
					["fn_chooseCity - %1 chose location %2", profileName, str OPFORSPAWN] call hp_fnc_serverLog;
					[EAST,"selectionMarker"] call hp_fnc_deleteSideMarker;

					hp_init_cityChosen = true;
					publicVariable "hp_init_cityChosen";
					publicVariable "OPFORSPAWN";
					[] remoteExec ["hp_fnc_opforBuyAction",0,true];
					
					["slb_chooseCity", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
					(findDisplay 46) displayRemoveEventHandler ["KeyDown", slb_onCityKeyDown];
				};
            };
        };
    }];
}, []] call CBA_fnc_waitUntilAndExecute;
