#! /bin/bash
echo "configuring route 6 central"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
auto ens3
iface ens3 inet static
	address 10.10.50.145
	netmask 255.255.255.224
	gateway 10.10.50.144

auto ens8
iface ens8 inet static
	address 10.10.50.147
	netmask 255.255.255.224
	gateway 10.10.50.146

auto ens9
iface ens9 inet static
	address 10.10.50.149
	netmask 255.255.255.224
	gateway 10.10.50.148

auto ens10
iface ens10 inet static
	address 10.10.50.151
	netmask 255.255.255.224
	gateway 10.10.50.150

auto ens11
iface ens11 inet static
	address 10.10.50.153
	netmask 255.255.255.224
	gateway 10.10.50.152

auto ens12
iface ens12 inet static
	address 10.10.50.155
	netmask 255.255.255.224
	gateway 10.10.50.154

auto ens10
iface ens10 inet static
	address 10.10.50.157
	netmask 255.255.255.224
	gateway 10.10.50.156

EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


