#!/system/bin/sh
MODDIR="${0%/*}"

sleep 5

# --- [ 1. GAME & TOUCH SENSITIVITY TWEAKS ] ---
settings put secure long_press_timeout 250
settings put secure show_touches 0
settings put global touch_pump_rate 1

# --- [ 2. FRAME RATE UNLOCKS ] ---
settings put global peak_refresh_rate 120.0
settings put global min_refresh_rate 120.0
settings put global user_refresh_rate 120.0

# --- [ 3. HWUI GRAPHICS RENDERING SYSTEM ] ---
setprop debug.hwui.renderer OpenGL
setprop debug.hwui.disabledither false
setprop debug.hwui.overdraw false

# --- [ 4. THERMAL THROTTLING MANAGEMENT ] ---
setprop debug.thermal.throttle.level 0

exit 0
