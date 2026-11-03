# Script i will use to make my life easier on A51 Open Arena

```
                                ▓▓▓▓▓▓▓▓▓▓▓▓▓
                               ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
                              ▓████▓▓▓▓▓▓▓████▓
                             ▓▓▓▓░█▓▓▓▓▓▓▓█░▓▓▓▓
                            ▓▓▓▓▓░█████████░▓▓▓▓▓
                           ▓▓▓▓▓▓░█░▓▓▓▓▓░█░▓▓▓▓▓▓
            ████████████  ▓▓▓▓▓▓▓░█░▓▓▓▓▓░█░▓▓▓▓▓▓▓  ████████████
            █▒▒▒░░  ▓▓▓█  ▓▓▓▓▓▓▓░░░▓▓▓▓▓░░░▓▓▓▓▓▓▓  █▓▓▓  ░░▒▒▒█
            ██▒░░    ▓██  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ██▓    ░░▒██
             █▀▀▀▀▀▀ ▓█    ▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓    █▓ ▀▀▀▀▀▀█
             █▒░░    ▓█          ▒▒▒▒▒▒▒▒▒▒▒          █▓    ░░▒█
             █▒░░    ▓█         ▒▒▒▒▒▒▒▒▒▒▒▒▒         █▓    ░░▒█   
             █▒░░    ▓█       ████▒▒▒▒▒▒▒▒▒▒▒██       █▓    ░░▒█   
   '         █▒░░    ▓█      ██████▒▒▒▒▒▒▒██████      █▓    ░░▒█        '
   $.        █▒░░    ▓█      ▀██████▒▒▒▒▒██████▀      █▓    ░░▒█       .$
   $$        █▒▒░    ▓█       ▀▀▀▀▀▀     ▀▀▀▀▀▀       █▓    ░░▒█       $$       
         ,$$█████████████████████████████████████████████████████$$,          
         $$$   Competitive gaming & late-night casual runs       $$$
          $$'                                         k :handshake: '$$
   ███████$███   Resource & file sharing for the community     ███$███████
   █▒▒▒░░ '▓▓█        :wrench: We're under construction         █▓▓' ░░▒▒▒█
   ██▒░░   ▓██                                                 ██▓   ░░▒██
    █▒░░   ▓█              twitch/AimdingusTV                   █▓   ░░▒█
    █▒░░   ▓█         youtube.com/aimdingustv                   █▓   ░░▒█
    █▒░░   ▓█                                                   █▓   ░░▒█
    ██▒▒░  ▓▓███████████████████████████████████████████████████▓▓  ░▒▒██
     ██▒▒░  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ░▒▒██
        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██
         ▀████████████████████████████████████████████████████████▀```

# A51 OpenArena  OmegA Vulkan Launcher

