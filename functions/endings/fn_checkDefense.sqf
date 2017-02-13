#define PREFIX uo
#include "\x\cba\addons\main\script_macros_mission.hpp"


if (!isServer) exitWith {};

INFO_1("Defense time check starting... OPFOR has to defend for %1s", uo_missionParam_DEFENSETIME);

[{
    [{!BLUFORINCONTROL}, {
        if (missionNamespace getVariable ["uo_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress. Defense")};
        uo_endInProgressServer = true;

        missionNamespace setVariable ["uo_gameEnded", ["EAST","LOCATION DEFENDED!"], true];
        INFO("OPFOR has defended the location.");
    }, []] call CBA_fnc_waitUntilAndExecute;
}, [], uo_missionParam_DEFENSETIME] call CBA_fnc_waitAndExecute;
