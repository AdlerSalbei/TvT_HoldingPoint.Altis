class ger_des: ger_wood {
	class AllUnits {
        
	};

	class Type {
        //rifleman
		class Soldier_F {
		uniform = "U_LIB_GER_Recruit_w";
        vest = "V_LIB_GER_VestKar98_w";
		headgear = "H_LIB_GER_Helmet_w";
		};

        //autorifleman
		class Soldier_AR_F {
			
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
			
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
			
		};

        //medic
		class Medic_F {
			uniform = "U_LIB_GER_Medic_w";
		};

        //squad leader
        class Soldier_SL_F {
			uniform = "U_LIB_GER_Hauptmann_w";
			vest = "V_LIB_GER_OfficerBelt_w";
			headgear = "H_LIB_GER_OfficerCap_w";
			
        };

        //team leader
		class Soldier_TL_F {
			uniform = "U_LIB_GER_Hauptmann";
			vest = "V_LIB_GER_OfficerBelt_w";
			headgear = "H_LIB_GER_OfficerCap_w";
		};
	};
};
