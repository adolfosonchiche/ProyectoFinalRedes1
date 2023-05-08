#! /bin/bash
echo "configuring route 1"

ip route add 10.10.50.112/29 via 10.10.50.149 dev ens8
ip route add 10.10.50.160/30 via 10.10.50.178 dev ens9

#sudo iptables -A FORWARD -s origen  -d destino --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.121 --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.122 --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.124 --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.121 --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.123 --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.124 --j DROP
sudo iptables -A FORWARD -s 10.10.50.92  -d 10.10.50.121 --j DROP
sudo iptables -A FORWARD -s 10.10.50.92  -d 10.10.50.122 --j DROP
sudo iptables -A FORWARD -s 10.10.50.93  -d 10.10.50.123 --j DROP
sudo iptables -A FORWARD -s 10.10.50.93  -d 10.10.50.124 --j DROP
sudo iptables -A FORWARD -s 10.10.50.97  -d 10.10.50.120/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.98  -d 10.10.50.120/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.99  -d 10.10.50.122 --j DROP
sudo iptables -A FORWARD -s 10.10.50.99  -d 10.10.50.124 --j DROP
sudo iptables -A FORWARD -s 10.10.50.100  -d 10.10.50.122 --j DROP
sudo iptables -A FORWARD -s 10.10.50.100  -d 10.10.50.124 --j DROP
sudo iptables -A FORWARD -s 10.10.50.105  -d 10.10.50.120/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.106  -d 10.10.50.120/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.121 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.123 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.124 --j DROP
sudo iptables -A FORWARD -s 10.10.50.113  -d 10.10.50.120/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.114  -d 10.10.50.121 --j DROP
sudo iptables -A FORWARD -s 10.10.50.114  -d 10.10.50.123 --j DROP
sudo iptables -A FORWARD -s 10.10.50.114  -d 10.10.50.124 --j DROP
sudo iptables -A FORWARD -s 10.10.50.115  -d 10.10.50.120/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.116  -d 10.10.50.120/29 --j DROP

echo "fin edificio 1"