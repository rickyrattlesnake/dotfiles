#!/opt/homebrew/bin/fish

# DNS Servers
set cloudflare_ipv4 "1.1.1.1"
set cloudflare_ipv4_alt "1.0.0.1"
set cloudflare_ipv6 "2606:4700:4700::1111"
set cloudflare_ipv6_alt "2606:4700:4700::1001"
set google_ipv4 "8.8.8.8"
set google_ipv4_alt "8.8.4.4"
set google_ipv6 "2001:4860:4860::8888"
set google_ipv6_alt "2001:4860:4860::8844"

set -l all_dns_servers $cloudflare_ipv4 $cloudflare_ipv4_alt $cloudflare_ipv6 $cloudflare_ipv6_alt $google_ipv4 $google_ipv4_alt $google_ipv6 $google_ipv6_alt

# set dns servers to cloudflare and google
echo $all_dns_servers | xargs networksetup -setdnsservers Wi-Fi
# broken need to unroll the list before passing

#reset dns resolver
sudo killall -HUP mDNSResponder
