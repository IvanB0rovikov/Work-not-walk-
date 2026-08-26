   Step 1 
I clucked Desktop on PC0, then opened Command Prompt and verifyed that PC has an IP address from DHCP
 using command -upconfig /all

   Step 2
I've used command -ping to ping the router HQ

   Step 3
I've tried to enter command -telnet 64.100.1.1 but the answer was:
Trying 64.100.1.1 ...Open
[Connection to 64.100.1.1 closed by foreign host]
 Then i used command -ssh -l admin 64.100.1.1, after which enter password "class" and then
  I've connected to router HQ
