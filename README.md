# truenas-patches

This repository contains patch files which modify the [truenas-install](https://github.com/truenas/truenas-installer/blob/release/24.04.2/usr/sbin/truenas-install) and [scale-build](https://github.com/truenas/scale-build/blob/release/24.04.2/truenas_install/__main__.py) scripts. These modifications include:

- Encrypted boot+app zpools
- ZFS Boot Menu
- Boot(64G) + App zpools using the same disks

## Usage

1. Boot the server using the [live-cd](https://www.truenas.com/download-truenas-scale/).
2. Configure the server's networking for internet access: (example)
    ```
    ip a add 192.168.1.2/24 dev enp6s0
    ip link set dev enp6s0 up
    ip r a default via 192.168.1.1/24 dev enp6s0
    echo "nameserver 192.168.1.1" > /etc/resolv.conf
    ```
3. Apply the patches by running the following command:
    `curl -s https://raw.githubusercontent.com/BuffaloBun/truenas-patches/24.04.2/patch.sh | sh -`

## Mentions
This repository is inspired by [this gist](https://gist.github.com/jose-pr/a59ce29b4455e8539f604cd922fc118d) by [jose-pr](https://github.com/jose-pr)