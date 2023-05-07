#! /bin/bash
echo "configuring client 3"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del cliente3
allow-hotplug ens3
iface ens3 inet static
	address 10.10.50.92
	netmask 255.255.255.248
	gateway 10.10.50.88

EOF
echo "end"

echo "restart network"
sudo  systemctl restart networking

echo "ready"


