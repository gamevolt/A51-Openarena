Console Variables
To change these variables, either add them directly to your q3config.cfg file, or open the in-game console with ~ and type /set <cvar> <value>.
```
Search
View & Camera
Cvar	Default	Description

cg_fov	
default
90
Field of view in degrees.

cg_fovAspectAdjust	
default
0
Widescreen field of view:
0 cg_fov is the width of your view
1 cg_fov is the view on a 4:3 screen, widened to fit yours

cg_zoomfov	
default
22.5
Zoom FOV in degrees.

cg_zoomTime	
default
150
Zoom time in milliseconds.

cg_zoomSensitivityAuto	
default
1
Zoom sensitivity mode.
0 manual
1 automatic

cg_zoomSensitivityMultiplier	
default
0.1
Zoom sensitivity multiplier when cg_zoomSensitivityAuto is 1.

cg_viewsize	
default
100
Game view size as a percentage.

cg_runpitch	
default
0.0
Running bob pitch.

cg_runroll	
default
0.0
Running bob roll.

cg_bobup	
default
0.0
Walking bob height.

cg_bobpitch	
default
0.0
Walking bob pitch.

cg_bobroll	
default
0.0
Walking bob roll.

cg_fallKick	
default
0
Camera shake when landing.
Network, Prediction & Input
Cvar	Default	Description

cg_predictItems	
default
1
Predict item pickups.

cg_predictKnockback	
default
1
Predict knockback effects.

cg_predictStepOffset	
default
1
Smooth step-up movement and reduce climbing aim snaps.

cg_predictTeleport	
default
1
Predict teleports when supported by the server.

cg_smoothClients	
default
0
Smooth other players between snapshots.
0 off
1 on

cg_predictionFailSound	
default
0
Play a sound when a predicted rail hit is not confirmed.

cg_unlagged	
default
1
Enable client-side unlagged.

cg_unlaggedMissiles	
default
1
Enable unlagged missiles.

cl_maxpackets	
default
125
Max packets sent to the server per second.

snaps	
default
40
Requested snapshot rate.

com_maxfps	
default
125
Maximum frame rate.
Weapons & View Weapon
Cvar	Default	Description

cg_autoswitch	
default
0
Switch to a weapon you pick up:
0 off
1 on
2 only the first one after each spawn

cg_ammoCheck	
default
0
Prevent switching to weapons with no ammo.

cg_drawGun	
default
1
View weapon style:
0 hidden
1 show gun
2 show gun without movement animation

cg_drawGunGauntlet	
default
-1
Gauntlet view weapon override.
-1 uses cg_drawGun

cg_drawGunMachinegun	
default
-1
Machinegun view weapon override.
-1 uses cg_drawGun

cg_drawGunShotgun	
default
-1
Shotgun view weapon override.
-1 uses cg_drawGun

cg_drawGunGrenadeLauncher	
default
-1
Grenade Launcher view weapon override.
-1 uses cg_drawGun

cg_drawGunRocketLauncher	
default
-1
Rocket Launcher view weapon override.
-1 uses cg_drawGun

cg_drawGunLightning	
default
-1
Lightning Gun view weapon override.
-1 uses cg_drawGun

cg_drawGunRailgun	
default
-1
Railgun view weapon override.
-1 uses cg_drawGun

cg_drawGunPlasmagun	
default
-1
Plasmagun view weapon override.
-1 uses cg_drawGun

cg_drawGunBFG	
default
-1
BFG view weapon override.
-1 uses cg_drawGun

cg_gunAspectRatioFix	
default
0
Draw the view weapon at the size and position it would have on a 4:3 screen:
0 off, the gun grows on wider screens unless cg_fovAspectAdjust is 1
1 same gun at every aspect ratio

cg_gunX	
default
0
View weapon forward/back offset.

cg_gunY	
default
0
View weapon side offset.

cg_gunZ	
default
0
View weapon height offset.

cg_gunFov	
default
0
View weapon field of view in degrees. Changing cg_fov no longer moves or resizes the gun.
0 uses cg_fov

cg_gunZoom	
default
1
Magnify the view weapon when zooming:
0 off, the gun keeps its size
1 on, the gun zooms with the view

cg_gunColor	
default
-1
View weapon color. Accepts 0 – 9, white, #rrggbb color values.
-1 normal weapon model

cg_gunAlpha	
default
0.1
View weapon opacity when cg_gunColor is set.

cg_muzzleFlash	
default
0
Show muzzle flashes.

cg_tracerchance	
default
0.4
Machinegun tracer chance, 0 – 1.

cg_lightningHide	
default
0
Hide the Lightning Gun beam.

cg_lightningHideCrosshair	
default
0
Hide the crosshair while using Lightning Gun.
Crosshair
Cvar	Default	Description

cg_drawCrosshair	
default
10
Default crosshair.

cg_drawCrosshairGauntlet	
default
-1
Gauntlet crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairMachinegun	
default
-1
Machinegun crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairShotgun	
default
-1
Shotgun crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairGrenadeLauncher	
default
-1
Grenade Launcher crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairRocketLauncher	
default
-1
Rocket Launcher crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairLightning	
default
-1
Lightning Gun crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairRailgun	
default
-1
Railgun crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairPlasmagun	
default
-1
Plasmagun crosshair override.
-1 uses cg_drawCrosshair

cg_drawCrosshairBFG	
default
-1
BFG crosshair override.
-1 uses cg_drawCrosshair

cg_crosshairSize	
default
24
Crosshair size.

cg_crosshairSizeGauntlet	
default
-1
Gauntlet crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizeMachinegun	
default
-1
Machinegun crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizeShotgun	
default
-1
Shotgun crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizeGrenadeLauncher	
default
-1
Grenade Launcher crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizeRocketLauncher	
default
-1
Rocket Launcher crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizeLightning	
default
-1
Lightning Gun crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizeRailgun	
default
-1
Railgun crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizePlasmagun	
default
-1
Plasmagun crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairSizeBFG	
default
-1
BFG crosshair size override.
-1 uses cg_crosshairSize

cg_crosshairX	
default
0
Crosshair horizontal offset.

cg_crosshairY	
default
0
Crosshair vertical offset.

cg_crosshair45	
default
0
Rotate the crosshair 45 degrees.

cg_crosshairColor	
default
white
Crosshair color. Accepts 0 – 9, white, #rrggbb color values.

cg_crosshairAlpha	
default
1.0
Crosshair opacity.

cg_crosshairAspectRatioFix	
default
1
Correct crosshair aspect ratio.

cg_crosshairHealth	
default
0
Color the crosshair by health.

cg_crosshairPulse	
default
0
Pulse the crosshair on item pickup.

cg_crosshairAction	
default
0
Crosshair effects. Add flags to combine:
0 off
1 pulse on hit
2 hidden until hit
4 change color on hit

cg_crosshairActionColor	
default
red
Crosshair action color for cg_crosshairAction.
Accepts 0 – 9, white, #rrggbb color values.

cg_crosshairActionScale	
default
2.0
Crosshair action scale multiplier.
0.5 half size
2.0 double size

cg_crosshairActionTime	
default
400
Crosshair action duration in milliseconds for cg_crosshairAction, 50 – 5000.

cg_crosshairAutoScale	
default
0
Auto-scale the crosshair by distance.

cg_crosshairAutoScaleSpeed	
default
120
Crosshair auto-scale smoothing time in milliseconds.

cg_crosshairAutoScaleFactor	
default
0.40
Maximum crosshair auto-scale reduction.
0.40 crosshair shrinks by up to 40%.
Crosshair Decoration
Cvar	Default	Description

cg_crosshairDecor	
default
0
Crosshair decoration.

cg_crosshairDecorSize	
default
24
Crosshair decoration size.

cg_crosshairDecor45	
default
0
Rotate the crosshair decoration 45 degrees.

cg_crosshairDecorColor	
default
white
Crosshair decoration color. Accepts 0 – 9, white, #rrggbb color values.

cg_crosshairDecorAlpha	
default
1.0
Crosshair decoration alpha.

cg_crosshairDecorHealth	
default
0
Color the crosshair decoration by health.

cg_crosshairDecorHealthLevels	
default
-1
Crosshair decoration health color mode.
-1 follow cg_healthColorLevels
0 classic
1 interval

cg_crosshairDecorAction	
default
4
Crosshair decoration effects. Add flags to combine:
0 off
1 pulse on hit
2 hidden until hit
4 change color on hit

cg_crosshairDecorActionColor	
default
red
Crosshair decoration action color for cg_crosshairDecorAction 4. Accepts 0 – 9, white, #rrggbb color values.

cg_crosshairDecorActionScale	
default
2.0
Crosshair decoration action scale multiplier.
0.5 half size
2.0 double size

cg_crosshairDecorActionTime	
default
400
Crosshair decoration action duration in milliseconds for cg_crosshairDecorAction, 50 – 5000.
Crosshair Names
Cvar	Default	Description

cg_drawCrosshairNames	
default
3
Crosshair names:
0 off
1 all players
2 allies only
3 enemies only

cg_crosshairNamesY	
default
174
Crosshair name vertical position.

cg_crosshairNameScale	
default
1.0
Crosshair name scale.
0.5 half size
2.0 double size

cg_crosshairNamesHealth	
default
1
Show teammate health and armor under crosshair names when teammate marker health is off.
HUD Elements
Cvar	Default	Description

cg_aspectRatioFix	
default
1
HUD scaling on widescreen displays:
1 square and centered
0 stretched to fill the screen, like vanilla Quake 3

cg_draw2D	
default
1
Show 2D HUD elements.

cg_drawStatus	
default
1
Show player status.

cg_draw3dIcons	
default
1
Show 3D HUD icons.

cg_drawIcons	
default
1
Show HUD icons.

cg_drawTimer	
default
1
Match timer:
0 off
1 on
2 centered

cg_timerScale	
default
1.0
Timer scale.
0.5 half size
2.0 double size

cg_drawThawTimer	
default
1
Show a HUD progress bar while you are thawing a teammate.

cg_thawTimerY	
default
286
Thaw timer vertical position.

cg_thawTimerScale	
default
1.0
Thaw timer scale.
0.5 half size
2.0 double size

cg_drawFPS	
default
0
Show FPS counter.

cg_fpsScale	
default
1
FPS counter scale.
0.5 half size
2.0 double size

cg_fpsAlpha	
default
0.5
FPS counter opacity.

cg_drawPing	
default
0
Show ping on the HUD.

cg_pingScale	
default
1
Ping display scale.
0.5 half size
2.0 double size

cg_drawSpeed	
default
0
Speed meter:
0 off
1 top right
2 centered

cg_drawSpeed3D	
default
0
Use full 3D speed in the speed meter.

cg_speedScale	
default
1.0
Speed meter scale.
0.5 half size
2.0 double size

cg_speedAlpha	
default
0.5
Speed meter opacity.

cg_speedSuffix	
default
u/s
Speed meter suffix.
"" no suffix

cg_drawSnapshot	
default
0
Show snapshot info.

cg_lagometer	
default
1
Lagometer position:
0 off
1 bottom right
2 top right

cg_lagometerScale	
default
0.9
Lagometer scale.
0.5 half size
2.0 double size

cg_drawAmmoWarning	
default
1
Ammo warning:
0 off
1 selected weapon
2 all weapons

cg_drawAttacker	
default
1
Show the last attacker.

cg_attackerScale	
default
1.0
Attacker HUD scale.
0.5 half size
2.0 double size

cg_drawRewards	
default
1
Show reward popups.

cg_rewardScale	
default
1.0
Reward popup scale.
0.5 half size
2.0 double size

cg_rewardCollapse	
default
0
Reward popup layout.
0 a medal per reward, one medal with a count from 10
1 always one medal with a count

cg_scorePlums	
default
1
Show floating score numbers.

cg_drawScore	
default
1
Show the compact score box.

cg_scoreNames	
default
1
Show leader or flag carrier names in the score box.

cg_scoreScale	
default
1
Score box scale.
0.5 half size
2.0 double size

cg_powerupScale	
default
0.75
Powerup icon and timer scale.
0.5 half size
2.0 double size

cg_holdableScale	
default
1
Holdable icon scale.
0.5 half size
2.0 double size

cg_drawCenterMessages	
default
1
Show center-screen messages.

cg_centertime	
default
3
Center message display time in seconds.

cg_serverMessageScale	
default
0.8
Server message scale.

cg_fragMessage	
default
1
Show a frag message on your HUD.

cg_fragMessageAward	
default
1
Show a kill's award, such as Headshot!, under the frag message.

cg_fragScale	
default
1.0
Frag message scale.
0.5 half size
2.0 double size

cg_voteScale	
default
1.0
Vote message scale.
0.5 half size
2.0 double size
Pickup Messages
Cvar	Default	Description

cg_drawPickup	
default
2
Pickup message position:
0 off
1 right
2 left
3 centered

cg_drawPickupY	
default
0.0
Pickup message vertical offset.

cg_pickupScale	
default
1.0
Pickup message scale.
0.5 half size
2.0 double size

cg_pickupTimer	
default
1
Show timers on pickup messages.
0 off
1 :ss format
2 m:ss format

cg_pickupTimedOnly	
default
0
Only show pickup messages for items with pickup timers.

cg_pickupFadeTime	
default
3.0
Pickup message fade time in seconds.

cg_pickupStyle	
default
1
Pickup message style:
0 default
1 grouped
Status Bar & Weapon Bar
Cvar	Default	Description

cg_statusBar	
default
0
Status bar style:
"" or -1 classic
0 A51
1 A51 center
2 Quake Live style
3 Quake Live style with left ammo
4 Quake Live style without ammo block
5 Quake Live competition style
6 Quake Live competition style with left ammo
7 Quake Live competition style without ammo block

cg_statusBarHead	
default
1
Show the player head in the classic and A51 status bars.

cg_statusBarArmorIcon	
default
1
Show the armor icon in the classic and A51 status bars.

cg_statusBarBg	
default
1
Show the background in the classic and A51 status bars.

cg_statusBarSlim	
default
0
Use the slim layout for the A51 status bar.

cg_statusBarFont	
default
""
Status bar font override. The classic style always uses the original digits.

cg_weaponBar	
default
0
Weapon bar position:
0 classic
1 Quake Live style left
2 Quake Live style right
3 Quake Live style center
4 Ratmod style
5 classic left
6 classic right

cg_weaponBarAlways	
default
0
Keep the weapon bar visible at all times.

cg_weaponBarScale	
default
0.9
Weapon bar scale.
0.5 half size
2.0 double size

cg_weaponBarY	
default
0
Weapon bar vertical offset.

cg_weaponBarNames	
default
1
Show the selected weapon name above the custom weapon bar.

cg_weaponBarGauntlet	
default
0
Show gauntlet in the custom weapon bar.

cg_weaponBarAutoColor	
default
1
Auto-color weapon bar labels by ammo status.

cg_weaponBarAutoColorBg	
default
0
Auto-color weapon bar backgrounds by ammo status.
Scoreboard & Loading Screen
Cvar	Default	Description

cg_scoreboardStyle	
default
1
Scoreboard style:
0 classic
1 new scoreboard

cg_scoreboardFont	
default
-1
Scoreboard font.
-1 uses cg_font

cg_scoreTransparency	
default
1.0
Scoreboard background opacity. 0.0 – 1.0

cg_scoreboardShowDead	
default
1
Show dead-player fade and DEAD on the scoreboard.

cg_scoreboardShowRespawn	
default
0
Show the Click FIRE to respawn message.

cg_scoreboardFadeOut	
default
1
Fade the scoreboard out.
0 it disappears at once

cg_ignoreSpectatorBots	
default
1
Hide spectator bots from the scoreboard.

cg_hideScores	
default
0
Hide the scoreboard.
0 off
1 on

cg_realPing	
default
0
Show your real ping on the scoreboard.
Weapon Stats
Cvar	Default	Description

cg_drawWeaponStats	
default
0
Show weapon stats on the HUD. Can also be toggled with +acc.

cg_weaponStatsScale	
default
1.0
Weapon stats scale.
0.5 half size
2.0 double size

cg_weaponStatsX	
default
50.0
Weapon stats horizontal offset.

cg_weaponStatsY	
default
0.0
Weapon stats vertical offset.

cg_weaponStatsBgColor	
default
black
Weapon stats background color. Accepts 0 – 9, white, #rrggbb color values.

cg_weaponStatsBgAlpha	
default
0.1
Weapon stats background opacity.
Team Overlay
Cvar	Default	Description

cg_drawTeamOverlay	
default
1
Team overlay position:
0 off
1 top right
2 bottom right
3 bottom left

cg_teamOverlayScale	
default
1.0
Team overlay scale.
0.5 half size
2.0 double size

cg_teamOverlayBackground	
default
1
Show the team overlay background.

cg_teamOverlayFields	
default
name location health
Team overlay columns, left to right. Examples:
name location health
n h

cg_teamOverlayHealthStyle	
default
2
Team overlay health style:
0 text
1 bar and text
2 bar only
3 Quake Live style boxes

cg_teamOverlayFont	
default
-1
Team overlay font:
-1 uses cg_font

cg_teamOverlayLocationColor	
default
1
Color team overlay locations by map area.

cg_teamOverlayLocationWidth	
default
16
Maximum team overlay location width in characters.

cg_teamOverlayMaxPlayers	
default
8
Maximum teammates shown in the team overlay.
0 unlimited
Teammate Markers
Cvar	Default	Description

cg_teamMarker	
default
1
Show markers above teammates.

cg_teamMarkerStyle	
default
1
Teammate marker art style. Values alternate between the 2 available marker sets.

cg_teamMarkerScale	
default
1.0
Teammate marker scale.
0.5 half size
2.0 double size

cg_teamMarkerMinSize	
default
5.0
Minimum teammate marker size at long range when names and health are off. 0 – 10

cg_teamMarkerAlpha	
default
1
Teammate marker opacity.

cg_teamMarkerVisibility	
default
2
Friendly marker visibility:
0 off
1 markers through walls
2 markers plus names and health through walls

cg_teamMarkerHud	
default
1
Show off-screen teammate markers on the HUD border.
0 off
1 on

cg_teamMarkerColor	
default
yellow
Default teammate marker color. Accepts 0 – 9, white, #rrggbb color values.

cg_teamMarkerColorLow	
default
""
Teammate marker color when health + armor is 100 or less. Leave empty to disable. Accepts 0 – 9, white, #rrggbb color values.

cg_teamMarkerColorCritical	
default
""
Teammate marker color when health is 50 or less. Leave empty to disable. Accepts 0 – 9, white, #rrggbb color values.

cg_teamMarkerFov	
default
20
Crosshair FOV in degrees where the teammate indicator replaces the normal marker sprite.
0 off
180 always

cg_teamMarkerNames	
default
1
Show teammate names in the indicator.
0 off
1 on

cg_teamMarkerHealth	
default
1
Show teammate health and armor in the indicator.
0 off
1 on

cg_teamMarkerHealthStyle	
default
1
Teammate indicator health style:
0 text
1 progress bar
2 Quake Live style boxes

cg_teamMarkerPowerups	
default
1
Show teammate powerup icons in the indicator:
0 off
1 top
2 bottom
3 left
4 right

cg_teamMarkerPowerupScale	
default
1.0
Teammate indicator powerup icon scale.
0.5 half size
2.0 double size

cg_teamMarkerOffset	
default
12
Teammate indicator vertical offset.

cg_teamMarkerMaxLength	
default
8
Maximum teammate name length in the indicator.

cg_teamMarkerFont	
default
-1
Teammate indicator font:
-1 uses cg_font

cg_teamMarkerBgColor	
default
black
Teammate indicator background color. Accepts 0 – 9, white, #rrggbb color values.

cg_teamMarkerBgAlpha	
default
0.2
Teammate indicator background opacity.
Ping & Flag Markers
Cvar	Default	Description

cg_pingLocation	
default
3
World ping marker style:
0 off
1 style 1
2 style 2
3 mixed style

cg_pingLocationTime	
default
1000
Ping marker background time in milliseconds.

cg_pingLocationTime2	
default
3500
Ping marker foreground time in milliseconds.

cg_pingLocationSize	
default
70
Ping marker background size.

cg_pingLocationSize2	
default
30
Ping marker foreground size.

cg_pingEnemyStyle	
default
4
Enemy ping art style. 1–3 select matching sets; other values use the default set.

cg_pingLocationHud	
default
1
Show ping markers on the HUD border.

cg_pingLocationHudSize	
default
1.0
HUD ping marker scale.
0.5 half size
2.0 double size

cg_pingLocationBeep	
default
1
Play a beep for ping markers.

cg_flagMarker	
default
0
Show CTF flag markers.

cg_flagMarkerMaxSize	
default
32.0
Maximum CTF flag marker size.

cg_flagMarkerMinSize	
default
16.0
Minimum CTF flag marker size.

cg_flagStyle	
default
0
Flag model style.
0 classic
1 Quake Live style
Chat, Console & Fonts
Cvar	Default	Description

cg_chatEnable	
default
3
Console chat filter:
0 off
1 global only
2 team only
3 global and team

cg_chatTime	
default
15000
Chat message lifetime in milliseconds.

cg_chatScale	
default
1.2
Chat feed scale.
0.5 half size
2.0 double size

cg_chatLines	
default
6
Visible line limit for the chat feed. Set 0 to hide.

cg_teamChatTime	
default
15000
Time team chat stays on screen in milliseconds.

cg_teamChatLines	
default
5
Maximum team chat lines on screen.

cg_teamChatY	
default
420
Team chat vertical position.

cg_teamChatScale	
default
1.2
Team chat scale.
0.5 half size
2.0 double size

cg_teamChatReverse	
default
1
Show team chat in reverse order.

cg_teamChatOnly	
default
0
Only print team chat in the console.

cg_teamChatLocation	
default
1
Show locations in team chat messages.
0 hide
1 show

cg_noChatBeep	
default
0
Disable the chat beep.

cg_noTeamChatBeep	
default
0
Disable the team chat beep.

cg_newConsole	
default
0
Use the custom console/chat overlays.

cg_commonConsole	
default
0
Use a shared console/chat feed in the new console.

cg_commonConsoleLines	
default
6
Visible line limit for the shared console feed. Set 0 to hide.

cg_consoleFont	
default
-1
Console and chat overlay font:
-1 uses cg_font

cg_consoleTime	
default
15000
Console message lifetime in milliseconds.

cg_consoleScale	
default
1.0
Console feed scale.
0.5 half size
2.0 double size

cg_consoleLines	
default
3
Visible line limit for the new console feed. Set 0 to hide.

cg_conObituaries	
default
1
Show kill and freeze messages in the console.

con_notifytime	
default
3
Engine notify line time.

cg_font	
default
15
Default font selection.
0 the classic charset
1 Bigchars
2 Newchars
3 Quake Live
4 Sansman
5 Inter
6 Eternal
7 Morris
8 Courier
9 Creepster
10 Slackey
11 Orbitron
12 Diablo
13 Bookerly
14 Batman
15 Geist

cg_lofi	
default
0
Use the original low-resolution Quake 3 assets.

cg_fontScale	
default
1.0
Global multiplier for font rendering.
0.5 half size
2.0 double size

cg_fontUpcase	
default
0
Draw all text in capitals.

cg_fontShadow	
default
1
Draw drop shadows behind font text.

cg_fontClassicCondensed	
default
0
Draw the classic font (cg_font 0) condensed.
Player Models, Colors & Identity
Cvar	Default	Description

cg_deferPlayers	
default
1
Defer loading newly seen player models until a safer moment.

cg_enemyModel	
default
""
Show every enemy as the same model, written as keel or keel/pm. Give just a skin, as in /pm, to keep their own model and change only the skin. Empty leaves them alone.

Only the pm, ql, fb and hb skins and the glow (cg_enemyGlow) show cg_enemyColors.

cg_enemyColors	
default
22222
Five colors for every enemy, in order: head, torso, legs, rail core, rail rings. Takes 0 – 9, or ? for the enemy's team color.

Only the pm, ql, fb and hb skins and the glow show colors. With cg_enemyModel empty, enemies keep their own skin and colors instead.

cg_enemyHeadColor	
default
-1
Enemy head color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_enemyColors.
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_enemyTorsoColor	
default
-1
Enemy torso color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_enemyColors.
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_enemyLegColor	
default
-1
Enemy leg color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_enemyColors.
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_enemyRailColor	
default
-1
Enemy rail core color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_enemyColors.
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

Applies even with cg_enemyModel empty, unlike the body colors.

cg_enemyRailColor2	
default
-1
Enemy rail ring color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_enemyColors.
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

Applies even with cg_enemyModel empty, unlike the body colors.

cg_enemyFrozenColor	
default
white
Frozen enemy color.
-1 uses the default white.
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_enemyFrozenBody	
default
0
Apply cg_enemyFrozenColor to the whole frozen enemy model.

cg_enemyUniquePalette	
default
2
Palette for enemy unique colors:
1 standard
2 light

cg_teamModel	
default
""
Show every teammate as the same model, written as keel or keel/pm. Give just a skin, as in /pm, to keep their own model and change only the skin. Empty leaves them alone.

Only the pm, ql, fb and hb skins and the glow (cg_teamGlow) show cg_teamColors.

cg_modelMinBright	
default
0
Floor on how dark other players' own colors look to you, so nobody can hide in black. 0 – 255, 0 turns it off.

Colors you pick yourself, like cg_enemyColors, are not changed.

cg_myColors	
default
""
Your own head, torso and leg colors, written as 234 or #ff0000,#00ff00,#0000ff. Other players see you in these colors unless they force their own model, and your profile page on the website and the head on your own status bar use them too.

Only the pm, ql, fb and hb skins show colors.

color1	
default
4
Your own rail core color, also shown in your railgun's chamber. Accepts 0 – 9, white, #rrggbb color values.
team uses your team's color

Other players see it unless they override it with cg_enemyRailColor or cg_teamRailColor. 0 is black, not "default".

color2	
default
5
Your own rail ring color. Accepts 0 – 9, white, #rrggbb color values.
team uses your team's color

Other players see it unless they override it with cg_enemyRailColor2 or cg_teamRailColor2. 0 is black, not "default".

cg_teamColors	
default
?????
Five colors for every teammate, in order: head, torso, legs, rail core, rail rings. Takes 0 – 9, or ? for your team's color.

Only the pm, ql, fb and hb skins and the glow show colors. With cg_teamModel empty, teammates keep their own skin and colors instead.

cg_teamHeadColor	
default
-1
Teammate head color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamColors.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_teamTorsoColor	
default
-1
Teammate torso color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamColors.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_teamLegColor	
default
-1
Teammate leg color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamColors.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_teamRailColor	
default
-1
Teammate rail core color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamColors.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

Applies even with cg_teamModel empty, unlike the body colors.

cg_teamRailColor2	
default
-1
Teammate rail ring color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamColors.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

Applies even with cg_teamModel empty, unlike the body colors.

cg_teamFrozenColor	
default
white
Frozen teammate color.
-1 uses the default white.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_teamFrozenBodyColor	
default
0
Apply cg_teamFrozenColor to the whole frozen teammate model.

cg_teamUniquePalette	
default
2
Palette for teammate unique colors:
1 standard
2 light

cg_showPlayerLean	
default
1
Show player lean animations.

cg_modelJump	
default
0
Jump leg animation.
0 disabled
1 enabled

cg_playerIds	
default
0
Append GUID to player names:
0 off
1 on
2 only for duplicate names
Glow & Outline Effects
Cvar	Default	Description

cg_enemyGlow	
default
0
Enemy glow shell:
0 off
1 bright shell
2 flat shell
3 blended shell

cg_enemyGlowAlpha	
default
0.2
Enemy glow opacity.

cg_enemyGlowColor	
default
-1
Enemy glow color. -1 gives each part its cg_enemyColors color.

cg_teamGlow	
default
0
Teammate glow shell:
0 off
1 bright shell
2 flat shell
3 blended shell

cg_teamGlowAlpha	
default
0.2
Teammate glow opacity.

cg_teamGlowColor	
default
-1
Teammate glow color. -1 gives each part its cg_teamColors color.

cg_enemyOutline	
default
1
Enemy outline mask.
0 off
1 full outline

Add flags to combine:
2 legs
4 torso
8 head

cg_enemyOutlineSize	
default
2
Enemy outline size.
0 off
1 thin
2 normal
3 thick

cg_enemyOutlineAlpha	
default
1.0
Enemy outline opacity.

cg_enemyOutlineColor	
default
2
Enemy outline color.
-1 uses the enemy's model color
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_enemyOutlineHeadColor	
default
-1
Enemy outline head color override.
-1 uses cg_enemyOutlineColor
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_enemyOutlineTorsoColor	
default
-1
Enemy outline torso color override.
-1 uses cg_enemyOutlineColor
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_enemyOutlineLegColor	
default
-1
Enemy outline leg color override.
-1 uses cg_enemyOutlineColor
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_teamOutline	
default
1
Teammate outline mask.
0 off
1 full outline

Add flags to combine:
2 legs
4 torso
8 head

cg_teamOutlineSize	
default
2
Teammate outline size.
0 off
1 thin
2 normal
3 thick

cg_teamOutlineAlpha	
default
0.5
Teammate outline opacity.

cg_teamOutlineColor	
default
team
Teammate outline color. Accepts 0 – 9, white, #rrggbb color values.
-1 uses the teammate model color.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_teamOutlineHeadColor	
default
-1
Teammate outline head color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamOutlineColor
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_teamOutlineTorsoColor	
default
-1
Teammate outline torso color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamOutlineColor
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_teamOutlineLegColor	
default
-1
Teammate outline leg color override. Accepts 0 – 9, white, #rrggbb color values.
-1 uses cg_teamOutlineColor
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette
World, Item & Projectile Effects
Cvar	Default	Description

cg_shadows	
default
1
Show shadows.
0 off
1 on

cg_gibs	
default
1
Show gibs and body part explosions.

com_blood	
default
1
Show blood and gibs.

cg_bloodStyle	
default
0
Blood explosion style:
0 blood
1 spark

cg_bloodColor	
default
""
Blood explosion color. Accepts 0 – 9, white, #rrggbb color values.
team uses the target's team color
unique uses the target's unique color

cg_brassTime	
default
2500
Shell casing lifetime in milliseconds.

cg_marks	
default
1
Show impact marks on walls and floors.

cg_simpleItems	
default
0
Item style:
0 off
1 sprite
2 raised sprite

cg_simpleItemStyle	
default
1
Item icon style for simple items and item HUD icons:
0 vanilla item icons
1 QL icons
2 CPMA icons

cg_itemFx	
default
7
World item effects. Add flags to combine:
0 static
1 bounce
2 rotate
4 scale

cg_deadBodyFilter	
default
0
Hide dead bodies.

cg_deadBodyBlack	
default
1
Dead body color:
0 default
1 light gray
2 gray
3 dark gray

cg_enableBreath	
default
1
Show breath puffs.

cg_noProjectileTrail	
default
0
Hide rocket and grenade smoke trails, the spark trail of the new plasma (cg_oldPlasma 0), and underwater bubble trails.

cg_railTrailTime	
default
400
Rail trail duration in milliseconds.

cg_oldRail	
default
1
Rail swirl effect.
0 on
1 off

cg_oldRocket	
default
1
Rocket plume effect.
0 on
1 off

cg_oldPlasma	
default
1
Plasma trail style:
0 new
1 old

cg_grenadeStyle	
default
0
Grenade model style.
0 classic
1 CPMA
2 OpenArena's own, on OpenArena only

cg_enemyGrenadeColor	
default
-1
Enemy grenade strip color. Accepts 0 – 9, white, #rrggbb color values.
team uses the enemy's team color
unique uses a unique color from the cg_enemyUniquePalette palette

cg_teamGrenadeColor	
default
-1
Team grenade strip color. Accepts 0 – 9, white, #rrggbb color values.
team uses your team's color
unique uses a unique color from the cg_teamUniquePalette palette

cg_lightningStyle	
default
13
Lightning beam style.
0 classic
1 – 27 new styles
28 OpenArena's own, on OpenArena only

cg_trueLightning	
default
1.0
Lightning shaft lag. Has no effect on unlagged servers.
0.0 full lag
1.0 no lag

cg_lightningImpact	
default
0
Show lightning hit effect.

cg_plasmaStyle	
default
0
Plasma visual style.
0 classic
1 – 4 new styles
5 OpenArena's own, on OpenArena only

cg_rocketStyle	
default
0
Rocket projectile style.
0 classic
1 – 2 new styles
3 OpenArena's own, on OpenArena only

cg_explosionStyle	
default
0
Explosion effect style.
0 default
1 small explosion
-1 hide explosion

cg_smoke_sg	
default
1
Show shotgun smoke.

cg_smokegrowth_gl	
default
1
Grenade smoke growth speed.

cg_smokegrowth_rl	
default
1
Rocket smoke growth speed.

cg_smokeradius_gl	
default
32
Grenade smoke radius.

cg_smokeradius_rl	
default
64
Rocket smoke radius.

cg_smokedensity_gl	
default
50
Grenade smoke density.

cg_smokedensity_rl	
default
50
Rocket smoke density.

cg_nomip	
default
511
Force no-picmip on selected effects, regardless of r_picmip.
0 all effects follow r_picmip
511 all listed effects

Add flags to combine:
1 Lightning Gun shaft and impact
2 Plasmagun bolt and explosion
4 Rocket Launcher missile and explosion
8 Grenade Launcher model and explosion
16 Machinegun and Shotgun bullets
32 Railgun trail and explosion
64 BFG explosion
128 blood
256 smoke puffs

cg_nomipShots and cg_nomipExplosions can override projectile and explosion bits.

cg_nomipShots	
default
-1
Override unmipped projectile visuals (Lightning shaft, plasma bolt, rocket, grenade).
-1 uses the matching cg_nomip bit
0 forces mipmapped
1 forces no-picmip where supported.

cg_nomipExplosions	
default
-1
Override unmipped impact and explosion visuals (weapon bits 1–64).
-1 uses the matching cg_nomip bit
0 forces mipmapped
1 forces no-picmip where supported.

cg_dlightGauntlet	
default
9999FF
Gauntlet dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightMG	
default
FFFF00
Machinegun dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightSG	
default
FFFF00
Shotgun dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightGL	
default
FFBF00
Grenade Launcher dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightRL	
default
FFBF00
Rocket Launcher dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightLG	
default
9999FF
Lightning Gun dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightRG	
default
FF8000
Railgun dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightPG	
default
9999FF
Plasmagun dynamic light color. Accepts 0 – 9, white, #rrggbb color values.

cg_dlightBFG	
default
FFB2FF
BFG dynamic light color. Accepts 0 – 9, white, #rrggbb color values.
Damage & Health Feedback
Cvar	Default	Description

cg_damageDraw	
default
1
Damage indicator style:
0 off
1 standard
2 Ratmod style

cg_damageIndicatorScale	
default
1.0
Damage indicator scale.
0.5 half size
2.0 double size

cg_damageIndicatorAlpha	
default
1.0
Damage indicator alpha.

cg_damageKick	
default
0
Screen kick when taking damage.

cg_damagePlums	
default
0
Show damage numbers when supported by the server.

cg_damagePlumFont	
default
0
Damage number font.
0 classic
-1 uses cg_font

cg_damagePlumScale	
default
1.0
Damage number scale.
0.5 half size
2.0 double size

cg_damagePlumAlpha	
default
1.0
Damage number opacity.

cg_damagePlumWeapons	
default
14
Damage number weapon filter.
0 off
-1 all

Add flags to combine:
1 Machinegun
2 Shotgun
4 Grenade Launcher
8 Rocket Launcher
16 Lightning Gun
32 Railgun
64 Plasmagun
128 BFG

cg_damagePlumAccumulate	
default
0
Add rapid hits on one target into a single running total. One hit across several targets at the same moment still shows separately.

cg_damagePlumColor	
default
-1
Fixed color for damage numbers, like the crosshair colors (named colors, 0-9 codes or hex).
-1 or empty uses the damage color.

cg_damagePlumGradient	
default
0
Smooth damage-colored gradient for damage numbers instead of the four classic bands.

cg_damagePlumAccumulateTime	
default
750
How long cg_damagePlumAccumulate keeps adding to a number, in milliseconds.
750 default

cg_damagePlumScatter	
default
1
How damage numbers move as they fade.
0 classic straight float
1 arc and drift apart

cg_healthColorLevels	
default
1
Use fixed red, yellow, and white health colors.
0 off
1 on

cg_killerHealth	
default
1
Show killer health messages.
Audio & Sounds
Cvar	Default	Description

cg_hitSounds	
default
0
Hitsound pitch mode:
-1 off
0 fixed pitch
1 more damage, lower pitch
2 more damage, higher pitch
3 fixed pitch, the other game's sound: OpenArena's on Quake 3, Quake 3's on OpenArena

cg_stackHitSounds	
default
1
Stack damage for cg_hitSounds.

cg_stackHitSoundsTimeout	
default
500
Damage stack timeout in milliseconds for cg_stackHitSounds.

cg_killBeep	
default
2
Frag sound:
0 off
1 Quake Live
2 Ding
3 Cha-ching
4 Nintendo

cg_damageSound	
default
0
Quake Champions style incoming damage sounds. Plays a cue when another player damages you, in four steps from light to heavy depending on how much health and armor the hit took.

cg_lightningFireSound	
default
1
Suppress the initial Lightning Gun fire sound.

cg_lightningHitSound	
default
1
Enable Lightning Gun hit sounds.

cg_ammoClick	
default
1
Play the no-ammo click when firing or switching onto empty weapons.

cg_noTaunt	
default
0
Disable taunts and gestures.

cg_noLeadSounds	
default
0
Disable lead-change announcements in non-team modes.

cg_noVoteBeep	
default
0
Disable the vote beep.

s_ambient	
default
1
Ambient world sound toggle.

cg_mySound	
default
""
Use a different player sound set for yourself.

cg_teamSound	
default
""
Use a different player sound set for teammates.

cg_enemySound	
default
""
Use a different player sound set for enemies.

cg_myFootsteps	
default
""
Use a different footstep set for yourself.

cg_teamFootsteps	
default
""
Use a different footstep set for teammates.
"" default
-1 mute
0 normal
1 boot
2 flesh
3 mech
4 energy

cg_enemyFootsteps	
default
""
Use a different footstep set for enemies.
"" default
-1 mute
0 normal
1 boot
2 flesh
3 mech
4 energy
Spectator & Follow
Cvar	Default	Description

cg_followkiller	
default
0
Auto-follow the killer of the player you are chasing.

cg_followpowerup	
default
0
Auto-follow powerup pickups while spectating.

cg_followScale	
default
1.0
Follow HUD scale.
0.5 half size
2.0 double size

cg_spectGlow	
default
0
Highlight players while spectating.

cg_spectOrigModel	
default
0
Use original player models while free-spectating. Follow targets already use original models.
Recording & Automation
Cvar	Default	Description

cg_autoAction	
default
0
Automatic match actions. Add flags to combine:
2 take an end-of-match screenshot
4 auto-record demos

cg_useScreenShotJPEG	
default
0
Save auto-screenshots as JPEG.

cg_recordMessage	
default
1
Show the demo recording message.

cg_execVstr	
default
""
Run vstr <value> each time a map loads, including after vid_restart and when a demo starts.
```
