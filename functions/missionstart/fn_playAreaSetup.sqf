if (!isServer) exitWith {};

//DELETE LOCATION MARKERS ======================================================
{
    deleteMarker _x;
} forEach LOCATIONMARKERS;

//CREATE PLAY AREA MARKERS =====================================================
//city area
_marker = createMarker ["PositionAREAMARKER", OPFORSPAWN];
_marker setMarkerColor "COLOREAST";
_marker setMarkerShape "ELLIPSE";
_marker setMarkerBrush "Border";
_marker setMarkerSize [15, 15];

_marker = createMarker ["BLUFORSPAWNOUTER", OPFORSPAWN];
_marker setMarkerColor "COLORWEST";
_marker setMarkerShape "ELLIPSE";
_marker setMarkerBrush "Border";
_marker setMarkerSize [BLUFORSPAWNBAND, BLUFORSPAWNBAND];


//CREATE EXPLANATION MARKERS FOR BLUFOR ========================================
[
    WEST,
    "EXPLANATIONMARKER_CAPTURE",
    true,
    OPFORSPAWN,
    "",
    "COLOREAST",
    "",
    "ELLIPSE",
    [15,15],
    1,
    "SolidFull"
] call uo_fnc_createSideMarker;
/*
    [hp_missionParam_CAPTUREZONESIZE,hp_missionParam_CAPTUREZONESIZE],
    OPFORSPAWN vectorAdd [hp_missionParam_CAPTUREZONESIZE,hp_missionParam_CAPTUREZONESIZE,0],
*/


[
    WEST,
    "EXPLANATIONMARKER_CAPTURE_TEXT",
    true,
    OPFORSPAWN vectorAdd [15,15,0],
    "hd_dot",
    "COLOREAST",
    "CAPTURE ZONE",
    "ICON",
    1,
    1
] call uo_fnc_createSideMarker;

missionNamespace setVariable ["uo_init_playAreaSetupDone", true, true];
diag_log "fn_playAreaSetup - Player area set up.";