A small collection of shell launchers for running **OpenArena OmegA**  the Quake3e-based engine with a Vulkan renderer on Linux with an NVIDIA GPU, configured for play on the [Area 51 (A51)](https://q3a51.com) Quake III Arena servers.

Instead of hand-typing a long command line and a pile of `+set` cvars every session, you run one script and you're in the game.

## Requirements

- **Linux x86-64.** The script relies on `nice`, `ionice` and POSIX shell behaviour.
- **NVIDIA GPU** with a reasonably current proprietary driver exposing Vulkan.
- **OpenArena OmegA** engine build containing the Vulkan renderer, with the `omega-x64` binary extracted somewhere on disk.
- **Optional but recommended:**
  - [`gamemode`](https://github.com/FeralInteractive/gamemode)  CPU governor and scheduling tweaks during play.
  - [`mangohud`](https://github.com/flightlessmango/MangoHud)  on-screen performance overlay.

Verify your Vulkan stack before blaming the script:

```bash
git clone https://github.com/gamevolt/A51-Openarena.git
cd A51-Openarena

chmod +x "OpenArena OmegA Vulkan Launcher (NVIDIA) v3.sh"
./"OpenArena OmegA Vulkan Launcher (NVIDIA) v3.sh"
```

Then point the script at wherever you unpacked OmegA. Open the script in an editor and set:

```bash
EXECUTABLE="/full/path/to/omega-x64"
```

Run it from the directory containing your `baseoa` data folder, or make sure the engine can find it  Quake-family engines resolve game data relative to the binary and the user's home config directory, so mismatched paths are the usual cause of "no game data" errors.

---

## Default cvars applied

These are the settings the v3 script sets before handing control to the engine:

| Cvar             | Value                     | Why                                        |
| ---------------- | ------------------------- | ------------------------------------------ |
| `vid_renderer`   | `vulkan`                  | Selects the Vulkan backend.                |
| `r_swapInterval` | `0`                       | Disables VSync, removing its input lag.    |
| `com_maxfps`     | `0`                       | Uncapped frame rate.                       |
| `r_vbo`          | `1`                       | Vertex buffer objects for static geometry. |
| `r_dynamicLight` | `2`                       | Per-pixel dynamic lighting.                |
| `in_mouse`       | `1`                       | Raw mouse input.                           |
| `cl_maxpackets`  | `125`                     | Higher client packet rate.                 |
| `snaps`          | `40`                      | Server snapshot rate.                      |
| `r_picmip`       | `0`                       | Full texture detail.                       |
| `r_textureMode`  | `GL_LINEAR_MIPMAP_LINEAR` | Trilinear filtering.                       |

Anything you pass on the command line is appended afterwards, so you can override any of these per-run:

```bash
./"OpenArena OmegA Vulkan Launcher (NVIDIA) v3.sh" +set com_maxfps 250
```

---

## Connecting to Area 51 servers

Per Area 51's own getting-started guide:

1. Browse the [server list](https://q3a51.com/servers) to see who's online.
2. Click a server address to copy its `/connect` command.
3. In game, open the console with `~`, paste the command, press Enter.
4. Press `Escape` → **Advanced Setup** to configure the mod's settings.

The A51 client mod itself is obtained from inside the game: connect to any Area 51 server, open the console, and run the command shown on [q3a51.com/play](https://q3a51.com/play). Playing without the mod is possible; the community strongly recommends against it.

---

## Credits

- **OpenArena**  free, GPL Quake III Arena content and engine.
- **OmegA**  mod and engine work by Bishop-333 and contributors.
- **Quake3e**  the engine lineage OmegA builds on.
- **Kenny Edition**  origin of the Vulkan renderer.
- **Area 51** servers, client mod and community.

Quake III Arena is a trademark of id Software. Neither OpenArena nor this launcher is affiliated with or endorsed by id Software.

**NOTE:**
 I still have a lot to learn about quake and the client so feel free to contribute
```     ▄▄▄▀█                                     ▄██▒▄ ▄███░█▄  ▀▀       
           ▄▓▓▓██▄  ▄█▄                               ▐████▒▌██▀███▓▌          
          ▐░██████▌  ▀                                 ▀███▀▐█▄ ▄██▓▌          
          ▄▄▀█████▌                                       ▄  ▀█████▀           
         ▐▒█▌████▀                                       ▀▒▀ █▄▀▀▀             
          ▀▀ ▀▀▀▄█                                           ▓████             
             ████▓                                           ▒████             
             ████▒                                           ░████             
             ████░                                           ░████             
             ████                                             ████
             ████                                            ░████             
             ████░                                           ▒████             
             ████░                                           ▓████             
             ████▒                                           █████             
             ████▓                                           ▄▄▄▀█             
        ▄    █████                                   ▄▓▄   ▄████▓▄             
      ▄█▒█▄  ▀▄▄▄▄    ▄▄                              ▀   ▐██████▓▌            
       ▀█▀  ▄█░░░██▄ ▐░█▌                                 ▐██████▓▌            
           ▐▀ ▀█████▌ ▀▀                               ▄██▌▀█████▀             
           █▒▄███████ ▄█▄                             ▐█▀███▄▀▀▀               
           ▐█▓██████▌▄ ▀                              █▄ ▄██▓█  ▄▄             
            ▀█▓████▀▄██▄                         ▄██░▄▐█████▒▌ ▐░▓▌            
              ▀▀▀▀▄█████▌▄░███▄ ▄▓█▄            ▐████▓▌▀███░▀   ▀▀             
                ▐▓█████▌▐▓█████▐▒███▌█████▄  ▄▄▄ ▀███▀▄█▄▄▄▄▄                  
           ▄▒▄   ▀▓▒███▌█▓█████▄▀██▀▄██████░▄▐███▓▄ ▄███████▓▌   ▄             
            ▀  ▄██▄▀▀▀  ▀▀▀▀▀▀▀▀ ▄▄░████████░▌████▓▌████████▓▓  ▀░▀            
              ▐████▌AimDingus    ▐▓███████████▐████▓▐███████▓▌                 
              █▓███▄▄▄▄          █▓███████████▐████▒ ▀████░▒▀                  
              ▐▓▓█████▌   ▄      ▐▓█████▀ ▀██▌▀▀██░▌   ▀▀▀▀                    
               ▀▓▒░██▀  ▄█░█▄     ▀▓▒████▄██▀▄██▄▀▀  ▄▄                        
                 ▀▀▀     ▀█▀   ▄▄   ▀░░███▀ ▐▓███▌  ▐█▓▌                       
         ▄▄                   ▐█░▌           ▀▒█▀    ▀▀                        
        ▐░▒▌                   ▀▀          ▄                                   
         ▀▀                               ▀█▀               ▄▄                 
                                                           ▐█░▌                
                                                            ▀▀    ```
