#!/bin/bash

# DNS Servers
cloudflare_ipv4="1.1.1.1"
cloudflare_ipv4_alt="1.0.0.1"
cloudflare_ipv6="2606:4700:4700::1111"
cloudflare_ipv6_alt="2606:4700:4700::1001"
google_ipv4="8.8.8.8"
google_ipv4_alt="8.8.4.4"
google_ipv6="2001:4860:4860::8888"
google_ipv6_alt="2001:4860:4860::8844"

all_dns_servers=($cloudflare_ipv4 $cloudflare_ipv4_alt $cloudflare_ipv6 $cloudflare_ipv6_alt $google_ipv4 $google_ipv4_alt $google_ipv6 $google_ipv6_alt)

# set dns servers to cloudflare and google
networksetup -setdnsservers Wi-Fi $all_dns_addresses
networksetup -setdnsservers WorkVPN $all_dns_addresses

#reset dns resolver
sudo killall -HUP mDNSResponder
