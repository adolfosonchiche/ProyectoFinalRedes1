#! /bin/bash
echo "configuring route 4"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
allow-hotplug ens3
iface ens3 inet static
	address 10.10.50.112
	netmask 255.255.255.248
	#gateway 10.10.50.88

allow-hotplug ens8
iface ens8 inet static
	address 10.10.50.146
	netmask 255.255.255.252
	#gateway 10.10.50.145

allow-hotplug ens9
iface ens9 inet static
	address 10.10.50.149
	netmask 255.255.255.252
	#gateway 10.10.50.150

allow-hotplug ens10
iface ens10 inet static
	address 10.10.50.173
	netmask 255.255.255.252
	#gateway 10.10.50.174

EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


