# one-liners-output.bash
# 
# Sections:
#    1.   File
#    2.   Hardware
#    3.   X11
# 

# ======= 1.  FILE =============================================

# Get the size in megabytes of one or more files and/or directories as a plain number.
du -csm <files and/or directories> | tail -1 | awk '{ print $1 }'

# ======= 2.  HARDWARE =========================================

# Note: Hardware one-liners are intended to be system-independent, however, some may not work for certain systems.

# Get the maximum backlight level.
# Note: The interface to the ACPI kernel module for video (e.g. intel_backlight) can be found with "ls /sys/class/backlight/".
cat /sys/class/backlight/intel_backlight/max_brightness

# ======= 3.  X11 ==============================================

# Get the IDs of all child windows in x11.
xwininfo -root -children | sed -e 's/^ *//' | grep -E "^0x" | awk '{ print $1 }'

