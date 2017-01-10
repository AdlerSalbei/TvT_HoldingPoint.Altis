class us_des: us_wood {
    class AllUnits: AllUnits {
        uniform = "";
        vest = "";
        headgear = "";
    };

    class Type: Type {
        //rifleman
        class Soldier_F: Soldier_F {

        };

        //autorifleman
        class Soldier_AR_F: Soldier_AR_F {
        };

        //light AT
        class Soldier_LAT_F: Soldier_LAT_F {

        };

        //ammo bearer
        class Soldier_A_F: Soldier_A_F {

        };

        //medic
        class Medic_F: Medic_F {
            uniform = "";
			vest = "";
			backpack = "";
        };

        //squad leader
        class Soldier_SL_F: Soldier_SL_F {
            vest = "";
            headgear = "";
        };

        //team leader
        class Soldier_TL_F: Soldier_TL_F {
            vest = "";
            headgear = "";
        };
    };
};