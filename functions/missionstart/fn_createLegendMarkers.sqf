if (!hasInterface) exitWith {};

_legendMarkers = if (side player == WEST) then {
    [
        ["o_inf", "COLOREAST", "= enemy infantry", WEST],
        ["b_hq", "COLORWEST", "= commandvehicle", WEST]
    ]
} else {
    [
        ["b_inf", "COLORWEST", "= enemy infantry", EAST],
        ["mil_marker", "COLOREAST", "= Shop", EAST]
    ]
};


{_x call uo_fnc_createLegendMarker} forEach _legendMarkers;
