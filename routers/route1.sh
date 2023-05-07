#! /bin/bash
echo "configuring route 1"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
auto ens3
iface ens3 inet static
	address 10.10.50.88
	netmask 255.255.255.248
	#gateway 10.10.50.88

auto ens8
iface ens8 inet static
	address 10.10.50.136
	netmask 255.255.255.224
	gateway 10.10.50.137

#auto ens9
#iface ens9 inet static
	#address 10.10.50.144
	#netmask 255.255.255.224
	#gateway 10.10.50.145

EOF
echo "end"

echo "restart network"
sudo nano systemctl restart networking

echo "ready"


