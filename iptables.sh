#!/bin/bash

iptables -F
iptables -X
iptables -Z


iptables -P INPUT   DROP
iptables -P OUTPUT  ACCEPT
iptables -P FORWARD ACCEPT

iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -i wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
