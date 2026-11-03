#!/bin/bash
#
# omega-client-wrapper.sh
# Performance wrapper script for OpenArena OmegA (Vulkan renderer) on Linux
#
# Based on Quake3e engine with optimized Vulkan backend
#
# Usage: ./omega-client-wrapper.sh [engine_cvars...]
#        ./omega-client-wrapper.sh +set r_mode "-2" +set vid_renderer "vulkan"
#

set -e

EXECUTABLE="./omega-x64"

# ==============================================================================
# GAMEMODE INTEGRATION (REAL PERFORMANCE OPTIMIZATION)
# ==============================================================================
# GameMode from Feral Interactive handles:
# - CPU governor switch to "performance"
# - I/O priority to realtime
# - Process scheduler optimization
# - Optional GPU performance tweaks
#
# Install: sudo apt install gamemode (Ubuntu/Debian)
#          sudo pacman -S gamemode (Arch)
#
GAMEMODERUN=""
if command -v gamemoderun &> /dev/null; then
    GAMEMODERUN="gamemoderun"
    echo "[Omega] GameMode detected - will apply system optimizations"
else
    echo "[Omega] WARNING: GameMode not installed. Install for CPU governor/I/O priority tweaks."
fi

# ==============================================================================
# MANGOHUD INTEGRATION (FPS MONITORING)
# ==============================================================================
# MangoHud displays real-time FPS, CPU/GPU usage, temperatures
# Install: sudo apt install mangohud (Ubuntu/Debian)
#          sudo pacman -S mangohud (Arch)
#
MANGOHUD=""
if command -v mangoapp &> /dev/null || command -v MangoHud &> /dev/null; then
    MANGOHUD="MANGOHUD=1"
    echo "[Omega] MangoHud detected - FPS overlay enabled"
fi

# ==============================================================================
# VULKAN DRIVER-SPECIFIC ENVIRONMENT VARIABLES
# These ARE REAL and read by Mesa/NVIDIA drivers
# ==============================================================================

# AMD RADV driver optimization (for Radeon GPUs)
# ACO = improved shader compiler, gpl = graphics pipeline library
# Values: aco, gpl, noac, noll, etc.
export RADV_PERFTEST=aco,gpl

# NVIDIA prime render offload (for hybrid laptops)
# Uncomment if you have NVIDIA + Intel/AMD hybrid setup
# export PrimeRenderOffload=1
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __GLX_VENDOR_LIBRARY_NAME=nvidia

# Shader disk cache persistence (reduces stutter from shader compilation)
export __GL_SHADER_DISK_CACHE=1
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache/nvidia-shader-cache"

# Vulkan loader optimization (reduce verbosity)
export VK_LOADER_DEBUG=error

# Mesa Vulkan WSI synchronization hints
export MESA_VK_WSI_DEBUG=sync

# Disable Vulkan validation layers (release builds only - adds overhead)
export vvl_disable_validation_layers=1

# ==============================================================================
# OPENARENA OMEGA / Q3E ENGINE CVAR OVERRIDES
# These go AFTER the executable name, not as env vars
# ==============================================================================

# Vulkan renderer selection (if supported by your fork)
DEFAULT_CVARS="+set vid_renderer vulkan +set r_vulkanBackend 1"

# Performance-focused rendering settings
DEFAULT_CVARS="${DEFAULT_CVARS} +set r_swapInterval 0"      # Disable VSync
DEFAULT_CVARS="${DEFAULT_CVARS} +set com_maxfps 0"          # Remove FPS cap (set to desired limit)
DEFAULT_CVARS="${DEFAULT_CVARS} +set r_vbo 1"               # Vertex Buffer Objects (engine-specific)
DEFAULT_CVARS="${DEFAULT_CVARS} +set r_dynamicLight 2"      # Per-pixel dynamic lighting
DEFAULT_CVARS="${DEFAULT_CVARS} +set in_mouse 1"            # Raw mouse input (auto-enabled on Linux)

# Network settings for competitive play
DEFAULT_CVARS="${DEFAULT_CVARS} +set cl_maxpackets 125"     # Higher packet rate (lower latency)
DEFAULT_CVARS="${DEFAULT_CVARS} +set snaps 40"              # Server snapshot rate

# ==============================================================================
# SYSTEM PRIORITY SETTINGS (LEGITIMATE nice/ionice)
# ==============================================================================
NICE_LEVEL=-10              # Requires privileges; adjust or remove if denied
IONICE_CLASS=2              # Best-effort class
IONICE_PRIORITY=0           # Highest within class

# ==============================================================================
# EXECUTABLE VERIFICATION
# ==============================================================================
if [[ ! -f "$EXECUTABLE" ]]; then
    echo "ERROR: Executable '$EXECUTABLE' not found!"
    echo "Current directory: $(pwd)"
    echo "Please ensure omega-x64 is in the same folder or modify EXECUTABLE path."
    exit 1
fi

chmod +x "$EXECUTABLE" 2>/dev/null || true

# ==============================================================================
# LAUNCH COMMAND
# ==============================================================================
echo ""
echo "[Omega Client Launcher] ======================================="
echo "[Omega Client Launcher] OpenArena OmegA - Quake3e Vulkan Backend"
echo "[Omega Client Launcher] Executable: $(realpath "$EXECUTABLE")"
echo "[Omega Client Launcher] GameMode: ${GAMEMODERUN:-disabled}"
echo "[Omega Client Launcher] MangoHud: ${MANGOHUD:-disabled}"
echo "[Omega Client Launcher] Vulkan optimizations: RADV_PERFTEST=aco,gpl"
echo "[Omega Client Launcher] Process priority: nice=$NICE_LEVEL ionice=$IONICE_CLASS:$IONICE_PRIORITY"
echo "[Omega Client Launcher] ======================================="
echo ""

# Build the full command
FULL_CMD="$GAMEMODERUN $MANGOHUD nice -n $NICE_LEVEL ionice -c $IONICE_CLASS -n $IONICE_PRIORITY -- $EXECUTABLE"

# Apply default cvars, then append any user-provided arguments
eval "$FULL_CMD $DEFAULT_CVARS \"$@\""

EXIT_CODE=$?

echo ""
echo "[Omega Client Launcher] Game exited with code: $EXIT_CODE"
exit $EXIT_CODE