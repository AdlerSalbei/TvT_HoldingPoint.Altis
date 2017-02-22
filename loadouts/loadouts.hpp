#include ".\list_macros.hpp"

class Loadouts {
    baseDelay = 10; // minimum time to wait after connect before applying loadout
    perPersonDelay = 0; // added random delay based on number of players
    handleRadios = 1; // if radios should be handled. defaults to 0
    resetLoadout = 1; // start with empty loadouts instead of modifying existing loadout

    class Faction {
        #include "ger_wood.hpp"
		#include "ger_des.hpp"
		#include "ger_win.hpp"
		
        #include "rus_wood.hpp"
        #include "rus_des.hpp"
		#include "rus_win.hpp"
		
		#include "us_wood.hpp"
		#include "us_des.hpp"
		#include "us_win.hpp"
    };
};
