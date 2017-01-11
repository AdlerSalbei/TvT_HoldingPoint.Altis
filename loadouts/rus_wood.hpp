class rus_wood {
	class AllUnits {
        primaryWeapon = "";
		primaryWeaponMuzzle = "";
        primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		secondaryWeapon = "";
		handgunWeapon = "LIB_M1895";
		uniform = "U_LIB_SOV_Efreitor_summer";
        vest = "V_LIB_SOV_RA_MosinBelt";
		backpack = "B_LIB_SOV_RA_Rucksack_Green";
		headgear = "H_LIB_SOV_RA_Helmet";
		nvgoggles = "";
		radio = "";
		binoculars = "";
		map = "";
		gps = "";
		compass = "";
        addItemsToUniform[] = {
			LIST_6("ACE_fieldDressing"),
			LIST_2("ACE_morphine"),
			"ACE_epinephrine"
	  	};
		addItemsToVest[] = {LIST_2("LIB_7Rnd_762x38")};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {

		};

        //autorifleman
		class Soldier_AR_F {

		};

        //light AT
		class Soldier_LAT_F {

		};

        //ammo bearer
		class Soldier_A_F {
			
		};

        //medic
		class Medic_F {
			backpack = "B_LIB_SOV_RA_MedicalBag_Empty";
			addItemsToBackpack[] = {
				LIST_20("ACE_fieldDressing"),
				LIST_10("ACE_fieldDressing"),
				LIST_15("ACE_morphine"),
				LIST_15("ACE_epinephrine"),
				LIST_2("ACE_bloodIV_250")
			};
		};

        //squad leader
        class Soldier_SL_F {
			uniform = "U_LIB_SOV_Kapitan_summer";
			vest = "V_LIB_SOV_RAZV_OfficerVest";
			headgear = "H_LIB_SOV_RA_OfficerCap";
			addItemsToUniform[] = {
				"ACE_MapTools"
			};

			binoculars = "Binocular";
			map = "ItemMap";
			compass = "ItemCompass";	
        };

        //team leader
		class Soldier_TL_F {
			uniform = "U_LIB_SOV_Kapitan_summer";
			vest = "V_LIB_SOV_RAZV_OfficerVest";
			headgear = "H_LIB_SOV_RA_OfficerCap";
			addItemsToUniform[] = {
				"ACE_MapTools"
			};

			binoculars = "Binocular";
			map = "ItemMap";
			compass = "ItemCompass";
		};
	};
};
