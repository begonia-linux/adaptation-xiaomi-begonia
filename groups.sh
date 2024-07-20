groupadd --gid 1001 android_radio
usermod -aG android_radio lindroid

groupadd --gid 1002 android_bluetooth
usermod -aG android_bluetooth lindroid

groupadd --gid 1003 android_graphics
usermod -aG android_graphics lindroid

groupadd --gid 1004 android_input
usermod -aG android_input lindroid

groupadd --gid 1005 android_audio
usermod -aG android_audio lindroid

groupadd --gid 1006 android_camera
usermod -aG android_camera lindroid

groupadd --gid 1010 android_wifi
usermod -aG android_wifi lindroid

groupadd --gid 1013 android_media
usermod -aG android_media lindroid

groupadd --gid 1018 android_usb
usermod -aG android_usb lindroid

groupadd --gid 1019 android_drm
usermod -aG android_drm lindroid

groupadd --gid 3001 android_net_bt_admin
usermod -aG android_net_bt_admin lindroid

groupadd --gid 3002 android_net_bt
usermod -aG android_net_bt lindroid

groupadd --gid 3004 android_net_raw
usermod -aG android_net_raw lindroid

groupadd --gid 3005 android_net_admin
usermod -aG android_net_admin lindroid

groupadd --gid 3006 android_net_bw_stats
usermod -aG android_net_bw_stats lindroid

groupadd --gid 3007 android_net_bw_acct
usermod -aG android_net_bw_acct lindroid

groupadd --gid 3011 android_uhid
usermod -aG android_uhid lindroid

groupadd --gid 9997 android_everybody
usermod -aG android_everybody lindroid

usermod -aG pipewire lindroid
usermod -aG tty lindroid
usermod -aG disk lindroid
usermod -aG uucp lindroid
usermod -aG systemd-journal lindroid
usermod -aG systemd-network lindroid
usermod -aG kvm lindroid
# usermod -aG pulse lindroid
# usermod -aG pulse-access lindroid

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
