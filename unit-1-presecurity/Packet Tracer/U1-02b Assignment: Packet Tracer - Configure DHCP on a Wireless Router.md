Objectives:
 · Connect 3 PCs to a wireless router

 · Change the DHCP setting to a specific network range

 · Configure the clients to obtain their address via DHCP

Step 1.
I added three generic PCs and connected each PC to an Ethernet port to the wireless route using straight-through cables.

Step 2.
After the amber lights have turned green, I've clicked PC0, open Desktop -> IP Configuration and Select DHCP to receive an IP address from DHCP Enabled Router. Then opened Web browser, enter the default gateway IP address -192.168.5.1 into the URL field. When prompted, enter the username admin and password admin and noticeed that DHCP is enabled.

Step 3.
Within the Router IP Settings section, change the IP address to -192.168.5.1 and saved it, after that my web page become unavailable, I've returned to IP Configuration and receive new IP address by pressed Static and DHCP, then I came back to web browser, enter username and password again and page start working correctly.

Step 4
Then I changed the Starting IP Address from 192.168.5.100 to 192.168.5.126 and also changed the Maximum Number of Users to 75 and saved settings, after that I came back to IP Configuration and clicked DHCP to receive new IP address information from the wireless router, then I Enter -ipconfig in Command Prompt, PC0 IP address was -192.168.5.126.

Step 5.
I've opened Desctop on PC1, select IP Configuration and click DHCP, PC1s IP address was -192.168.5.128. Then I did exactly the same processes I've did with PC0 to enable DHCP.

Step 6.
In the end I opened Command Prompt on PC2 and enter -ipconfig command to view the IP configuration. Then I enter - ping 192.168.5.1 to ping the wireless router, -ping 192.168.5.126 to ping PC0 and -ping 192.168.5.127 to ping PC1, all pings to all devices were successful. 
