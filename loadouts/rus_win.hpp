class ger_des: ger_wood {
	class AllUnits {
        uniform = "U_LIB_SOV_Efreitor_w";
        vest = "V_LIB_SOV_RA_MosinBelt_w";
		headgear = "H_LIB_SOV_RA_Helmet_w";
	};

	class Type {
        //rifleman
		class Soldier_F {

		};

        //autorifleman
		class Soldier_AR_F {
			headgear = "H_LIB_SOV_Ushanka_w";
			vest = "V_LIB_SOV_RA_MGBelt_w";
		};

        //light AT
		class Soldier_LAT_F {
			
		};

        //ammo bearer
		class Soldier_A_F {
			vest = "V_LIB_SOV_IShBrVestMG_w";
		};

        //medic
		class Medic_F {

		};

        //squad leader
        class Soldier_SL_F {
			uniform = "U_LIB_SOV_Kapitan_w";
			vest = "V_LIB_SOV_RAZV_OfficerVest_w";
			headgear = "H_LIB_SOV_RA_OfficerCap_w";
			
        };

        //team leader
		class Soldier_TL_F {
			uniform = "U_LIB_SOV_Kapitan_w";
			vest = "V_LIB_SOV_RAZV_OfficerVest_w";
			headgear = "H_LIB_SOV_RA_OfficerCap_w";
		};
	};
};
