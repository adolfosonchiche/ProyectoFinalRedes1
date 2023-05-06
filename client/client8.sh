#! /bin/bash
echo "configuring client 8"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del cliente8
auto ens3
iface ens3 inet static
	address 10.10.50.100
	netmask 255.255.255.248
	gateway 10.10.50.96

EOF
echo "end"

echo "restart network"
sudo nano systemctl restart networking

echo "ready"

