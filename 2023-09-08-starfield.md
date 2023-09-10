---
title: "Starfield - mod list and stuff"
date: 2023-09-08
categories: ["games"]
---

# Note
None of this is tested on Windows, while there are some instructions for Windows you better check with other guides.
Naturally only Steam version is covered, no Microsfot XBox Games on Linux, never.

# Prerequisities

## SFSE
Get [SFSE on main page](https://sfse.silverlock.org/) or at [nexumods - 106](https://www.nexusmods.com/starfield/mods/106).

Unpack the archive in the root folder of Starfield (`steamapps/common/Starfield`)

In Steam Launch Options put:
```
bash -c 'exec "${@/Starfield.exe/sfse_loader.exe}"' -- %command%
```
That will run bash to replace Starfield.exe with sfse_loader.exe, then do -- magic(explain TODO) and %command% is needed for Steam to wrap things up.

Similar thing for Windows:
```
<full path to game>\sfse_loader.exe -- %COMMAND%
```

## StarfieldCustom.ini
In `steamapps/compatdata/1716740/pfx/drive_c/users/steamuser/Documents/My Games/Starfield` (For Windows in `../Users/%user%/Documents/My Games/Starfield`):

Create file StarfieldCustom.ini and in it put:

```
[Archive]
bInvalidateOlderFiles=1
sResourceDataDirsFinal=
```
This will load the replacement files you put in Data folder in root folder of Starfield (e.g: `steamapps/common/Starfield/Data/interface/mainmenu.swf`)
and it probably works for replacement files you put in Documents e.g. `My games/Starfield/Data/Textures/interface/loadscreens/generic`)

### Rest of these is optional

