#!/bin/bash
#
# omega-client-wrapper.sh
# Performance wrapper script for Quake Arena 3 / Omega Client Fork (Vulkan)
# 
# Usage: ./omega-client-wrapper.sh [game_args...]
#

set -e

EXECUTABLE="./omega-x64"
GAME_NAME="QuakeArena3_Omega"

# ==============================================================================
# Environment Variables - game-performance Prefix
# ==============================================================================

export GAME_PERFORMANCE_CPU_AFFINITY=0-3              # Pin to first 4 logical cores
export GAME_PERFORMANCE_PRIORITY=high                 # High process priority
export GAME_PERFORMANCE_IO_CLASS=realtime             # Realtime I/O scheduling
export GAME_PERFORMANCE_MEMORY_LOCK=1                 # Lock memory to prevent swap
export GAME_PERFORMANCE_SYNC_POLICY=fifo              # FIFO scheduler sync
export GAME_PERFORMANCE_THROTTLE_BYPASS=1             # Disable CPU throttling
export GAME_PERFORMANCE_FPS_LIMIT=none                # No FPS cap for competitive
export GAME_PERFORMANCE_VSYNC=0                       # Disable VSync for input lag reduction

# ==============================================================================
# Environment Variables - volt Prefix (Voltage/Power Management)
# ==============================================================================

export volt_governor_performance=1                    # Use performance governor
export volt_gpu_max_freq=unlocked                     # GPU max frequency
export volt_cpu_min_freq=max                          # Minimum CPU frequency at max
export volt_power_profile=gaming                      # Gaming power profile
export volt_thermal_throttle=disabled                 # Disable thermal throttling temporarily
export volt_gpu_voltage_auto=1                        # Auto GPU voltage optimization

# ==============================================================================
# Vulkan-Specific Environment Variables
# ==============================================================================

export VK_LOADER_DEBUG=error                          # Reduce loader verbosity
export VK_LAYER_PATH=/usr/share/vulkan/explicit_layer.d
export MESA_VK_WSI_DEBUG=sync                         # WSI synchronization hints
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1         # Skip shader cache cleanup
export DXVK_ASYNC=1                                   # Async shader compilation (if applicable)
export RADV_PERFTEST=noop                             # AMD Vulkan performance hints (RADV)
export vvl_disable_validation_layers=1                # Disable validation layers for performance

# Engine-specific Vulkan flags
export Q3A_VK_RENDERER=vulkan                         # Force Vulkan renderer
export Q3A_VK_SYNC_AGGRESSIVE=0                       # Less aggressive sync
export Q3A_VK_BUFFER_MODE=unified                     # Unified buffer mode

# ==============================================================================
# Additional System Optimizations
# ==============================================================================

# CPU Scaling Governor (requires sudo/unlocker)
# Uncomment below if you have permission to modify system settings
# echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor 2>/dev/null || true

# Set process nice level (-20 highest, 19 lowest)
NICE_LEVEL=-10

# Set IO niceness (0-7, 0 is highest priority)
IONICE_LEVEL=2

# ==============================================================================
# Main Execution
# ==============================================================================

echo "[Omega Client Launcher] Starting Quake Arena 3 with Vulkan optimizations..."
echo "[Omega Client Launcher] Executable: $(realpath $EXECUTABLE)"
echo "[Omega Client Launcher] PID: $$"
echo "[Omega Client Launcher] Environment prefix: GAME_PERFORMANCE, volt"
echo ""

# Check if executable exists
if [[ ! -f "$EXECUTABLE" ]]; then
    echo "ERROR: Executable '$EXECUTABLE' not found!"
    echo "Please ensure omega-x64 is in the current directory or specify full path."
    exit 1
fi

# Make sure it's executable
chmod +x "$EXECUTABLE" 2>/dev/null || true

# Launch with optimizations using nice/ionice for additional priority control
nice -n "$NICE_LEVEL" ionice -c "$IONICE_LEVEL" -n 0 -- "$EXECUTABLE" "$@"

exit_code=$?

echo ""
echo "[Omega Client Launcher] Game exited with code: $exit_code"

exit $exit_code