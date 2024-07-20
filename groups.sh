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
