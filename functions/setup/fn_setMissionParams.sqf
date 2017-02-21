if (!isServer) exitWith {};

//FACTIONS =====================================================================
hp_missionParam_BLUFORFACTION = [
    "us",
    "ger",
    "rus"
] select ("BluforFaction" call BIS_fnc_getParamValue);
hp_missionParam_OPFORFACTION = [
    "us",
    "ger",
    "rus"
] select ("OpforFaction" call BIS_fnc_getParamValue);
hp_missionParam_ISWOODLAND = ["isWoodland"] call hp_fnc_getIslandCfgValue;

publicVariable "hp_missionParam_BLUFORFACTION";
publicVariable "hp_missionParam_OPFORFACTION";
publicVariable "hp_missionParam_ISWOODLAND";

["LOG", "SERVER_SETUP", "hp_missionParam_BLUFORFACTION"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "hp_missionParam_OPFORFACTION"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "hp_missionParam_ISWOODLAND"] call hp_fnc_diagReport;

//NON hp_missionParam_PRESET PARAMS ============================================================
hp_missionParam_WEATHERSETTING = "WeatherSetting" call BIS_fnc_getParamValue;
hp_missionParam_TIMEOFDAY = "TimeOfDay" call BIS_fnc_getParamValue;

publicVariable "hp_missionParam_WEATHERSETTING";
publicVariable "hp_missionParam_TIMEOFDAY";

//GET hp_missionParam_PRESET ===================================================================
hp_missionParam_PRESET = [
    "CUSTOM",
    "DEBUG"
] select ("Preset" call BIS_fnc_getParamValue);

publicVariable "hp_missionParam_PRESET";

["LOG", "SERVER_SETUP", "hp_missionParam_PRESET"] call hp_fnc_diagReport;

//SET hp_missionParam_PRESET PARAMS ============================================================
if (hp_missionParam_PRESET == "CUSTOM") then {
    hp_missionParam_CONTROLRATIO = "ControlRatio" call BIS_fnc_getParamValue;
    hp_missionParam_MONEYFACTOR = "MoneyFactor" call BIS_fnc_getParamValue;
    hp_missionParam_CAPTURETIME= "CaptureTime" call BIS_fnc_getParamValue;
    hp_missionParam_DEFENSETIME = "DefenseTime" call BIS_fnc_getParamValue;
    hp_missionParam_SETUPTIME = "SetupTime" call BIS_fnc_getParamValue;
    hp_missionParam_CAPTUREZONESIZE = "CaptureCircle" call BIS_fnc_getParamValue;
    BLUFORSPAWNBAND = "MinSpawnDistanceBlufor" call BIS_fnc_getParamValue;
};

if (hp_missionParam_PRESET == "DEBUG") then {
    hp_missionParam_CONTROLRATIO = 1;
    hp_missionParam_MONEYFACTOR = 10;
    hp_missionParam_CAPTURETIME= 60;
    hp_missionParam_DEFENSETIME = 900;
    hp_missionParam_SETUPTIME = 1;
    hp_missionParam_CAPTUREZONESIZE = 15;
    BLUFORSPAWNBAND = 100;
};

publicVariable "hp_missionParam_CAPTUREZONESIZE";
publicVariable "BLUFORSPAWNBAND";
publicVariable "hp_missionParam_CONTROLRATIO";
publicVariable "hp_missionParam_MONEYFACTOR";
publicVariable "hp_missionParam_CAPTURETIME";
publicVariable "hp_missionParam_DEFENSETIME";
publicVariable "hp_missionParam_SETUPTIME";

["LOG", "SERVER_SETUP", "hp_missionParam_CONTROLRATIO"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "hp_missionParam_MONEYFACTOR"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "hp_missionParam_CAPTURETIME"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "hp_missionParam_DEFENSETIME"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "hp_missionParam_SETUPTIME"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "hp_missionParam_CAPTUREZONESIZE"] call hp_fnc_diagReport;
["LOG", "SERVER_SETUP", "BLUFORSPAWNBAND"] call hp_fnc_diagReport;
//DONE =========================================================================
missionNamespace setVariable ["hp_init_missionParamsDone", true, true];
