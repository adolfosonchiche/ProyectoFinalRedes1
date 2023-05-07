#! /bin/bash
echo "configuring server 2"

cat << EOF > /etc/network/interfaces
#configuracion

source /etc/network/interfaces.d/*

#configuracion del loopback
auto lo
iface lo inet loopback

#configuaracion del cliente1
auto ens3
iface ens3 inet static
	address 10.10.50.133
	netmask 255.255.255.252
	gateway 10.10.50.132

EOF
echo "end"

echo "restart network"
sudo nano systemctl restart networking

echo "ready"


