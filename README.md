# Improved-Icmp (security)

### Network Setup

```
br0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.0.134  netmask 255.255.255.0  broadcast 0.0.0.0
        inet6 fe80::83e:a1ff:fe7f:2fb4  prefixlen 64  scopeid 0x20<link>
        ether 0a:3e:a1:7f:2f:b4  txqueuelen 1000  (Ethernet)
        RX packets 1979  bytes 209892 (209.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 1529  bytes 208640 (208.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

tap0: flags=4419<UP,BROADCAST,RUNNING,PROMISC,MULTICAST>  mtu 1500
        inet6 fe80::83e:a1ff:fe7f:2fb4  prefixlen 64  scopeid 0x20<link>
        ether 0a:3e:a1:7f:2f:b4  txqueuelen 1000  (Ethernet)
        RX packets 2421  bytes 266738 (266.7 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 1934  bytes 250197 (250.1 KB)
        TX errors 0  dropped 51247 overruns 0  carrier 0  collisions 0
```
Please set up the network before executing this expermient.
This is the link that I used to set up : https://gist.github.com/extremecoders-re/e8fd8a67a515fee0c873dcafc81d811c

<hr>

### Result

```
./sendPacket 100
0 ..
10 ..
20 ..
..
90 ..
average execution time :  0.08673075437545777
```
Improved Version
=> 867 ms

```
./sendPacket 100
10 ..
20 ..
..
90 ..
average execution time :  0.00018363356590270997
```
Normal Version
=> 2 ms

433.5x slower.

