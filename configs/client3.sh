ip link add bond0 type bond
ip link set bond0 type bond miimon 100 mode active-backup
ip link set eth1 down
ip link set eth2 down
ip link set eth1 master bond0
ip link set eth2 master bond0
ip link set bond0 up
ip link add link bond0 name bond0.3 type vlan id 3
ip link set bond0.3 up
ip addr add 192.168.3.33/24 dev bond0.3
ip route add 192.168.1.0/24 via 192.168.3.1 dev bond0.3
ip route add 192.168.2.0/24 via 192.168.3.1 dev bond0.3