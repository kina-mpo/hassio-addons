#!/bin/sh

echo "$CA_CRT" > /etc/openvpn/ca.crt
echo "$CLIENT_CRT" > /etc/openvpn/client.crt
echo "$CLIENT_KEY" > /etc/openvpn/client.key
echo -e "$USERNAME\n$PASSWORD" > /etc/openvpn/credentials.conf
echo "$OPENVPN_CONFIG" > /etc/openvpn/client.conf
echo -e "\n\nauth-user-pass credentials.conf" > /etc/openvpn/client.conf
exec openvpn --config /etc/openvpn/client.conf
