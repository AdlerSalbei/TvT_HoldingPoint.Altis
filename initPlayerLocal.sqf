enableSaving [false, false];
enableEngineArtillery false;

MISSION_COMPLETED = false;
publicVariable "MISSION_COMPLETED";
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

  if ((_this select 1) && !isNil BLUFORSPAWN) then {
      openMap [false, false];
      player unassignItem "ItemMap";
      player removeItem "ItemMap";
  };

