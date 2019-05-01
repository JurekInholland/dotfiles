# Secure server setup

- configure ufw [link](https://github.com/imthenachoman/How-To-Secure-A-Linux-Server#steps-9)

- server_init_harden [link](https://github.com/pratiktri/server_init_harden)

# Enable iGPU
[Enable iGPU on Hetzner](https://github.com/desimaniac/docs/blob/master/enable_igpu_on_hetzner.md)

# Hetzner DNS Server:
Hetzner servers are configured to use their own IPv4 and IPv6 DNS servers.
This fills up all nameserver slots so there are none left for kubernetes.
To fix (has to be verified)
´nano /etc/netplan/01-netcfg.yaml´
Remove nameserver entries and replace by 8.8.8.8 or other.
netplay apply 