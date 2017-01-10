class Vehicles {
    permissionLevel = 3;

    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;
	
	class LIB_Kfz1 {
        displayName = "Kraftfahrzeug 1";
        price = 500;
        stock = 10;
    };
	
	class LIB_Kfz1_MG42 {
        displayName = "Kraftfahrzeug 1 mit MG42";
        price = 4500;
        stock = 5;
    };
	
	class LIB_opelblitz_open_y_camo {
        condition = "!uo_missionParam_ISWOODLAND";
        displayName = "Opelblitz";
        price = 1000;
        stock = 20;
    };
	
	class LIB_opelblitz_open_g_camo {
        condition = "uo_missionParam_ISWOODLAND";
        displayName = "Opelblitz";
        price = 1000;
        stock = 20;
    };
	
	class LIB_SdKfz251_FFV {
        displayName = "SonderKraftfahrzeug 251";
        price = 2500;
        stock = 10;
    };
	
	class LIB_SdKfz_7 {
        displayName = "SonderKraftfahrzeug 7";
        price = 3000;
        stock = 5;
    };
	
	class LIB_PzKpfwIV_H {
        displayName = "PanzerKampfwagen IV Ausführung H";
        price = 5000;
        stock = 3;
    };
	
	class LIB_PzKpfwV {
        displayName = "PanzerKampfwagen V Panther";
        price = 6000;
        stock = 1;
    };
	
    class LIB_PzKpfwVI_B {
        condition = "uo_missionParam_ISWOODLAND";
        displayName = "PanzerKampfwagen VI Tiger";
        price = 7500;
        stock = 1;
    };

    class LIB_PzKpfwVI_B_camo {
        condition = "!uo_missionParam_ISWOODLAND";
        displayName = "PanzerKampfwagen VI Tiger";
        price = 7500;
        stock = 1;
    };
	
	class LIB_PzKpfwVI_E {
        displayName = "PanzerKampfwagen VI Königstiger";
        price = 10000;
        stock = 1;
    };
	
	class LIB_StuG_III_G {;
        displayName = "Sturmgeschütz III Ausführung G";
        price = 4000;
        stock = 2;
    };
};