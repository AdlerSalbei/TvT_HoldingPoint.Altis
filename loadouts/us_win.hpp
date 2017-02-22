class ger_des: ger_wood {
	class AllUnits {
        uniform = "U_LIB_US_Private";
        vest = "V_LIB_US_Vest_Garand";
		backpack = "B_LIB_US_Backpack";
		headgear = "H_LIB_US_Helmet";
	};

	class Type {
        //rifleman
		class Soldier_F {

		};

        //autorifleman
		class Soldier_AR_F {
			vest = "V_LIB_US_Vest_Bar_w";
		};

        //light AT
		class Soldier_LAT_F {
			
		};

        //ammo bearer
		class Soldier_A_F {
			uniform = "U_LIB_US_Private_1st_w";
			vest = "V_LIB_US_Vest_Asst_MG_w";
		};

        //medic
		class Medic_F {
			uniform = "U_LIB_US_Med_w";
			vest = "V_LIB_US_Vest_Medic_w";
			headgear = "H_LIB_US_Helmet_Med_w";
		};

        //squad leader
        class Soldier_SL_F {
			uniform = "U_LIB_US_Sergant_w";
			vest = "V_LIB_US_Vest_Carbine_w";
			headgear = "H_LIB_US_Helmet_Cap_w";
        };

        //team leader
		class Soldier_TL_F {
			uniform = "U_LIB_US_Sergant_w";
			vest = "V_LIB_US_Vest_Carbine_w";
			headgear = "H_LIB_US_Helmet_Cap_w";
		};
	};
};
