#! /bin/bash
echo "configuring route 2"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
allow-hotplug ens3
iface ens3 inet static
	address 10.10.50.96
	netmask 255.255.255.248
	#gateway 10.10.50.88

allow-hotplug ens8
iface ens8 inet static
	address 10.10.50.138
	netmask 255.255.255.252
	#gateway 10.10.50.137

allow-hotplug ens9
iface ens9 inet static
	address 10.10.50.141
	netmask 255.255.255.252
	#gateway 10.10.50.142

allow-hotplug ens10
iface ens10 inet static
	address 10.10.50.165
	netmask 255.255.255.252
	#gateway 10.10.50.166

EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


