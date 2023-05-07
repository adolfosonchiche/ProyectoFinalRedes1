#! /bin/bash
echo "configuring route server 8"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
auto ens3
iface ens3 inet static
	address 10.10.50.132
	netmask 255.255.255.252
	#gateway 10.10.50.

auto ens8
iface ens8 inet static
	address 10.10.50.156
	netmask 255.255.255.224
	gateway 10.10.50.157


EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


