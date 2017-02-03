params ["_planeTyp", "_initialPos"];

diag_log format ["Reached Plane Menu with Typ: %1 and Pos %2", _planeTyp, _initialPos];

switch _planeTyp do {
	case "LIB_FW190F8" : {[false] call HoldingPoint_choosePilot_fnc_open;}; 
	case "LIB_Ju87" : {[true] call HoldingPoint_choosePilot_fnc_open;}; 
	case "LIB_P39" : {[false] call HoldingPoint_choosePilot_fnc_open;}; 
	case "LIB_Pe2" : {[true] call HoldingPoint_choosePilot_fnc_open;}; 
	case "LIB_Li2" : {[true] call HoldingPoint_choosePilot_fnc_open;}; 
	case "LIB_P47" : {[false] call HoldingPoint_choosePilot_fnc_open;};
};

_removeMag = {
				
				_this params ["_typ", "_count"];
				for "_i" from 1 to _count do {
					_plane removeMagazine _typ;
				};
			};

_playerByName = {
					params ["_name"];
					_player = objNull;
					{
						if (name _x isEqualTo _name) exitWith {
							_player = _x
						};
					} forEach allPlayers; _player
				};

//calculate the x and y differentce
_initX = _initialPos select 0;
_initY = _initialPos select 1;

_spawnOpforPosX = OPFORSPAWN select 0;
_spawnOpforPosY = OPFORSPAWN select 1;

_dX = _spawnOpforPosX - _initX;
_dY = _spawnOpforPosY - _initY;

//get angle between markers and add 180
_ang = _dX atan2 _dY;
_ang = _ang + 180;

//fix angle if <0 or >360
_ang = _ang mod 360;

//find new coords
_newX = _initX + sin(_ang)*2000;
_newY = _initY + cos(_ang)*2000;

_rand = random [100,250,500];
if (_newX > _newY) then {
	_newX = 0;
	_newY = _newY + (_rand * 2);
}else{
	_newY = 0;
	_newX = _newX + (_rand * 2);
};
_newcoords = [ _newX, _newY, 500];

waitUntil {!isNil "PILOT"};
_pilot = [PILOT] call _playerByName;
_gunner = [planeGUNNER] call _playerByName;

PILOT = nil;
planeGUNNER = nil;

if (!isNil "_pilot") then {
	_plane = createVehicle [_planeTyp, [0, 0, 1000], [], 0, "FLY"];
	_plane setPos _newcoords;
	_dir = (_plane getDir OPFORSPAWN);
    _v = velocity _plane;
    _plane setDir _dir;
    _plane setVelocity [
        ((_v select 1) * sin _dir - (_v select 0) * cos _dir),
        ((_v select 0) * sin _dir + (_v select 1) * cos _dir),
        (_v select 2)];
	_plane engineOn true;
	_pilot allowDamage false;
	_pilot moveInDriver _plane;
	sleep 1;
	[_pilot, false] call ace_medical_fnc_setUnconscious;
    _pilot allowDamage true;


	if !(isNil "_gunner" && isNull _gunner && _gunner == _pilot) then {
		_gunner allowDamage false;
		_gunner moveInGunner _plane;
		sleep 1;
		[_gunner, false] call ace_medical_fnc_setUnconscious;
		_gunner allowDamage true;
	};

	[[_initialPos], "uo_fnc_markerBluforSpawn", (owner _pilot), false, true] call BIS_fnc_MP;
	

	switch _planeTyp do {
		case "LIB_FW190F8" : {_plane removeWeapon "LIB_SC50_Bomb_Mount"; _plane removeWeapon "LIB_SC250_Bomb_Mount"; ["LIB_1Rnd_SC50", 4] call _removeMag; ["LIB_1Rnd_SC250", 1] call _removeMag;}; 
		case "LIB_Ju87" : { _plane removeWeapon "LIB_SC250_Bomb_Mount"; ["LIB_1Rnd_SC50", 3] call _removeMag;["LIB_1Rnd_SC250", 1] call _removeMag;}; 
		case "LIB_P39" : {_plane removeWeapon "LIB_FAB250_Bomb_Mount"; ["LIB_1Rnd_FAB250", 1] call _removeMag;}; 
		case "LIB_Pe2" : {_plane removeWeapon "LIB_FAB250_Bomb_Mount"; ["LIB_1Rnd_FAB250", 4] call _removeMag;}; 
		case "LIB_Li2" : {["LIB_1Rnd_FAB250", 3] call _removeMag;}; 
		case "LIB_P47" : {_plane removeWeapon "LIB_US_500lb_Bomb_Mount"; _plane removeWeapon "LIB_M8_Launcher_P47"; ["LIB_1Rnd_US_500lb", 4] call _removeMag; ["LIB_6Rnd_M8_P47", 1] call _removeMag;}; 
	};

	_planeString = "Spawned " + _planeTyp + "!";
	[
		WEST,
		"plane",
		true,
		_newcoords,
		"hd_dot",
		"COLORWEST",
		_planeString,
		"ICON",
		2,
		2
	] call uo_fnc_createSideMarker;

	diag_log format ["Spawning Plane: %1 at %2 heading %3 as Pilot: %4", _planeTyp, _newcoords, (_plane getDir OPFORSPAWN), _pilot];

	_waitingTime = random [30,150,300];
	sleep _waitingTime;

	[[true,"An Enemy " + _planeTyp + " has entered the Airspace!","All hands on Action Station"], "uo_ui_fnc_twoLineHint", "EAST", false, true] call BIS_fnc_MP;

	[WEST, "plane"] call uo_fnc_deletSideMarker;
};
