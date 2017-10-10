#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author : Zain
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "Moving files to optimize MacBook Air new system"

# Disable dhcpcd ARP to improve DHPC connecting speed
sudo cp settings/dhcpcd.conf /etc/

# Enable some kernel modules for fan speed and the temperature sensors:
sudo cp settings/modules /etc/

# Set uo SWAP for hibernation only 
sudo cp settings/99-sysctl.conf /etc/sysctl.d/

# Intel CPU to powersave mode
sudo cp settings/powertop.service /etc/systemd/system/

# Fixing lid closing to suspend
sudo cp settings/logind.conf /etc/systemd/

# Fixing suspend mode
sudo cp settings/90-xhc_sleep.rules /etc/udev/rules.d/

# Add F1…F11 keys to keyboard
sudo cp settings/hid_apple.conf /etc/modprobe.d/

# Trimming everything for powersaving
sudo cp settings/60-snd_hda_intel.conf /etc/modprobe.d/

# Enable powersaving options on Intel
sudo cp settings/60-i915.conf /etc/modprobe.d/



echo "################################################################"
echo "#########      MacBook Air tweak files copied   ################"
echo "################################################################"

