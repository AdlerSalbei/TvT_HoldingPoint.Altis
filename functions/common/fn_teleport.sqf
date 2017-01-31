/*    Teleports unit
*
*     Params:
*     0:    unit
*     1:    destination
*/

_this spawn {
    params ["_unit", ["_pos", [0,0,0]]];

    _unit allowDamage false;
    _unit setPos _pos;
	if (side _unit == "WEST") then {
		_allCVs = missionNamespace getVariable ["uo_cv_allCVs", []];
		diag_log format ["CV's: %1", _allCVs];
		_unit setDir (_unit getDir (_allCVs select 0));
	} else {
		_unit setDir (_unit getDir OPFORSPAWN);
	};
    sleep 1;
    _unit allowDamage true;
};
