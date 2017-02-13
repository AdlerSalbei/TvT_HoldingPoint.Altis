#define PREFIX uo
#include "\x\cba\addons\main\script_macros_mission.hpp"

if (!isServer) exitWith {};

[{
    if (BLUFORINCONTROL) then {
        CAPTURETIMEREMAINING = CAPTURETIMEREMAINING - 1;
        publicVariable "CAPTURETIMEREMAINING";

        if (CAPTURETIMEREMAINING <= 0) then {
            if (missionNamespace getVariable ["uo_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress.")};
            uo_endInProgressServer = true;

            missionNamespace setVariable ["uo_gameEnded", ["WEST", "LOCATION CAPTURED!"], true];
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    };
} , 1, []] call CBA_fnc_addPerFrameHandler;
