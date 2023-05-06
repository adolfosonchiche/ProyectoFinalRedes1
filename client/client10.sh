#! /bin/bash
echo "configuring client 10"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del cliente10
auto ens3
iface ens3 inet static
	address 10.10.50.106
	netmask 255.255.255.248
	gateway 10.10.50.104

EOF
echo "end"

echo "restart network"
sudo nano systemctl restart networking

echo "ready"


