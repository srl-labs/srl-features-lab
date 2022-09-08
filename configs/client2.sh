ip link add link eth1 name eth1.2 type vlan id 2
ip addr add 192.168.2.22/24 dev eth1.2
ip link set eth1.2 up
ip route add 192.168.1.0/24 via 192.168.2.1 dev eth1.2
ip route add 192.168.3.0/24 via 192.168.2.1 dev eth1.2