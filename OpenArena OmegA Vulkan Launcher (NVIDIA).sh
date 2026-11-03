#!/bin/bash
#
# omega-client-wrapper.sh
# Performance wrapper script for OpenArena OmegA (Vulkan renderer) on Linux
# Optimized for NVIDIA GPUs
#
# Based on Quake3e engine with optimized Vulkan backend
#
# Usage: ./omega-client-wrapper.sh [engine_cvars...]
#        ./omega-client-wrapper.sh +set r_mode "-2" +set vid_renderer "vulkan"
#

set -e

EXECUTABLE="./omega-x64"
SYSTEM_INFO=$(uname -a)

# ==============================================================================
# GAMEMODE INTEGRATION (REAL PERFORMANCE OPTIMIZATION)
# ==============================================================================
# GameMode from Feral Interactive handles:
# - CPU governor switch to "performance"
# - I/O priority to realtime
# - Process scheduler optimization
# - Optional GPU performance tweaks
#
# Install on Arch/CachyOS: sudo pacman -S gamemode
#
GAMEMODERUN=""
if command -v gamemoderun &> /dev/null; then
    GAMEMODERUN="gamemoderun"
    echo "[Omega] GameMode detected - will apply system optimizations"
else
    echo "[Omega] WARNING: GameMode not installed. Install for CPU governor/I/O priority tweaks."
    echo "[Omega] Run: sudo pacman -S gamemode"
fi

# ==============================================================================
# MANGOHUD INTEGRATION (FPS MONITORING)
# ==============================================================================
# MangoHud displays real-time FPS, CPU/GPU usage, temperatures
# Install on Arch/CachyOS: sudo pacman -S mangohud
#
MANGOHUD=""
if command -v mangohud &> /dev/null; then
    MANGOHUD="MANGOHUD=1"
    echo "[Omega] MangoHud detected - FPS overlay enabled"
else
    echo "[Omega] Note: Install MangoHud for FPS monitoring: sudo pacman -S mangohud"
fi

# ==============================================================================
# NVIDIA-SPECIFIC VULKAN ENVIRONMENT VARIABLES
# These ARE REAL and read by NVIDIA driver on Linux
# ==============================================================================

# Persistent shader disk cache (reduces stutter from shader compilation)
export __GL_SHADER_DISK_CACHE=1
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache/nvidia-shader-cache"
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1  # Keep cache between sessions

# Disable Vulkan validation layers (release builds only - adds overhead)
export vvl_disable_validation_layers=1

# Vulkan loader optimization (reduce verbosity)
export VK_LOADER_DEBUG=error

# Mesa Vulkan WSI synchronization hints (harmless even with NVIDIA)
export MESA_VK_WSI_DEBUG=sync

# NVIDIA-specific Vulkan extension control
export __VK_NVX_binary_import=1
export __VK_NVX_multiview_per_view_attributes=1

# Disable some NVIDIA features that might add overhead (optional, tweak as needed)
# Uncomment below if you experience stability issues:
# export __GL_YIELD_THREAD_USAGE=0

# Hybrid laptop support (Intel/AMD + NVIDIA)
# Uncomment ONLY if you have Optimus/hybrid setup:
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __VK_LAYER_NV_optimus=NVIDIA_only
# export __GLX_VENDOR_LIBRARY_NAME=nvidia

# ==============================================================================
# NVIDIA POWER MANAGEMENT
# For CachyOS/Arch - you may have nvidia-settings or nvidia-utils installed
# ==============================================================================
# Check if we can query GPU info
if command -v nvidia-smi &> /dev/null; then
    CURRENT_POWER_STATE=$(nvidia-smi --query-gpu=persistence_mode --format=csv,noheader,nounits 2>/dev/null || echo "unknown")
    echo "[Omega] NVIDIA persistence mode: $CURRENT_POWER_STATE"
    
    # Tip: Enable persistence mode for sustained gaming sessions (requires sudo)
    # echo "[Omega] Tip: sudo nvidia-smi -pm 1 enables persistence mode (reduces latency)"
fi

# ==============================================================================
# OPENARENA OMEGA / Q3E ENGINE CVAR OVERRIDES
# These go AFTER the executable name, not as env vars
# Based on OmegA engine (Quake3e) documentation
# ==============================================================================

DEFAULT_CVARS=""

# Renderer selection (check which backend your build supports)
# The OmegA engine includes a Vulkan renderer based on Kenny Edition
DEFAULT_CVARS="${DEFAULT_CVARS}+set vid_renderer vulkan "

