#! /bin/bash
echo "configuring route 1"

ip route add 10.10.50.160/30 via 10.10.50.154 dev ens9

#sudo iptables -A FORWARD -s origen  -d destino --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.92  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.93  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.104/29  -d 10.10.50.128/30 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.108  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.113  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.115  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.116  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.121  -d 10.10.50.129 --j DROP
sudo iptables -A FORWARD -s 10.10.50.122  -d 10.10.50.129 --j DROP

echo "fin edificio 1"