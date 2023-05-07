#! /bin/bash
echo "configuring route 3"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
allow-hotplug ens3
iface ens3 inet static
	address 10.10.50.104
	netmask 255.255.255.248
	#gateway 10.10.50.88

allow-hotplug ens8
iface ens8 inet static
	address 10.10.50.142
	netmask 255.255.255.252
	gateway 10.10.50.141

allow-hotplug ens9
iface ens9 inet static
	address 10.10.50.145
	netmask 255.255.255.252
	gateway 10.10.50.146

allow-hotplug ens10
iface ens10 inet static
	address 10.10.50.169
	netmask 255.255.255.252
	gateway 10.10.50.170

EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


