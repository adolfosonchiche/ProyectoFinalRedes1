#! /bin/bash
echo "configuring route 1"

ip route add 10.10.50.160/30 via 10.10.50.158 dev ens9

#sudo iptables -A FORWARD -s origen  -d destino --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.92  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.93  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.98  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.100  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.105  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.106  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.113  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.114  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.116  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.121  -d 10.10.50.133 --j DROP
sudo iptables -A FORWARD -s 10.10.50.123  -d 10.10.50.133 --j DROP

echo "fin edificio 1"