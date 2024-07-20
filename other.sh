groupadd --gid 1001 android_radio
usermod -aG android_radio droidian

groupadd --gid 1002 android_bluetooth
usermod -aG android_bluetooth droidian

groupadd --gid 1003 android_graphics
usermod -aG android_graphics droidian

groupadd --gid 1004 android_input
usermod -aG android_input droidian

groupadd --gid 1005 android_audio
usermod -aG android_audio droidian

groupadd --gid 1006 android_camera
usermod -aG android_camera droidian

groupadd --gid 1010 android_wifi
usermod -aG android_wifi droidian

groupadd --gid 1013 android_media
usermod -aG android_media droidian

groupadd --gid 1018 android_usb
usermod -aG android_usb droidian

groupadd --gid 1019 android_drm
usermod -aG android_drm droidian

groupadd --gid 3001 android_net_bt_admin
usermod -aG android_net_bt_admin droidian

groupadd --gid 3002 android_net_bt
usermod -aG android_net_bt droidian

groupadd --gid 3004 android_net_raw
usermod -aG android_net_raw droidian

groupadd --gid 3005 android_net_admin
usermod -aG android_net_admin droidian

groupadd --gid 3006 android_net_bw_stats
usermod -aG android_net_bw_stats droidian

groupadd --gid 3007 android_net_bw_acct
usermod -aG android_net_bw_acct droidian

groupadd --gid 3011 android_uhid
usermod -aG android_uhid droidian

groupadd --gid 9997 android_everybody
usermod -aG android_everybody droidian

# usermod -aG pipewire droidian
usermod -aG tty droidian
usermod -aG disk droidian
usermod -aG uucp droidian
usermod -aG systemd-journal droidian
usermod -aG systemd-network droidian
usermod -aG kvm droidian
usermod -aG pulse droidian
usermod -aG pulse-access droidian

rm /etc/systemd/logind.conf

cat << EOF >> /etc/systemd/logind.conf
#  This file is part of systemd.
#
#  systemd is free software; you can redistribute it and/or modify it under the
#  terms of the GNU Lesser General Public License as published by the Free
#  Software Foundation; either version 2.1 of the License, or (at your option)
#  any later version.
#
# Entries in this file show the compile time defaults. Local configuration
# should be created by either modifying this file (or a copy of it placed in
# /etc/ if the original file is shipped in /usr/), or by creating "drop-ins" in
# the /etc/systemd/logind.conf.d/ directory. The latter is generally
# recommended. Defaults can be restored by simply deleting the main
# configuration file and all drop-ins located in /etc/.
#
# Use 'systemd-analyze cat-config systemd/logind.conf' to display the full config.
#
# See logind.conf(5) for details.

[Login]
#NAutoVTs=6
#ReserveVT=6
#KillUserProcesses=no
#KillOnlyUsers=
#KillExcludeUsers=root
#InhibitDelayMaxSec=5
#UserStopDelaySec=10
#SleepOperation=suspend-then-hibernate suspend
HandlePowerKey=ignore
HandlePowerKeyLongPress=ignore
HandleRebootKey=ignore
HandleRebootKeyLongPress=ignore
HandleSuspendKey=ignore
HandleSuspendKeyLongPress=ignore
HandleHibernateKey=ignore
HandleHibernateKeyLongPress=ignore
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
HandleLidSwitchDocked=ignore
#PowerKeyIgnoreInhibited=no
#SuspendKeyIgnoreInhibited=no
#HibernateKeyIgnoreInhibited=no
#LidSwitchIgnoreInhibited=yes
#RebootKeyIgnoreInhibited=no
#HoldoffTimeoutSec=30s
#IdleAction=ignore
#IdleActionSec=30min
#RuntimeDirectorySize=10%
#RuntimeDirectoryInodesMax=
#RemoveIPC=yes
#InhibitorsMax=8192
#SessionsMax=8192
#StopIdleSessionSec=infinity
EOF

ls /etc/systemd/logind.conf

reboot
