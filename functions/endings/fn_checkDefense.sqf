#define PREFIX hp
#include "\x\cba\addons\main\script_macros_mission.hpp"


if (!isServer) exitWith {};

INFO_1("Defense time check starting... OPFOR has to defend for %1s", hp_missionParam_DEFENSETIME);

[{
    [{!BLUFORINCONTROL}, {
        if (missionNamespace getVariable ["hp_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress. Defense")};
        hp_endInProgressServer = true;

        missionNamespace setVariable ["hp_gameEnded", ["EAST","LOCATION DEFENDED!"], true];
        INFO("OPFOR has defended the location.");
    }, []] call CBA_fnc_waitUntilAndExecute;
}, [], hp_missionParam_DEFENSETIME] call CBA_fnc_waitAndExecute;
