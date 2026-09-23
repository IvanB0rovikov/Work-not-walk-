Open a terminal on your Debian VM. Run:

whoami
pwd
id
hostname
uname -a

Q1. username is "vboxuser"

Q2. Yes, I am, coz i can see "sudo" after using command "Id"

Q3. 6.12.107+deb13-amd64

Find out what whoami is for using two different help tools:

whatis whoami
man whoami

Q4. Difference is in the size of info "man whoami" gives to me

Q5. By the help of com "man whoami | grep -i "user"" I can find word "user", and i can quit this com by pressing "q"

From your home directory, navigate as follows. After each cd, run pwd to confirm where you are.

cd /etc
cd ..
cd /var/log
cd - (what does this do?)
cd ~
cd /

Q6. "Cd-" returning u to last active repo.

List the contents of /etc in three ways:

ls /etc
ls -l /etc
ls -la /etc

Q7. By using com "-l" u can get info about permissions.

Q8. "-a" means "ALL" this command will show u all info about choosed dir.

Run ls -lh /var/log.

Q9. dpkg.log  865K

Run ls -lt /var/log.

Q10. Now i have whole values of files size.

Create a directory structure:

~/cyber-course/
├── unit1/
├── unit2/
├── unit3/
│   ├── osint/
│   ├── recon/
│   └── crypto/
└── scratch/
Hint: mkdir -p makes parent directories as needed.

Q11. I used "mkdir" com.

Inside ~/cyber-course/scratch/, create three empty files: a.txt, b.txt, c.txt. Verify with ls.

Copy a.txt to ~/cyber-course/unit1/ with the new name intro.txt. Verify it exists in the new location.

Move b.txt to ~/cyber-course/unit2/.

Rename c.txt to notes.txt (still in scratch/).

Open ~/cyber-course/unit1/intro.txt with nano. Type the following text:

This is my first file edited from the Linux command line.
Today I learned that mv is also rename, and that nano shows shortcuts at the bottom.

Q12. I used Ctrl+X to exit from nano and save file by pressing Y.

Run cat ~/cyber-course/unit1/intro.txt to confirm the contents.

Try to delete ~/cyber-course/scratch/ with rmdir. What happens?

Q13. Its failed cuz the dir is not empty. I used com "rm -r" to delete "Scratch" dir.

Display the contents of /etc/os-release with cat.

Q14. 13.7

Run cat /etc/services. The file is very long. Press Ctrl+C to stop if it scrolls too long.

Now view the same file with less /etc/services. Practice:

Scrolling with arrow keys
/ssh to search for "ssh"
n for next match
G to jump to the end
g to jump back to the start
q to quit
Show only the first 5 lines of /etc/services:

$ head -n 5 /etc/services
 
