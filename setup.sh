#!/bin/bash

# Run as root!

# Plasma installation
cp /adaptation-xiaomi-begonia/etc/apt/source.list.d/lindroid.list /etc/apt/source.list.d
cp /adaptation-xiaomi-begonia/etc/apt/preferences.d/10-lindroid /etc/apt/preferences.d
mkdir -p /tmp/run/systemd/resolve
echo "nameserver 9.9.9.11" > /tmp/run/systemd/resolve/stub-resolv.conf
mount --bind /tmp/run /run
apt update
apt install plasma-mobile{-phone} systemsettings -y
umount /run
rm -rf /tmp/run

# Fix touchscreen step 1
/sbin/setcap cap_dac_read_search+ep /usr/bin/startplasma-wayland
/sbin/setcap cap_dac_read_search+ep /usr/bin/kwin_wayland
/sbin/setcap cap_dac_read_search+ep /usr/bin/startplasmamobile

# Adaptation files
cp -rf /adaptation-xiaomi-begonia/* /
cp -rf /adaptation-xiaomi-begonia/etc/environment.d/environment /etc/environment
systemctl disable droidian-fpd batman
systemctl enable inputpermissions modules ssh-fix pbhelper droidian-perf brightness
bash /adaptation-xiaomi-begonia/groups.sh
