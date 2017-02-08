#define PREFIX uo
#include "\x\cba\addons\main\script_macros_mission.hpp"

if (!isServer) exitWith {};

uo_fnc_endByBluKilled_eliminated = {
    [{
        if (({side _x == west} count playableUnits) == 0) then {
            _downSince = missionNamespace getVariable ["uo_bluDownSince", 0];
            missionNamespace setVariable ["uo_bluDownSince", _downSince + 1];
        } else {
            missionNamespace setVariable ["uo_bluDownSince", 0];
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };

        if (missionNamespace getVariable ["uo_bluDownSince", 0] > 15) then {

            if (missionNamespace getVariable ["uo_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress.")};
            uo_endInProgressServer = true;

            missionNamespace setVariable ["uo_gameEnded", ["EAST", "BLUFOR ELIMINATED!"], true];
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 1, []] call CBA_fnc_addPerFrameHandler;
};
