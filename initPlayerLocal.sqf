enableSaving [false, false];
enableEngineArtillery false;

MISSION_COMPLETED = false;
publicVariable "MISSION_COMPLETED";
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

  if ((_this select 1) && (!isNil "BLUFORSPAWN")) then {
	  diag_log format ["Player: %1 is JIP, Map will be removed and porting to Spawn!", player];
      openMap [false, false];
      player unassignItem "ItemMap";
      player removeItem "ItemMap";
      if ((side player) == "BLUFOR") then {
      		_pos = BLUFORSPAWN;
      }else{
      		_pos = OPFORSPAWN;
      };
      
      player allowDamage false;
      player setPos _pos;
      sleep 1;
      player allowDamage true;
  };

