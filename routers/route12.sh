#! /bin/bash
echo "configuring route 1"

ip route add 10.10.50.88/29 via 10.10.50.137 dev ens8
ip route add 10.10.50.104/29 via 10.10.50.142 dev ens9
ip route add 10.10.50.160/30 via 10.10.50.166 dev ens10

#sudo iptables -A FORWARD -s origen  -d destino --j DROP
sudo iptables -A FORWARD -s 10.10.50.93  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.92  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.97 --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.98 --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.99 --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.98 --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.99 --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.100 --j DROP
sudo iptables -A FORWARD -s 10.10.50.105  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.106  -d 10.10.50.97 --j DROP
sudo iptables -A FORWARD -s 10.10.50.106  -d 10.10.50.98 --j DROP
sudo iptables -A FORWARD -s 10.10.50.106  -d 10.10.50.100 --j DROP
sudo iptables -A FORWARD -s 10.10.50.108  -d 10.10.50.99 --j DROP
sudo iptables -A FORWARD -s 10.10.50.108  -d 10.10.50.98 --j DROP
sudo iptables -A FORWARD -s 10.10.50.108  -d 10.10.50.100 --j DROP
sudo iptables -A FORWARD -s 10.10.50.113  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.114  -d 10.10.50.97 --j DROP
sudo iptables -A FORWARD -s 10.10.50.114  -d 10.10.50.98 --j DROP
sudo iptables -A FORWARD -s 10.10.50.114  -d 10.10.50.99 --j DROP
sudo iptables -A FORWARD -s 10.10.50.115  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.116  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.121  -d 10.10.50.97 --j DROP
sudo iptables -A FORWARD -s 10.10.50.121  -d 10.10.50.99 --j DROP
sudo iptables -A FORWARD -s 10.10.50.121  -d 10.10.50.100 --j DROP
sudo iptables -A FORWARD -s 10.10.50.122  -d 10.10.50.96/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.123  -d 10.10.50.97 --j DROP
sudo iptables -A FORWARD -s 10.10.50.123  -d 10.10.50.98 --j DROP
sudo iptables -A FORWARD -s 10.10.50.123  -d 10.10.50.100 --j DROP
sudo iptables -A FORWARD -s 10.10.50.124  -d 10.10.50.98 --j DROP
sudo iptables -A FORWARD -s 10.10.50.124  -d 10.10.50.99 --j DROP
sudo iptables -A FORWARD -s 10.10.50.124  -d 10.10.50.100 --j DROP

echo "fin edificio 1"