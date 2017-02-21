params ["_cv", "_id"];

if (player getVariable ["originalSide", "UNKNOWN"] != "WEST") exitWith {};
if (isNil "_cv") exitWith {};
if (isNull _cv) exitWith {};

_marker = createMarkerLocal [format ["cvMarker_%1", _id], getPos _cv];
_marker setMarkerTypeLocal "b_hq";
_markerText = format ["Commandvehicle %1", _id];
_marker setMarkerTextLocal _markerText;
