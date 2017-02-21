/*    Tells server that pre-game briefing is done
*
*/

if (!hasInterface) exitWith {};

[{getClientState == "BRIEFING READ"}, {
    if (!(missionNamespace getVariable ["hp_init_briefingDone", false])) then {
        diag_log "fn_briefingDone - First to complete briefing. Setting variable.";
        missionNamespace setVariable ["hp_init_briefingDone", true, true];
    };
}, []] call CBA_fnc_waitUntilAndExecute;
