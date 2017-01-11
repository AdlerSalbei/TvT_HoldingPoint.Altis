if (!hasInterface) exitWith {};
if (player getVariable ["originalSide", "UNKNOWN"] != "EAST") exitWith {};


[{!isNull (findDisplay 46)}, {
    openMap [true, false];
    [] call uo_fnc_opforWaitDialog;

    if (isNil "opforcommander") exitWith {};
    if (player != opforcommander) exitWith {};

    ["Opfor Commander %1 is now choosing a point.", profileName] call uo_fnc_serverLog;

    //MAPCLICK EVENT ===============================================================
    mcd_chooseCityClick = [
        "mcd_chooseCity",
        "onMapSingleClick",
        {
			OPFORSPAWN = _pos;
			diag_log format ["Pos: %1", _pos];
            [EAST,"selectionMarker",true,_pos,"hd_start","ColorGreen"] call uo_fnc_createSideMarker;
        }
    ] call BIS_fnc_addStackedEventHandler;

    //CONFIRM SELECTION ============================================================
    mcd_onCityKeyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", {
        if ((_this select 1 == 28)||(_this select 1 == 156)) then {
            if (isNil "OPFORSPAWN") then {
                ["PLEASE CHOOSE A LOCATION!"] call uo_ui_fnc_confirmHint;

            } else {
			
				if (surfaceIsWater OPFORSPAWN) then {
                    ["PLEASE CHOOSE A SPAWN POSITION ON LAND"] call uo_ui_fnc_confirmHint;
                } else {
					["fn_chooseCity - %1 chose location %2", profileName, str OPFORSPAWN] call uo_fnc_serverLog;
					[EAST,"selectionMarker"] call uo_fnc_deleteSideMarker;

					uo_init_cityChosen = true;
					publicVariable "uo_init_cityChosen";
					publicVariable "OPFORSPAWN";

					["mcd_chooseCity", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
					(findDisplay 46) displayRemoveEventHandler ["KeyDown", mcd_onCityKeyDown];
				};
            };
        };
    }];
}, []] call CBA_fnc_waitUntilAndExecute;
