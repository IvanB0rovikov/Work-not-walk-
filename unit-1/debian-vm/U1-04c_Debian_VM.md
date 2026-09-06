# My Debian 13 Lab VM

## VM identity
- VM name (in VirtualBox): IvanDebian
- Hostname (inside Debian): IvanDebian
- Debian version (from `cat /etc/debian_version`): 13.6 
- Kernel version (from `uname -r`): 6.12.107+deb13 - amd64

## Allocated resources
- CPU cores: 2
- RAM: 2048 mb
- Disk size: 20gb
- Network mode: NAT (default)

## User account
- Username: ivan
- Root account: enabled 
- Sudo works: yes 

## Desktop environment
 -echo $XDG_CURRENT_DESKTOP, I have GNOME

## Guest Additions
- Installed: yes / no
- Version (from `VBoxClient --version` in the VM): 7.2.16r174877

## Snapshot
- Snapshot name: clean-install-guest-additions
- Date taken: 03.09.2026 

## What worked, what didn't
There weren't any major problems because the installation followed the instructions. Of course, there was one issue with the VBoxLinuxAdditions.run file. Honestly, I still don't really understand how I did it. This file was in a directory and simply wouldn't run. Thanks to root rights and a little help from AI, I was able to do it. I could probably do it again without AI, but I would definitely need an internet connection.
