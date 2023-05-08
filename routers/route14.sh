#! /bin/bash
echo "configuring route 1"

ip route add 10.10.50.104/29 via 10.10.50.145 dev ens8
ip route add 10.10.50.120/29 via 10.10.50.150 dev ens9
ip route add 10.10.50.160/30 via 10.10.50.174 dev ens10

#sudo iptables -A FORWARD -s origen  -d destino --j DROP
sudo iptables -A FORWARD -s 10.10.50.90  -d 10.10.50.114 --j DROP
sudo iptables -A FORWARD -s 10.10.50.91  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.92  -d 10.10.50.113 --j DROP
sudo iptables -A FORWARD -s 10.10.50.92  -d 10.10.50.115 --j DROP
sudo iptables -A FORWARD -s 10.10.50.93  -d 10.10.50.113 --j DROP
sudo iptables -A FORWARD -s 10.10.50.93  -d 10.10.50.116 --j DROP
sudo iptables -A FORWARD -s 10.10.50.97  -d 10.10.50.113 --j DROP
sudo iptables -A FORWARD -s 10.10.50.97  -d 10.10.50.115 --j DROP
sudo iptables -A FORWARD -s 10.10.50.98  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.99  -d 10.10.50.113 --j DROP
sudo iptables -A FORWARD -s 10.10.50.99  -d 10.10.50.115 --j DROP
sudo iptables -A FORWARD -s 10.10.50.99  -d 10.10.50.116 --j DROP
sudo iptables -A FORWARD -s 10.10.50.100  -d 10.10.50.113 --j DROP
sudo iptables -A FORWARD -s 10.10.50.100  -d 10.10.50.114 --j DROP
sudo iptables -A FORWARD -s 10.10.50.100  -d 10.10.50.116 --j DROP
sudo iptables -A FORWARD -s 10.10.50.105  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.106  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.113 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.115 --j DROP
sudo iptables -A FORWARD -s 10.10.50.107  -d 10.10.50.116 --j DROP
sudo iptables -A FORWARD -s 10.10.50.108  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.121  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.122  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.123  -d 10.10.50.112/29 --j DROP
sudo iptables -A FORWARD -s 10.10.50.124  -d 10.10.50.113 --j DROP
sudo iptables -A FORWARD -s 10.10.50.124  -d 10.10.50.114 --j DROP
sudo iptables -A FORWARD -s 10.10.50.124  -d 10.10.50.115 --j DROP

echo "fin edificio 1"