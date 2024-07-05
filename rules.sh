# This file is interpreted as shell script.
# Put your custom iptables rules here, they will
# be executed with each firewall (re-)start.

# Internal uci firewall chains are flushed and recreated on reload, so
# put custom rules into the root chains e.g. INPUT or FORWARD or into the
# special user chains, e.g. input_wan_rule or postrouting_lan_rule.

# update packages
opkg update

# download mod package
opkg install iptables-mod-ipopt

iptables -t mangle -I POSTROUTING 1 -j TTL --ttl-set 65
iptables -t mangle -I PREROUTING 1 -j TTL --ttl-set 65
ip6tables -t mangle -I POSTROUTING 1 -j HL --hl-set 65
ip6tables -t mangle -I PREROUTING 1 -j HL --hl-set 65
