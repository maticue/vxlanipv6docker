ip -6 link add vxlan100 type vxlan \
    id 100 \
    dstport 4789 \
    local 2001:db8:1::1 \
    group ff05::100 \
    dev eth0 \
    ttl 5
 brctl addbr br100
 brctl addif br100 vxlan100
 brctl stp br100 off
 ip link set up dev br100
 ip link set up dev vxlan100


