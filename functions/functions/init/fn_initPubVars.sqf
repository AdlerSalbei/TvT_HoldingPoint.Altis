if (!isServer) exitWith {};

//PubVars ========================================================================
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
