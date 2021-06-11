# Wireguard

https://www.wireguard.com/quickstart/


## wg-quick

```
wg private > ./private

cp ./wg-temp-....conf /etc/wireguard/wg0
vim /etc/wireguard/wg0
wg-quick up wg0
```

## server configuration

If you want to place relay server, you should configure the ip forwarding.

```
# ipv4
sysctl -w net.ipv4.ip_forward=1
# ipv6
sysctl -w net.ipv6.conf.all.forwarding=1
```

## wg


```
wg private > ./private


ip link add dev wg0 type wireguard


ip addr add dev wg0 **ipv4**/24
# or
wg setconf wg0 myconfig.conf
# or
wg set wg0 private-key ./private
# or
wg set wg0 listen-port 51820 private-key /path/to/private-key peer ABCDEF... allowed-ips 192.168.88.0/24 endpoint 209.202.254.14:8172


ip link set up dev wg0
```

```
root@ubuntu:~# wg
interface: wg0
  public key: ...
  private key: (hidden)
  listening port: ...

peer: ...
  endpoint: ...
  ...
```
