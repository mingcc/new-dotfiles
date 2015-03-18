#!/bin/bash


#USERNAME="mingcc"
EXTIF="wlan0"
INNET="192.168.1.0/24"

iptables -F
iptables -X
iptables -Z


iptables -P INPUT   DROP
iptables -P OUTPUT  ACCEPT
iptables -P FORWARD ACCEPT

iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -i $EXTIF -m state --state RELATED,ESTABLISHED -j ACCEPT

# samba 
iptables -A INPUT -i $EXTIF -p tcp -s $INNET -m multiport --dport 139,445 -j ACCEPT

iptables -A INPUT -i $EXTIF -p udp -s $INNET -m multiport --dport 137,138 -j ACCEPT

# ssd
iptables -A INPUT -i $EXTIF -p tcp -s $INNET --dport 22 -j DROP
#sed '13a /home/$USERNAME/bin/iptables.sh' /etc/rc.local
