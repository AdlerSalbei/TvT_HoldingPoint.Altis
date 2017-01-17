private ["_planeTyp", "_initialPos", "_initX", "_initY", "_spawnOpforPosX", "_spawnOpforPosY", "_dX", "_dY", "_ang", "_newX", "_newY"];

_this params ["_planeTyp", "_initialPos"];

_removeMag = {
	
	_this params ["_typ", "_count"];
	for _i from 1 to _count do {
		_plane removeMagazine _typ;
	};
};

//calculate th 
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
_newX = _initX + sin(_ang)*1000;
_newY = _initY + cos(_ang)*1000;

_rand = random [100,250,500];
if (_newX > _newY) then {
	_newX = 0 + _rand;
	_newY = _newY + (_rand * 2);
}else{
	_newY = 0 + _rand;
	_newX = _newX + (_rand * 2);
};
diag_log format ["Position Calculated: initX: %1 Y: %2, OpforSX: %3 Y: %4, dX: %5 Y: %6, Ang: %7", _initX, _initY, _spawnOpforPosX, _spawnOpforPosY, _dX, _dY, _ang];
_newcoords = [ _newX, _newY, 500];

waitUntil {!isNil "PILOT"};

createVehicle [_planeTyp, [0, 0, 1000], [], 0, "FLY"];
_plane setPos _newcoords;
_plane setDir (_plane getDir OPFORSPAWN);
_plane engineOn true;
_plane setVelocity 200;
PILOT moveInDriver _plane;

if (!isNil planeGUNNER) then {
	planeGUNNER moveInGunner _plane;
};

diag_log format ["Spawning Plane: %1 at %2 heading %3 at 200km/h, as Pilot: %4", _planeTyp, _newcoords, (_plane getDir OPFORSPAWN), PILOT];

PILOT = nil;
planeGUNNER = nil;

switch _planeTyp do 
{
	case "LIB_FW190F8" : {_plane removeWeapon "LIB_SC50_Bomb_Mount"; _plane removeWeapon "LIB_SC250_Bomb_Mount"; ["LIB_1Rnd_SC50", 4] call _removeMag; ["LIB_1Rnd_SC250", 1] call _removeMag;}; 
	case "LIB_Ju87" : {_plane removeWeapon "LIB_SC50_Bomb_Mount"; _plane removeWeapon "LIB_SC250_Bomb_Mount"; ["LIB_1Rnd_SC50", 4] call _removeMag;["LIB_1Rnd_SC250", 1] call _removeMag;}; 
	case "LIB_P39" : {_plane removeWeapon "LIB_FAB250_Bomb_Mount"; ["LIB_1Rnd_FAB250", 3] call _removeMag;}; 
	case "LIB_Pe2" : {["LIB_1Rnd_FAB250", 3] call _removeMag;}; 
	case "LIB_Li2" : {["LIB_1Rnd_FAB250", 3] call _removeMag;}; 
	case "LIB_P47" : {_plane removeWeapon "LIB_US_500lb_Bomb_Mount"; _plane removeWeapon "LIB_M8_Launcher_P47"; ["LIB_1Rnd_US_500lb", 4] call _removeMag; ["LIB_6Rnd_M8_P47", 1] call _removeMag;}; 
};

_planeString = "Spawned " + _planeTyp + "!";
[
    WEST,
    _planeString,
    true,
    _newcoords,
   "hd_dot",
    "COLOREAST",
    "CAPTURE ZONE",
    "ICON",
    1,
    1
] call uo_fnc_createSideMarker;



diag_log format ["Spawning Plane: %1 at %2 heading %3 at 200km/h, as Pilot: %4", _planeTyp, _newcoords, (_cv getDir OPFORSPAWN), PILOT];

_waitingTime = random [30,150,300];
sleep _waitingTime;

[[true,"An Enemy " + _planeTyp + " has entered the Airspace!","All hands on Action Station"], "uo_ui_fnc_twoLineHint", "EAST"] call BIS_fnc_MP;
