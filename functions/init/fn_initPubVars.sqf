if (!isServer) exitWith {};

//SETTINGS =====================================================================
BLUFORSPAWNBAND = 1500;

publicVariable "BLUFORSPAWNBAND";

//OTHER ========================================================================
OPFORTELEPORTED = false;
BLUFORTELEPORTED = false;
GAMESTARTED = false;
GAMEENDED = false;
BLUFORINCONTROL = false;
BLUFORELIMINATED = false;
OPFORELIMINATED = false;
CAPTURETIMEREMAINING = uo_missionParam_CAPTURETIME;

publicVariable "OPFORTELEPORTED";
publicVariable "BLUFORTELEPORTED";
publicVariable "GAMESTARTED";
publicVariable "GAMEENDED";
publicVariable "BLUFORINCONTROL";
publicVariable "BLUFORELIMINATED";
publicVariable "OPFORELIMINATED";
publicVariable "CAPTURETIMEREMAINING";

//DONE =========================================================================
missionNamespace setVariable ["uo_init_pubVarsDone", true, true];
