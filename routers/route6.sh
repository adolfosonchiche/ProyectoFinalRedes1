#! /bin/bash
echo "configuring route 6 central"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del route local
allow-hotplug ens3
iface ens3 inet static
	address 10.10.50.162
	netmask 255.255.255.252
	gateway 10.10.50.161

allow-hotplug ens8
iface ens8 inet static
	address 10.10.50.166
	netmask 255.255.255.252
	gateway 10.10.50.165

allow-hotplug ens9
iface ens9 inet static
	address 10.10.50.170
	netmask 255.255.255.252
	gateway 10.10.50.169

allow-hotplug ens10
iface ens10 inet static
	address 10.10.50.174
	netmask 255.255.255.252
	gateway 10.10.50.173

allow-hotplug ens11
iface ens11 inet static
	address 10.10.50.178
	netmask 255.255.255.252
	gateway 10.10.50.177

allow-hotplug ens12
iface ens12 inet static
	address 10.10.50.154
	netmask 255.255.255.252
	gateway 10.10.50.153

allow-hotplug ens13
iface ens13 inet static
	address 10.10.50.158
	netmask 255.255.255.252
	gateway 10.10.50.157

EOF
echo "end"

echo "restart network"
sudo systemctl restart networking

echo "ready"


