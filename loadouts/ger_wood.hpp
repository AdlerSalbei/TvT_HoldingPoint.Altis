class ger_wood {
	class AllUnits {
        primaryWeapon = "";
		primaryWeaponMuzzle = "";
        primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		secondaryWeapon = "";
		handgunWeapon = "LIB_P38";
		uniform = "U_LIB_GER_Recruit";
        vest = "V_LIB_GER_VestKar98";
		backpack = "B_LIB_GER_Backpack";
		headgear = "H_LIB_GER_Helmet";
		nvgoggles = "";
		radio = "";
		binoculars = "";
		map = "";
		gps = "";
		compass = "";
        addItemsToUniform[] = {
			LIST_6("ACE_fieldDressing"),
			LIST_2("ACE_morphine"),
			"ACE_epinephrine",
	  	};
		addItemsToVest[] = {
			LIST_2("LIB_8Rnd_9x19")
		};
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
			uniform = "U_LIB_GER_Medic";
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
			uniform = "U_LIB_GER_Hauptmann";
			vest = "V_LIB_SOV_RA_Belt";
			backpack = "";
			headgear = "H_LIB_GER_OfficerCap";
			googles = selectRandom ["G_LIB_GER_Gloves1","G_LIB_GER_Gloves2","G_LIB_GER_Gloves3","G_LIB_GER_Gloves4"];
			addItemsToUniform[] = {
				"ACE_MapTools"
			 };

			binoculars = "LIB_Binocular_GER";
			map = "ItemMap";
			compass = "ItemCompass";
        };

        //team leader
		class Soldier_TL_F {
			uniform = "U_LIB_GER_Hauptmann";
			vest = "V_LIB_SOV_RA_Belt";
			backpack = "";
			headgear = "H_LIB_GER_OfficerCap";
			googles = selectRandom ["G_LIB_GER_Gloves1","G_LIB_GER_Gloves2","G_LIB_GER_Gloves3","G_LIB_GER_Gloves4"];
			addItemsToUniform[] = {
				"ACE_MapTools"
			 };

			binoculars = "LIB_Binocular_GER";
			map = "ItemMap";
			compass = "ItemCompass";
		};
	};
};
