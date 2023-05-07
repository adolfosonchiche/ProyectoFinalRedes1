#! /bin/bash
echo "configuring route 3"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
auto ens3
iface ens3 inet static
	address 10.10.50.104
	netmask 255.255.255.248
	#gateway 10.10.50.88

auto ens8
iface ens8 inet static
	address 10.10.50.139
	netmask 255.255.255.224
	gateway 10.10.50.138

auto ens9
iface ens9 inet static
	address 10.10.50.140
	netmask 255.255.255.224
	gateway 10.10.50.141

#auto ens10
#iface ens10 inet static
	#address 10.10.50.148
	#netmask 255.255.255.224
	#gateway 10.10.50.149

EOF
echo "end"

echo "restart network"
sudo nano systemctl restart networking

echo "ready"


