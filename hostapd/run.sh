#!/bin/sh

# Load configuration options
. /config/config

# Generate hostapd configuration
cat <<EOF > /etc/hostapd/hostapd.conf
interface=${interface}
driver=${driver}
ssid=${ssid2}
hw_mode=${hw_mode}
channel=${channel2}
wmm_enabled=0
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_passphrase=${password2}
rsn_pairwise=CCMP
EOF

# Start hostapd
hostapd /etc/hostapd/hostapd.conf -B
