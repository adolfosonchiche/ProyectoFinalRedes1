#! /bin/bash
echo "configuring route server 7"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
allow-hotplug ens3
iface ens3 inet static
	address 10.10.50.128
	netmask 255.255.255.252
	#gateway 10.10.50.

allow-hotplug ens8
iface ens8 inet static
	address 10.10.50.153
	netmask 255.255.255.252
	gateway 10.10.50.154


EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