Show only the last 10 lines of the system log (you'll need sudo):

$ sudo tail -n 10 /var/log/syslog

Q15. I see massages about system reloading which finished in 612 ms.    

Use grep to find every line in /etc/services that contains "ssh":

$ grep "ssh" /etc/services

Q16. 1 line.

Search for the word "error" in the system log (case-insensitive):

$ sudo grep -i "error" /var/log/syslog
 
Use find to locate every file ending in .conf under /etc:

$ find /etc -name "*.conf"

Q17. I added -mtime -7 to com find /etc -name "*.conf" to see modifie in the last 7 days.

Run which ls and which nano.

Q18. /usr/bin/ls and /usr/bin/nano

Run history | tail -n 20.

Q19. It acts as a pipe, sending the output of one command as the input to another command.

Save the output of ls -la ~/cyber-course/ to a file:

$ ls -la ~/cyber-course/ > ~/listing.txt
 
View the result with cat ~/listing.txt.

Append the current date to the same file:

$ date >> ~/listing.txt
 
View it again.

Q20. The > command simply truncates the output, while the >> command allows you to append data to the end of the line while preserving the previous files.

Find all your cd commands from this session:

$ history | grep "cd "
 
Echo a sentence and pipe it through grep:

$ echo "hello cyber world" | grep "cyber"

Run clear, then Ctrl+L in a new line. What's the difference between the two?

Q21. output is "hello cyber world"  , “clear” is a separate command that is saved in the terminal history, while "Ctrl+L" is just a key combination—it isn't saved in the history.

Create a zip archive of your unit1 directory:

$ cd ~/cyber-course/
$ zip -r unit1.zip unit1/
 
List the contents of the archive without extracting it:

$ unzip -l unit1.zip
 
Extract the archive into a new location:

$ mkdir ~/test-extract
$ cd ~/test-extract
$ unzip ~/cyber-course/unit1.zip

Q22. total 12
drwxrwxr-x 3 vboxuser vboxuser 4096 Sep 22 06:39
drwx ---   16 vboxuser vboxuser 4096 Sep 22 06:39
drwxrwxr-x 2 vboxuser vboxuser 4096 Sep 17 07:13 unit1

Now do the same with tar:

$ cd ~/cyber-course/
$ tar -czvf unit2.tar.gz unit2/
$ tar -tvf unit2.tar.gz

Q23. The flags c, z, v, and f most often refer to processor status flags in computer architecture and assembly language, or to international maritime signal flags in sailing.
1. Processor / Assembly Language Flags In computer processors (arithmetic-logic units, ALUs), these flags store information about the status of the results of arithmetic and logical operations:
c (carry flag): set to 1 if a carry or borrow occurs from the most significant bit as a result of addition or subtraction (unsigned overflow handling).
z (zero flag): set to 1 if the result of the last operation is zero.
v (overflow flag): Set to 1 when the result of a signed arithmetic operation is too large or too small to fit in the destination register (signed overflow).
f (direction/interrupt/error flag): Depending on the architecture, this may indicate a direction flag (controlling increment/decrement when working with strings), an interrupt enable flag, or a floating-point condition.

Create a script file and see its default permissions:

$ touch ~/cyber-course/hello.sh
$ ls -l ~/cyber-course/hello.sh

Q24. -rw-rw-r--  owner dosnt have permissions to execute.

Open it in nano and add this content:

#!/bin/bash
echo "Hello from my first script"
 
Save and exit.

Try to run it:

$ ~/cyber-course/hello.sh

Q25. Permission denied, maybe I'm not the owner of the file, or maybe it's read-only.

$ chmod u+x ~/cyber-course/hello.sh
$ ls -l ~/cyber-course/hello.sh

Q26. Yes, script running and the line become green.

Now make it readable only by you:

$ chmod 700 ~/cyber-course/hello.sh
$ ls -l ~/cyber-course/hello.sh

Q27. Code 700 means full access for the owner and no access at all for everyone else.

Run ps aux | head -n 10 to see the first 10 processes.

Q28. The “User” column displays the username of the user who started the process.

Run top. Spend a minute exploring:

Press M to sort by memory
Press P to sort by CPU
Press q to quit
Check disk usage:

$ df -h
$ du -sh ~/cyber-course/

Q29. 48k

Check memory:

$ free -h

Q30. 1.9 Gi - total, 1.0 Gi - used

Show your IP configuration:

$ ip a

Q31. 127.0.0.1/8

Test connectivity:

$ ping -c 4 1.1.1.1
$ ping -c 4 example.com

Q32. Both succeed.

Download a small file:

$ wget https://www.debian.org/index.html -O ~/cyber-course/debian.html
 
View it with less ~/cyber-course/debian.html.

Fetch the same page with curl:

$ curl https://www.debian.org/ -o ~/cyber-course/debian2.html

Q33. Yes, two files are identical.

Update the package catalog:

$ sudo apt update

Q34. Sudo asked for my password.

List available upgrades:

$ apt list --upgradable
 
Apply the upgrades:

$ sudo apt upgrade
 
Answer Y when prompted.

Q35. Yes, 4 packages were updated.

Install a small useful tool:

$ sudo apt install htop
 
Verify it's installed and inspect it:

$ which htop
$ apt show htop | head -n 20
 
Run it: htop. Quit with q.

Q36. Top: Features a simple monochrome or basic text-based interface. It is controlled exclusively via the keyboard. Htop: Supports color-coded displays (graphical bars showing memory and CPU usage). It works with a computer mouse—you can click on lines and buttons and scroll through the list.

Search the catalog for a tool you'll use later in this course:

$ apt search nmap

Q37. The Network Mapper.

A small mini-task that combines several commands. Do this in your home directory.

Create a directory called report.

Inside it, create a file called system-info.txt that contains:

The output of hostname
The output of whoami
The output of uname -a
The output of df -h
The current date and time
Zip the report directory into report.zip.

Verify the zip with unzip -l report.zip.

Q38. mkdir report
touch system-info.txt
nano system-info.txt
"hostname - IvanDebian; whoami - vboxuser; uname -a - Linux IvanDebian 6.12.107+deb13-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.12.107-1 (2026-08-29) x86_64 GNU/Linux; df -h - Filesystem      Size  Used Avail Use% Mounted on
udev            951M     0  951M   0% /dev
tmpfs           198M  1.2M  197M   1% /run
/dev/sda1        19G  5.4G   13G  31% /
tmpfs           987M   12K  987M   1% /dev/shm
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           987M   16K  987M   1% /tmp
tmpfs           198M  104K  198M   1% /run/user/1000"
zip -r report.zip ~/report
unzip -l report.zip


--The syntax caused the most trouble when working in the Linux terminal, as I constantly had to look up the commands needed for a task or recall ones from previous assignments. I really enjoy managing to do things on my own, without relying on AI or search engines. I think I’ll be using the `sudo apt update/install` command most often, since I’ll constantly need to expand my library of utilities and applications. I wouldn't say any specific command truly surprised me, though some did make me stop and think—for instance, the `curl` utility; I didn't have it installed, so I used the aforementioned `sudo apt update/install` command, and it worked perfectly—that was pretty cool.
