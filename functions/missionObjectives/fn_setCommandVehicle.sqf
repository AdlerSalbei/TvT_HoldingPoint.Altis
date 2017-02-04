params ["_cv"];
diag_log format ["fn_setCommandVehicle - %1 is now a commandvehicle.", _cv];

_cv setDir (_cv getDir OPFORSPAWN);

_allCVs = missionNamespace getVariable ["uo_cv_allCVs", []];
_id = _allCVs pushBack _cv;
missionNamespace setVariable ["uo_cv_allCVs", _allCVs, true];

[_cv] call uo_fnc_emptyContainer;
[_cv] remoteExec ["uo_fnc_bluforBuyAction",0,true];
[_cv, _id+1] remoteExec ["uo_fnc_commandVehicleMarker",0,true];
