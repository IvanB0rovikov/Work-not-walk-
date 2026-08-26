Objectives
*   Connect Network Devices and Hosts

*   Configure Devices with IPv4 Addressing

*   Verify the End Device Configuration and Connectivity

*   Use Networking Commands to View Host Information

Step 1.
I've clicked the power switch to turn the device on, then connetced all devices by using Copper Straight-Through according to the information in the Connections Table

|     Device    | Interface/Port | Connected to Device | Connection Interface/Port |
|:-------------:|:--------------:|:-------------------:|:-------------------------:|
| Office Router | G0/0           | ISP1                | G0/0                      |
| Office Router | G0/1           | Switch              | G0/1                      |
| Admin PC      | NIC (F/0)      | Switch              | F0/1                      |
| Manager PC    | NIC (F/0)      | Switch              | F0/2                      |
| Printer       | NIC (F/0)      | Switch              | F0/24                     |

Step 2.
I opened Admin and Manager PCs and receive their IP addresses dynamically, then I manually configured printers IP address by using Addressing Table

|    Device    | Interface/Port |   IPv4 Address  |  Subnet Mask  |
|:------------:|:--------------:|:---------------:|:-------------:|
| Admin PC     | NIC            | DHCP            | N/A           |
| Manager PC   | NIC            | DHCP            | N/A           |
| Printer      | NIC            | 192.168.1.100   | 255.255.255.0 |
| www.cisco.pt | NIC            | 209.165.200.225 | N/A           |

* Because the two computers are on the same network, their IPv4 addresses will be similar, their subnet masks and default gateways will be identical. 
* Printer default gateway is -192.168.1.1, because all these devices are in the same LAN and using same default gateway.

Step 3
From the command prompt on Admin PC I used -ping to verify connectivity between Admin PC, Printer and Manager PC, connection was seccesfuly.

Step 4.
I opened Web browser from the desctop of the PCs and enter the IP address and the URL of the internet server to display the webpage, I didnt meet any problems with connetcion.

Step 5. 
By the entering -ipconfig ihto the Command prompt I got info about IPv4, Subnet Mask and Default Gateway. 
By the entering -ipconfig /all ihto the Command prompt I got info about Physical Address, IPv4, Subnet Mask and Default Gateway, DHCP Servers and DNS Servers.

Step 6. 
After entering command -starert www.cisco.pt into the PC Command Prompt I got this :
  1   0 ms      0 ms      0 ms      192.168.1.1 - PC
  2   0 ms      0 ms      0 ms      209.165.200.233 - Router
  3   0 ms      0 ms      0 ms      209.165.200.225 - Server
3 hops, 1 router passed on the way to the destination.
The second router is located at the internet service provider's facility.
The biggest facilities challenge in setting up the network in a new location is a : Concealed Cabling, Lack of Ports, Dead Zones, and Wi-Fi Power Supply.
