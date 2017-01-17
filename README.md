# Holding Point

Holding Point is a dynamic seize/defend mission for all maps.  
OPFOR chooses a point that they will have to defend for X minutes (*Capture Time*), while BLUFOR tries to capture it. 

<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Info](#info)
- [Game Flow](#game-flow)
- [Objectives](#objectives)
	- [BLUFOR](#blufor)
	- [OPFOR](#opfor)
- [Barrel (OPFOR)](#the-barrel)
- [Commandvehicles (BLUFOR)](#commandvehicles-blufor)
- [Factions](#factions)
- [Parameters](#parameters)
- [Pictures](#pictures)

<!-- /TOC -->


## Info
* Gamemode: TvT - seize/defend
* Map: Can be used on all maps that are included in [cfgIslands](https://github.com/gruppe-adler/TvT_HoldingPoint.Altis/blob/master/cfgIslands.hpp)
* Medical system: ACE basic
* Permadeath: On
* Spectator: On

## Game Flow
1. OPFOR commander chooses one of the available *Locations* from the map (OPFOR players can watch)
2. OPFOR spawns at the chosen *Location* and has X minutes (*SetupTime*) to prepare for the attack
3. OPFOR can buy equipment from the *Barrel* 
4. BLUFOR is on the map during preparation time and can make plans to attack (they see the chosen *Location*)
5. BLUFOR commander chooses a start position outside of the *blue circle*
6. BLUFOR can buy equipment at the *Commandvehicle* (spawns on start position, marked on map, visible to BLUFOR)

## Objectives
### BLUFOR
BLUFOR wins when:
* all OPFOR units have been eliminated.
* BLUFOR controls the *Location* for X minutes (*CaptureTime*)
  * BLUFOR is in control when the ratio of BLUFOR units to OPFOR units is at X:Y (*ControlRatio*)
  * if BLUFOR loses control, the capture time needed to win is not reset

### OPFOR
OPFOR wins when:
* all BLUFOR units have been eliminated.
* the *Location* has been defended for X minutes (*DefenseTime*)

## The Barrel (OPFOR)
The *Barrel*'s position is marked on OPFOR's map. OPFOR units can buy supplies from the *Barrel*. 

## Commandvehicles (BLUFOR)
BLUFOR will start their game with a *Commandvehicle*. 

The *Commandvehicles* position is marked on BLUFOR's map at the start. 

## Factions
Different factions for BLUFOR and OPFOR can be chosen during mission setup. The chosen faction will determine the loadouts, the *Commandvehicle* and the supplies that players can buy. Typical BLUFOR factions (e.g. Russia) can be chosen for the OPFOR side to put them in the defending role.

Buyables for each faction depending on side (click the *EAST* tab on the bottom) can be found [here (Google Docs)](https://docs.google.com/spreadsheets/d/1WVtMfU6J_OVLaHgVwJEiCAwPaTKqynqdLrqvwLkI4s8/edit?usp=sharing).

playable:
* Germany
* Russia

planned:
* USA

## Parameters

Parameter           | Default      | Explanation
--------------------|--------------|----------------------------------------------------------------------------
Weather             | Random       | sets weather
Time of Day         | Random       | sets time (random is only day)
BLUFOR Faction      | Russia       | sets BLUFOR faction
OPFOR Faction       | Germany      | sets OPFOR faction
Preset              | Custom       | sets all other parameters for you, unless *Custom* is selected
*DefenseTime*       | 45 min       | time that OPFOR has to defend the *Location* for
*CaptureTime*       | 10 min       | time that BLUFOR has to be in control of the *Location* to win
*SetupTime*         | 3 min        | time after OPFOR spawn after which BLUFOR may choose their spawn
*ControlRatio*      | 2:1          | ratio BLUFOR:OPFOR for BLUFOR to be considered in control of the *Location*
Money               | Normal       | relative amount of money for both teams

## Pictures



 
