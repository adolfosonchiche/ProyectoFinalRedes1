#! /bin/bash
echo "configuring route 4"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
auto ens3
iface ens3 inet static
	address 10.10.50.112
	netmask 255.255.255.248
	#gateway 10.10.50.88

auto ens8
iface ens8 inet static
	address 10.10.50.141
	netmask 255.255.255.224
	gateway 10.10.50.140

auto ens9
iface ens9 inet static
	address 10.10.50.142
	netmask 255.255.255.224
	gateway 10.10.50.143

#auto ens10
#iface ens10 inet static
	#address 10.10.50.150
	#netmask 255.255.255.224
	#gateway 10.10.50.151

EOF
echo "end"

echo "restart network"
sudo nano systemctl restart networking

echo "ready"


