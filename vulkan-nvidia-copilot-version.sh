#!/usr/bin/env bash
#
# OpenArena OmegA Vulkan Launcher (NVIDIA)
# Safe Bash wrapper for the OmegA client on Linux
#
# Usage:
#   ./OpenArena\ OmegA\ Vulkan\ Launcher\ \(NVIDIA\)\ v3.sh
#   ./OpenArena\ OmegA\ Vulkan\ Launcher\ \(NVIDIA\)\ v3.sh +set r_mode "-2" +set vid_renderer "vulkan"
#

set -Eeuo pipefail

EXECUTABLE="./omega-x64"
SYSTEM_INFO=$(uname -a)

# ------------------------------------------------------------------------------
# GameMode integration
# ------------------------------------------------------------------------------
GAMEMODERUN=""
if command -v gamemoderun >/dev/null 2>&1; then
    GAMEMODERUN="gamemoderun"
    echo "[Omega] GameMode detected - applying system optimizations"
else
    echo "[Omega] WARNING: GameMode not installed. Install for CPU governor / I/O priority tweaks."
    echo "[Omega] Run: sudo pacman -S gamemode"
fi

# ------------------------------------------------------------------------------
# MangoHud integration
# ------------------------------------------------------------------------------
if command -v mangohud >/dev/null 2>&1; then
    export MANGOHUD=1
    echo "[Omega] MangoHud detected - FPS overlay enabled"
else
    echo "[Omega] Note: Install MangoHud for FPS monitoring: sudo pacman -S mangohud"
fi

# ------------------------------------------------------------------------------
# NVIDIA-specific Vulkan environment variables
# These are real NVIDIA/Linux-related settings, and can be exported safely.
# ------------------------------------------------------------------------------
export __GL_SHADER_DISK_CACHE=1
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache/nvidia-shader-cache"
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1

# Disable Vulkan validation layers in release builds to reduce overhead
export vvl_disable_validation_layers=1

# Reduce Vulkan loader verbosity
export VK_LOADER_DEBUG=error

# Mesa Vulkan WSI synchronization hints (harmless even with NVIDIA)
export MESA_VK_WSI_DEBUG=sync

# NVIDIA-specific Vulkan extension controls
export __VK_NVX_binary_import=1
export __VK_NVX_multiview_per_view_attributes=1

# Optional: uncomment if you hit stability issues
# export __GL_YIELD_THREAD_USAGE=0

# Hybrid laptop support (Optimus / NVIDIA Prime)
# Uncomment only for hybrid GPU systems:
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __VK_LAYER_NV_optimus=NVIDIA_only
# export __GLX_VENDOR_LIBRARY_NAME=nvidia

# ------------------------------------------------------------------------------
# NVIDIA power management / status
# ------------------------------------------------------------------------------
if command -v nvidia-smi >/dev/null 2>&1; then
    CURRENT_POWER_STATE=$(nvidia-smi --query-gpu=persistence_mode --format=csv,noheader,nounits 2>/dev/null || echo "unknown")
    echo "[Omega] NVIDIA persistence mode: $CURRENT_POWER_STATE"
    # Tip: Enable with sudo:
    # sudo nvidia-smi -pm 1
fi

# ------------------------------------------------------------------------------
# Default engine cvars
# These are passed as separate arguments, which is the safe and correct form.
# ------------------------------------------------------------------------------
DEFAULT_CVARS=(
    "+set" "vid_renderer" "vulkan"
    "+set" "r_swapInterval" "0"
    "+set" "com_maxfps" "0"
    "+set" "r_vbo" "1"
    "+set" "r_dynamicLight" "2"
    "+set" "in_mouse" "1"
    "+set" "cl_maxpackets" "125"
    "+set" "snaps" "40"
    "+set" "r_picmip" "0"
    "+set" "r_textureMode" "GL_LINEAR_MIPMAP_LINEAR"
)

# ------------------------------------------------------------------------------
# Process priority
# ------------------------------------------------------------------------------
NICE_LEVEL=-10
IONICE_CLASS=2
IONICE_PRIORITY=0

# ------------------------------------------------------------------------------
# Executable verification
# ------------------------------------------------------------------------------
if [[ ! -f "$EXECUTABLE" ]]; then
    echo "ERROR: Executable '$EXECUTABLE' not found!" >&2
    echo "Current directory: $(pwd)" >&2
    echo "" >&2
    echo "If omega-x64 is in a different location, modify this line:" >&2
    echo "  EXECUTABLE=\"/full/path/to/omega-x64\"" >&2
    exit 1
fi

chmod +x "$EXECUTABLE" 2>/dev/null || true

# ------------------------------------------------------------------------------
# Create launch command safely
# ------------------------------------------------------------------------------
CMD=()

# Add GameMode if available
if [[ -n "$GAMEMODERUN" ]]; then
    CMD+=("$GAMEMODERUN")
fi

# Add nice/ionice only if present
if command -v nice >/dev/null 2>&1; then
    CMD+=(nice -n "$NICE_LEVEL")
else
    echo "[Omega] WARNING: nice not found; continuing without it." >&2
fi

if command -v ionice >/dev/null 2>&1; then
    CMD+=(ionice -c "$IONICE_CLASS" -n "$IONICE_PRIORITY")
else
    echo "[Omega] WARNING: ionice not found; continuing without it." >&2
fi

# Final executable
CMD+=("$EXECUTABLE")

# Add default cvars
CMD+=("${DEFAULT_CVARS[@]}")

# Add any user-supplied args at the end
CMD+=("$@")

# ------------------------------------------------------------------------------
# Launch
# ------------------------------------------------------------------------------
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

# Run the final command
exec "${CMD[@]}"
