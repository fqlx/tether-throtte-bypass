# tether-throttle-bypass
Bypass tether throttling on mobile networks such as Verizon, Visible, T-Mobile, etc using an GL iNet router GL-MT3000

The script modifies the Time to Live (TTL) value for packets in both IPv4 and IPv6 traffic. Changing the TTL value is a common technique used to bypass tethering restrictions imposed by some mobile carriers.

## How to Install

Navigate System -> Advance Settings
https://192.168.8.1/

Navigate to Network -> Firewall -> Custom
https://192.168.8.1/cgi-bin/luci/admin/network/firewall/custom

Copy rules.sh into custom firewall rules setting 

## How This Bypasses Tethering Restrictions:

TTL (Time to Live): When a packet is sent from a device, it has a TTL value that is decremented by 1 each time it passes through a router. Mobile carriers often check the TTL values to detect tethering by looking for patterns in TTL values that suggest the packets have been forwarded from another device. By setting the TTL value to 65 for all packets, the script makes it appear as though the packets originate from the device itself rather than being forwarded from another tethered device.

HL (Hop Limit): The Hop Limit field in IPv6 serves the same purpose as the TTL field in IPv4. Modifying the HL value achieves the same effect as modifying the TTL value, ensuring consistency in both IPv4 and IPv6 traffic.
