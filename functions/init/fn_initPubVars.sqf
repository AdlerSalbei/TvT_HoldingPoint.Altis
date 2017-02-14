if (!isServer) exitWith {};

//SETTINGS =====================================================================
BLUFORSPAWNBAND = 2000;

publicVariable "BLUFORSPAWNBAND";

//OTHER ========================================================================
OPFORTELEPORTED = false;
BLUFORTELEPORTED = false;
GAMESTARTED = false;
GAMEENDED = false;
BLUFORINCONTROL = false;
BLUFORELIMINATED = false;
OPFORELIMINATED = false;
CAPTURETIMEREMAINING = hp_missionParam_CAPTURETIME;

publicVariable "OPFORTELEPORTED";
publicVariable "BLUFORTELEPORTED";
publicVariable "GAMESTARTED";
publicVariable "GAMEENDED";
publicVariable "BLUFORINCONTROL";
publicVariable "BLUFORELIMINATED";
publicVariable "OPFORELIMINATED";
publicVariable "CAPTURETIMEREMAINING";

//DONE =========================================================================
missionNamespace setVariable ["hp_init_pubVarsDone", true, true];
