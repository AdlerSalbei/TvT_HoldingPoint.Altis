if (!hasInterface) exitWith {};

[{!isNull player}, {
    private ["_money"];
    
    diag_log format ["Player Typ: %1",(typeOf player)];

    if ([player] call uo_fnc_isCommander) then {
        _money = (10000 + 500 * ([player getVariable ["originalSide", str side player]] call uo_fnc_getNumberOfTeammates)) * uo_missionParam_MONEYFACTOR;
    } else {
        if ((typeOf player) == "B_Soldier_SL_F" || (typeOf player) == "B_Soldier_TL_F" || (typeOf player) == "O_Soldier_SL_F" || (typeOf player) == "O_Soldier_TL_F") then {
            _money = 2400 * uo_missionParam_MONEYFACTOR;    
        }else{
            _money = 600 * uo_missionParam_MONEYFACTOR;
        };
    };

    diag_log format ["fn_setMoney - Giving player %1 credits.", _money];
    [player, _money] call grad_lbm_fnc_addFunds;
}, []] call CBA_fnc_waitUntilAndExecute;