```
[Dialogue]
bEnableDialogueLight=0
```
Done by [Turn off dialogue camera light](https://www.nexusmods.com/starfield/mods/1445)

```
[Camera]
fFPWorldFOV=95
fTPWorldFOV=95
fFarCameraDistanceOffset=6.0
fMouseWheelZoomIncrement=0.2
```
Set FOV to 95 (sort of ok for 21:9 screens), while [some](https://www.nexusmods.com/starfield/mods/504) recommend to set 110, probably taken from [240](https://www.nexusmods.com/starfield/mods/240)
Allow further camera zoom out in 3rd person, set to 6 by [642](https://www.nexusmods.com/starfield/mods/794)
The default zoom increments are just 3 positions (first person, medium, max), do more increments, done by [794](https://www.nexusmods.com/starfield/mods/794)

```
[General]
SIntroSequence=0
uMainMenuDelayBeforeAllowSkip=0
bEnableMessageOfTheDay=0
sStartingConsoleCommand=bat ShellCasingsHigh;bat photoWide;bat FlightCamera;bat BetterMines
```
No intro, no MainMenuDelay and no stupid MOTD in right corner in main menu see details in [Cleanfield (88)](https://www.nexusmods.com/starfield/mods/88), althought it doesn't mention disabling MOTD as it does by editing mainmenu.swf it is good to do so explicitly anyway.

sStartingConsoleCommand are console commands which will run at start of the game so in this case it runs command bat which runs console commands from e.g. photoWide.txt saved in the root folder of Starfield

- bat ShellCasingsHigh [More Shell Cassings lifetime (884)](https://www.nexusmods.com/starfield/mods/884)
- bat photoWide [Remove Photo Mode Letterbox (930)](https://www.nexusmods.com/starfield/mods/930)
- bat BetterMines [Delayed mine detonation (1185)](https://www.nexusmods.com/starfield/mods/1185)
- bat FlightCamera [Larger zoom on 3rd person with space ship (1251)](https://www.nexusmods.com/starfield/mods/1251)

```
[General]
fAutoDoorFadeSecs=0.0001
fFastTravelFadeSecs=0.0001
fLoadGameFadeSecs=0.0001
fNormalDoorFadeSecs=0.0001
fNormalDoorFadeWait=0.0001
[Interface]
fFadeToBlackFadeSeconds=0.0001
fSleepFaderTime=0.0001
```
Done by [Black Loading Sreen Remover](https://www.nexusmods.com/starfield/mods/546), I am not sure if it's really needed.


## StarfieldPrefs.ini

```
[General]
bGamepadEnable=0
```
Unless you are one of those nimble players who can play FPS with gamepad, just disable it, it will prevent lots of silly issues:
in `Documents/My Games/Starfield/StarfieldPrefs.ini`

```
[Interface]
bShowOnlyActiveQuestTargets=1
```
At some point the game I had to push [v] key in mission menu, which lead to this setting going 0, so game showed quest trackers for everything, which is totally awesome (NOT!) when random NPCs give you activity quests without asking. Set back to 1 for sanity.

```
[Launcher]
bEnableFileSelection=1
```
So you can put Data/Textures/interfaces of mods like [21x9 Loading Screens (562)](https://www.nexusmods.com/starfield/mods/562) to root folder instead of Documents (where Documents have higher priority of loading)


# Current Mod List

TODO: Write installation procedures, what plugins are just file replacement, what are SFSE plugins, what are console commands run through bat and other categories

Legend:
```
mod_link - mod_name [version]
	- file_name
```
- [nexusmods.com/starfield/mods/88](https://www.nexusmods.com/starfield/mods/88) - Cleanfield - A No-Intro Videos And Clean Menu Fix [1.5]
	- Cleanfield.v.1.5-Vortex-88-1-5-1694114751.zip
- [nexusmods.com/starfield/mods/106](https://www.nexusmods.com/starfield/mods/106) - Starfield Script Extender (SFSE) [0.1.0]
	- SFSE 0.1.0-106-0-1-0-1693780739.7z
- [nexusmods.com/starfield/mods/214](https://www.nexusmods.com/starfield/mods/214) - BetterHUD [0.3]
	- BetterHUD - Location and XP-214-0-3-1693575029.7z
- [nexusmods.com/starfield/mods/404](https://www.nexusmods.com/starfield/mods/404) - Undelayed Menus [1.0.5]
	- Undelayed Menu - Latest Version-404-1-0-5-1694270938.zip
- [nexusmods.com/starfield/mods/454](https://www.nexusmods.com/starfield/mods/454) - Enhanced Player Healthbar [1.0.3]
	- Enhanced Player Healthbar - WYOR-454-1-0-3-1693931469.rar
- [nexusmods.com/starfield/mods/546](https://www.nexusmods.com/starfield/mods/546) - Black Loading Screen Remover [1.1.1b]
	- Loading Screens Removed (Visual Glitches)-546-1-1-1a-1693879690.zip
- [nexusmods.com/starfield/mods/562](https://www.nexusmods.com/starfield/mods/562) - 21x9 Loading Screens [1.0]
	- 21x9 Loading Screens-562-1-0-1693768888.zip
- [nexusmods.com/starfield/mods/642](https://www.nexusmods.com/starfield/mods/642) - Further Zoom For 3rd Person [1.0]
	- 3rd Person Zoom-642-1-0-1693814090.rar
- [nexusmods.com/starfield/mods/658](https://www.nexusmods.com/starfield/mods/658) - Baka Achievement Enabler (SFSE) [1.3]
	- Baka Achievement Enabler-658-1-3-1693926677.rar
- [nexusmods.com/starfield/mods/773](https://www.nexusmods.com/starfield/mods/773) - StarUI Inventory [1.1]
	- StarUI Inventory-773-1-1-1694139175.7z
- [nexusmods.com/starfield/mods/794](https://www.nexusmods.com/starfield/mods/794) - More Zoom Increments For 3rd Person [1.0]
	- More Increments For 3rd Person Zoom-794-1-0-1693897835.rar
- [nexusmods.com/starfield/mods/861](https://www.nexusmods.com/starfield/mods/861) - Dark Mode for Terminals [1.3.0]
	- Dark Mode for Terminals-861-1-3-0-1694116582.zip
- [nexusmods.com/starfield/mods/884](https://www.nexusmods.com/starfield/mods/884) - Sprint Stuttering Fix [1.0]
	- Sprint Stuttering Fix-884-1-0-1694115782.zip
- [nexusmods.com/starfield/mods/885](https://www.nexusmods.com/starfield/mods/885) - More Subtle Scanner Sounds (No High Pitch - Menus UI Interactions - Less Annoying) [1.4.0]
	- More Subtle Scanner Sounds (1.4.0)-885-1-4-0-1694226439.7z
- [nexusmods.com/starfield/mods/914](https://www.nexusmods.com/starfield/mods/914) - Immersive Shell Casings [1.1]
	- High-914-1-1-1693958977.zip
- [nexusmods.com/starfield/mods/930](https://www.nexusmods.com/starfield/mods/930) - Remove Photo Mode Letterbox [1]
	- Remove Photo Mode Letterbox-930-1-0-0-1693964318.zip
- [nexusmods.com/starfield/mods/1103](https://www.nexusmods.com/starfield/mods/1103) - Always Unique Grav Jump [1]
	- Always Unique Jump Anim-1103-1-0-1694038272.zip
- [nexusmods.com/starfield/mods/1185](https://www.nexusmods.com/starfield/mods/1185) - Better Mines [1.0.0]
	- Better Mines-1185-1-0-0-1694081374.zip
- [nexusmods.com/starfield/mods/1223](https://www.nexusmods.com/starfield/mods/1223) - Better Dialogue Controls [1.2.1]
	- Better Dialogue Controls - No Confirmation-1223-1-2-1-1694325213.zip
- [nexusmods.com/starfield/mods/1246](https://www.nexusmods.com/starfield/mods/1246) - NO CAPS [1.0.0]
	- NOCAPS-1246-1-0-1-1694293220.zip
- [nexusmods.com/starfield/mods/1251](https://www.nexusmods.com/starfield/mods/1251) - Better 3rd Person Flight Camera [1.2]
	- FlightCamera1.2-1251-1-2-1694216220.zip
- [nexusmods.com/starfield/mods/1251](https://www.nexusmods.com/starfield/mods/1251) - Better 3rd Person Flight Camera [1.2]
	- FlightCamera-1251-1-0-1694114170.zip
- [nexusmods.com/starfield/mods/1277](https://www.nexusmods.com/starfield/mods/1277) - Fast Togglewalk [1.0.0]
	- 1.3x faster-1277-1-2-0-1694167230.zip
- [nexusmods.com/starfield/mods/1392](https://www.nexusmods.com/starfield/mods/1392) - Improved Combat AI [1.00]
	- Improved Combat AI-1392-1-00-1694190047.rar
- [nexusmods.com/starfield/mods/1445](https://www.nexusmods.com/starfield/mods/1445) - Turn off dialogue camera light [1.0]
	- StarfieldCustom.ini-1445-1-0-1694213591.zip
- [nexusmods.com/starfield/mods/1470](https://www.nexusmods.com/starfield/mods/1470) - NPC Greeting Distance Tweak [bat]
	- NPC Greeting Distance Tweak-1470-bat-1694226087.7z
- [nexusmods.com/starfield/mods/1545](https://www.nexusmods.com/starfield/mods/1545) - Less Intrusive Scanner [1.0]
	- Less Intrusive Scanner-1545-1-0-1694263265.zip
- [nexusmods.com/starfield/mods/1599](https://www.nexusmods.com/starfield/mods/1599) - Baka Kill My Games Folder [1.2]
	- Baka Kill My Games Folder-1599-1-2-1694314229.rar
- [nexusmods.com/starfield/mods/1603](https://www.nexusmods.com/starfield/mods/1603) - Simultaneous Mouse and Gamepad [1.0.0]
	- Simultaneous Mouse and Gamepad-1603-1-0-0-1694290197.7z
- [nexusmods.com/starfield/mods/1644](https://www.nexusmods.com/starfield/mods/1644) - Clearer Galaxy Map [1.1.0]
	- Clearer Galaxy Map-1644-1-1-0-1694318968.zip
- [nexusmods.com/starfield/mods/1662](https://www.nexusmods.com/starfield/mods/1662) - Baka Quit Game Fix [1.0]
	- Baka Quit Game Fix-1662-1-0-1694316328.rar
