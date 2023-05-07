#! /bin/bash
echo "configuring route 1"

#ip route add 10.10.50.100 via 10.10.50.137 dev ens8
#ip route add 10.10.50.100 via 10.10.50.137 dev ens8
#ip route add 10.10.50.100 via 10.10.50.137 dev ens8
ip route add 10.10.50.96 via 10.10.50.138 dev ens8
ip route add 10.10.50.100 via 10.10.50.138 dev ens8
ip route add 10.10.50.106 via 10.10.50.138 dev ens8
ip route add 10.10.50.113 via 10.10.50.138 dev ens8
ip route add 10.10.50.115 via 10.10.50.138 dev ens8
ip route add 10.10.50.116 via 10.10.50.138 dev ens8
ip route add 10.10.50.123 via 10.10.50.138 dev ens8
ip route add 10.10.50.129 via 10.10.50.162 dev ens9

ip route add 10.10.50.98 via 10.10.50.138 dev ens8
ip route add 10.10.50.106 via 10.10.50.138 dev ens8
ip route add 10.10.50.108 via 10.10.50.138 dev ens8
ip route add 10.10.50.122 via 10.10.50.138 dev ens8
ip route add 10.10.50.133 via 10.10.50.162 dev ens9

ip route add 10.10.50.88 via 10.10.50.138 dev ens8
ip route add 10.10.50.98 via 10.10.50.138 dev ens8
ip route add 10.10.50.106 via 10.10.50.138 dev ens8
ip route add 10.10.50.108 via 10.10.50.138 dev ens8
ip route add 10.10.50.122 via 10.10.50.138 dev ens8
ip route add 10.10.50.133 via 10.10.50.162 dev ens9