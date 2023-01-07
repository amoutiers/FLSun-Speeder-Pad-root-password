#! /bin/bash

echo 'pi:SPEEDER_PAD_PWD' | chpasswd
usermod -aG sudo pi

mv /home/pi/gcode_files/USB-Disk/update.bin /home/pi/gcode_files/USB-Disk/update.cue

reboot
