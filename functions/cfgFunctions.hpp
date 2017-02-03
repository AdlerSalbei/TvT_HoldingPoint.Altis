class uo {
    class choosePlayArea {
        class bluforWaitDialog {};
        class chooseCity {};
        class chooseSpawn {};
        class opforWaitDialog {};
    };

    class common {
        class createSideMarker {};
        class createSideMarkerRemote {};
        class deleteSideMarker {};
        class deleteSideMarkerRemote {};
        class diagReport {};
        class emptyContainer {};
        class findRandomPos {};
        class getIslandCfgValue {};
        class getNumberOfTeammates {};
        class intro {};
	class markerBluforSpawn {};
        class isCommander {};
        class planeSpawn {};
        class serverLog {};
        class sideHint {};
        class teleport {};
    };

    class endings {
        class endByBluKilled {};
        class endByControl {};
        class endByOpfKilled {};
        class endByTimeout {};
        class endMission {};
    };

    class init {
        class initLoadoutFaction {};
        class initPubVars {};
        class initSystems {postInit = 1;};
        class sequentialInit {};
    };

    class missionObjectives {
        class bluforBuyAction {};
        class checkCommandVehicle {};
        class commandVehicleMarker {};
        class createCommandVehicle {};
        class opforBuyAction {};
        class setCommandVehicle {};
    };

    class missionstart {
        class createTrigger {};
        class findOpfStartPos {};
        class findBluStartPos {};
        class playAreaSetup {};
        class tpSide {};
    };

    class setup {
        class briefingDone {postInit = 1;};
        class moveToMapStart {postInit = 1;};
        class setCommandVehicleClass {};
        class setMissionParams {};
        class setMoney {};
        class setOriginalSide {};
        class setTime {};
        class setupCountdown {};
        class setWeather {};
    };
};
