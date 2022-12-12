#!/bin/bash

# NetworkManager eduroam script - you may need to change "mschapv2" depending on your uni

nmcli connection add \
type wifi \
connection.id EDUROAM \
wifi.ssid eduroam \
wifi.mode infrastructure \
wifi-sec.key-mgmt wpa-eap \
802-1x.eap peap \
802-1x.identity username \
802-1x.phase2-auth mschapv2 \
802-1x.password XXXXXX

