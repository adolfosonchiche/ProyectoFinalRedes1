#! /bin/bash
echo "configuring route 1"

ip route add 10.10.50.88/29 via 10.10.50.161 dev ens8
ip route add 10.10.50.96/29 via 10.10.50.165 dev ens9
ip route add 10.10.50.104/29 via 10.10.50.169 dev ens10
ip route add 10.10.50.112/29 via 10.10.50.173 dev ens11
ip route add 10.10.50.120/29 via 10.10.50.177 dev ens8
ip route add 10.10.50.128/30 via 10.10.50.153 dev ens9
ip route add 10.10.50.132/30 via 10.10.50.157 dev ens8

echo "fin edificio 1"