# Swap interval - DISABLE for competitive play (removes VSync input lag)
DEFAULT_CVARS="${DEFAULT_CVARS}+set r_swapInterval 0 "

# FPS capping - set to monitor refresh rate or 0 for uncapped
# Competitive players often use 0 or specific values like 240/360
DEFAULT_CVARS="${DEFAULT_CVARS}+set com_maxfps 0 "

# Vertex Buffer Objects - improves performance with static geometry
DEFAULT_CVARS="${DEFAULT_CVARS}+set r_vbo 1 "

# Dynamic lighting mode - 2 for per-pixel (better quality/performance balance)
DEFAULT_CVARS="${DEFAULT_CVARS}+set r_dynamicLight 2 "

# Raw mouse input - auto-enabled on Linux, but explicit doesn't hurt
DEFAULT_CVARS="${DEFAULT_CVARS}+set in_mouse 1 "

# Network settings for competitive play
DEFAULT_CVARS="${DEFAULT_CVARS}+set cl_maxpackets 125 "   # Higher packet rate
DEFAULT_CVARS="${DEFAULT_CVARS}+set snaps 40 "            # Server snapshot rate

# Texture quality tuning (adjust based on your VRAM)
# r_picmip: higher = more compressed/lower detail (default is usually 0)
# r_textureMode: "GL_LINEAR_MIPMAP_LINEAR" for quality, "GL_NEAREST" for speed
DEFAULT_CVARS="${DEFAULT_CVARS}+set r_picmip 0 "
DEFAULT_CVARS="${DEFAULT_CVARS}+set r_textureMode GL_LINEAR_MIPMAP_LINEAR "

# ==============================================================================
# SYSTEM PRIORITY SETTINGS (LEGITIMATE nice/ionice)
# ==============================================================================
# nice: -20 (highest) to 19 (lowest). -10 gives high priority without root
NICE_LEVEL=-10

# ionice: class 2 = best-effort, level 0 = highest within class
IONICE_CLASS=2
IONICE_PRIORITY=0

# ==============================================================================
# CACHEYOSS-SPECIFIC NOTES
# ==============================================================================
# CachyOS comes with several performance optimizations pre-applied:
# - BORE or EEVDF CPU scheduler variants
# - ags (Aggressive GCC Scheduler) compiled packages
# - Various kernel tweaks for gaming
# 
# You can verify scheduler: cat /proc/sys/kernel/sched_schedstats
# ==============================================================================

# ==============================================================================
# EXECUTABLE VERIFICATION
# ==============================================================================
if [[ ! -f "$EXECUTABLE" ]]; then
    echo "ERROR: Executable '$EXECUTABLE' not found!"
    echo "Current directory: $(pwd)"
    echo ""
    echo "If omega-x64 is in a different location, modify this line:"
    echo '  EXECUTABLE="/full/path/to/omega-x64"'
    echo ""
    exit 1
fi

chmod +x "$EXECUTABLE" 2>/dev/null || true

# ==============================================================================
# LAUNCH COMMAND
# ==============================================================================
echo ""
echo "[Omega Client Launcher] ==========================================="
echo "[Omega Client Launcher] OpenArena OmegA - Quake3e Vulkan Backend"
echo "[Omega Client Launcher] System: $SYSTEM_INFO"
echo "[Omega Client Launcher] GPU: NVIDIA"
echo "[Omega Client Launcher] ==========================================="
echo "[Omega Client Launcher] Executable: $(realpath "$EXECUTABLE")"
echo "[Omega Client Launcher] GameMode: ${GAMEMODERUN:-disabled}"
echo "[Omega Client Launcher] MangoHud: ${MANGOHUD:-disabled}"
echo "[Omega Client Launcher] Shader Cache: enabled at ~/.cache/nvidia-shader-cache"
echo "[Omega Client Launcher] Process priority: nice=$NICE_LEVEL ionice=$IONICE_CLASS:$IONICE_PRIORITY"
echo "[Omega Client Launcher] ==========================================="
echo ""

# Build the full command
FULL_CMD="$GAMEMODERUN $MANGOHUD nice -n $NICE_LEVEL ionice -c $IONICE_CLASS -n $IONICE_PRIORITY -- $EXECUTABLE"

# Apply default cvars, then append any user-provided arguments
# Escape special characters properly
eval "$FULL_CMD $DEFAULT_CVARS \"$@\""

EXIT_CODE=$?

echo ""
echo "[Omega Client Launcher] Game exited with code: $EXIT_CODE"
exit $EXIT_CODE