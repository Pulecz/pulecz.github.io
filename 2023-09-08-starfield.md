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

Rest of these is optional

```
[Camera]
fFPWorldFOV=95
fTPWorldFOV=95
fFarCameraDistanceOffset=6.0
```

Set FOV to 95 (sort of ok for 21:9 screens)
allow further camera zoom out in 3rd person

```
[General]
SIntroSequence=0
uMainMenuDelayBeforeAllowSkip=0
sStartingConsoleCommand=bat ShellCasingsHigh;bat photoWide; bat FlightCamera; bat BetterMines
```

No intro, no MainMenuDelay, see details in [Cleanfield (88)](https://www.nexusmods.com/starfield/mods/88)

sStartingConsoleCommand are console commands which will run at start of the game so in this case it runs command bat which runs console commands from e.g. photoWide.txt saved in the root folder of Starfield

- bat ShellCasingsHigh [More Shell Cassings lifetime](https://www.nexusmods.com/starfield/mods/884)
- bat photoWide [Remove Photo Mode Letterbox](https://www.nexusmods.com/starfield/mods/930)
- bat BetterMines [Delayed mine detonation](https://www.nexusmods.com/starfield/mods/1185)
- bat FlightCamera [Larger zoom on 3rd person with space ship](https://www.nexusmods.com/starfield/mods/1251)

## StarfieldPrefs.ini

Unless you are one of those nimble players who can play FPS with gamepad, just disable it, it will prevent lots of silly issues:
in `Documents/My Games/Starfield/StarfieldPrefs.ini`

```
[General]
bGamepadEnable=0
```

# Current Mod List

TODO: Write installation procedures, what plugins are just file replacement, what are SFSE plugins, what are console commands run through bat and other categories

- [nexusmods.com/starfield/mods/88](https://www.nexusmods.com/starfield/mods/88) - Cleanfield - A No-Intro Videos And Clean Menu Fix [1.5]
- [nexusmods.com/starfield/mods/106](https://www.nexusmods.com/starfield/mods/106) - Starfield Script Extender (SFSE) [0.1.0]
- [nexusmods.com/starfield/mods/214](https://www.nexusmods.com/starfield/mods/214) - BetterHUD [0.3]
- [nexusmods.com/starfield/mods/270](https://www.nexusmods.com/starfield/mods/270) - Smooth Ship Reticle (120fps Smooth UI) [1.0]
- [nexusmods.com/starfield/mods/404](https://www.nexusmods.com/starfield/mods/404) - Undelayed Menus [1.0.3]
- [nexusmods.com/starfield/mods/404](https://www.nexusmods.com/starfield/mods/404) - Undelayed Menus - StarUI Inventory Patch [1.0.3]
- [nexusmods.com/starfield/mods/454](https://www.nexusmods.com/starfield/mods/454) - Enhanced Player Healthbar [1.0.3]
- [nexusmods.com/starfield/mods/546](https://www.nexusmods.com/starfield/mods/546) - Black Loading Screen Remover - Loading Screens Removed (Visual Glitches) [1.1.1b]
- [nexusmods.com/starfield/mods/562](https://www.nexusmods.com/starfield/mods/562) - 21x9 Loading Screens [1.0]
- [nexusmods.com/starfield/mods/642](https://www.nexusmods.com/starfield/mods/642) - Further Zoom For 3rd Person [1.0]
- [nexusmods.com/starfield/mods/658](https://www.nexusmods.com/starfield/mods/658) - Baka Achievement Enabler (SFSE) [1.3]
- [nexusmods.com/starfield/mods/773](https://www.nexusmods.com/starfield/mods/773) - StarUI Inventory [1.1]
- [nexusmods.com/starfield/mods/861](https://www.nexusmods.com/starfield/mods/861) - Dark Mode for Terminals [1.3.0]
- [nexusmods.com/starfield/mods/884](https://www.nexusmods.com/starfield/mods/884) - Sprint Stuttering Fix [1.0]
- [nexusmods.com/starfield/mods/885](https://www.nexusmods.com/starfield/mods/885) - More Subtle Scanner Sounds (No High Pitch - Menus UI Interactions - Less Annoying) [1.3.0]
- [nexusmods.com/starfield/mods/914](https://www.nexusmods.com/starfield/mods/914) - Immersive Shell Casings [1.1]
- [nexusmods.com/starfield/mods/930](https://www.nexusmods.com/starfield/mods/930) - Remove Photo Mode Letterbox [1]
- [nexusmods.com/starfield/mods/1003](https://www.nexusmods.com/starfield/mods/1003) - Scanner Reworked [1.3]
- [nexusmods.com/starfield/mods/1103](https://www.nexusmods.com/starfield/mods/1103) - Always Unique Grav Jump [1]
- [nexusmods.com/starfield/mods/1185](https://www.nexusmods.com/starfield/mods/1185) - Better Mines [1.0.0]
- [nexusmods.com/starfield/mods/1223](https://www.nexusmods.com/starfield/mods/1223) - Better Dialogue Controls [1.0.0]
- [nexusmods.com/starfield/mods/1246](https://www.nexusmods.com/starfield/mods/1246) - NO CAPS [1.0.0]
- [nexusmods.com/starfield/mods/1251](https://www.nexusmods.com/starfield/mods/1251) - Better 3rd Person Flight Camera [1.0]
