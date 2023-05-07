#! /bin/bash
echo "configuring route 5"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
allow-hotplug ens3
iface ens3 inet static
	address 10.10.50.120
	netmask 255.255.255.248
	#gateway 10.10.50.88

allow-hotplug ens8
iface ens8 inet static
	address 10.10.50.150
	netmask 255.255.255.252
	#gateway 10.10.50.149

allow-hotplug ens9
iface ens9 inet static
	address 10.10.50.177
	netmask 255.255.255.252
	#gateway 10.10.50.178


EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


