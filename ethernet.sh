#! /bin/bash
echo "configuring route 1"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
allow-hotplug ens3
iface ens3 inet dhcp

EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


