Part 1 - Exploring your ~/.bashrc
1.1 - Find the file
Run:

$ ls -la ~ | grep bashrc
Q1: Paste the line. What size is the file? When was it last modified?
-rw-r--r--  1 ivan ivan 3526 Sep  6 10:53 .bashrc

1.2 - Read the file
Open it with less ~/.bashrc and scroll through. Quit with q.

Q2: Find one section that contains comments explaining what it does. Paste a 3–5 line excerpt and explain in one sentence what that section does.
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
This is a nickname you assign to a file for convenience.

Q3: Find a section that already defines aliases (look for the word alias). Are any aliases already set up by Debian's default .bashrc? Name two.
#alias ll='ls -l'
#alias la='ls -A'

2.1 - Make a backup
$ cp ~/.bashrc ~/.bashrc.backup
 
Verify both files exist:

$ ls -la ~/.bashrc*
 
Q4: Paste the output. Confirm you have both .bashrc and .bashrc.backup.
-rw-r--r-- 1 ivan ivan 3526 Sep  6 10:53 /home/ivan/.bashrc
-rw-r--r-- 1 ivan ivan 3526 Sep 23 10:56 /home/ivan/.bashrc.backup

Part 3 - Adding a welcome banner
3.1 - Edit the file
$ nano ~/.bashrc
 
Scroll to the very bottom of the file (Ctrl+End in nano, or Page Down until you reach it).

Add a blank line, then:

# My customizations start here
echo "Hello, Linuxuser"
 
Save with Ctrl+O, Enter, exit with Ctrl+X.

3.2 - Test it
Open a new terminal window (don't close the current one — the broken-bashrc safety net).

Q5: What appears at the top of the new terminal?
Hello, Linuxuser
ivan@IvanDebian:~$ 

3.3 - Personalize it
Edit ~/.bashrc again and replace the banner with one of these (or write your own):

echo "==============================="
echo "  Welcome back, $(whoami)"
echo "  Host: $(hostname)"
echo "  Today: $(date '+%A, %d %B %Y')"
echo "==============================="
Open another new terminal.

Q6: Paste the banner output you see.
===============================
  Unfortunately you came back, ivan aka gooner
  Host: IvanDebian
  Today: Wednesday, 23 September 2026
===============================
ivan@IvanDebian:~$ 

Q7: What does $(whoami) do? Why are the dollar sign and parentheses there?
The system first executes the command inside the parentheses, and then, using `$`, the command's output is displayed in the terminal.

Part 4 - Adding aliases
4.1 - Add two aliases of your own
Pick two commands you have used frequently in the CLI Basics Exercise. Add aliases for them at the bottom of ~/.bashrc. For example:

alias ll='ls -la'
alias gohome='cd ~/cyber-course'
 
Save and open a new terminal (or run source ~/.bashrc in your current one).

4.2 - Test them
$ ll
$ gohome
$ pwd
 
Q8: Paste the two aliases you defined and the output when you ran them.
alias ll='ls -la'
---ivan@IvanDebian:~$ ll
total 124
drwx------ 15 ivan ivan 4096 Sep 23 11:21 .
drwxr-xr-x  3 root root 4096 Sep  6 10:53 ..
-rw-r--r--  1 ivan ivan 3526 Sep 23 10:56 .baschrc.backup
-rw-------  1 ivan ivan  980 Sep 23 11:09 .bash_history
-rw-r--r--  1 ivan ivan  220 Sep  6 10:53 .bash_logout
-rw-r--r--  1 ivan ivan 3830 Sep 23 11:20 .bashrc
-rw-r--r--  1 ivan ivan 3526 Sep 23 10:56 .bashrc.backup
-rw-rw-r--  1 ivan ivan 1024 Sep 23 11:21 ..bashrc.swp
drwx------ 11 ivan ivan 4096 Sep  6 12:02 .cache
drwx------ 11 ivan ivan 4096 Sep  6 11:40 .config
drwxrwxr-x  2 ivan ivan 4096 Sep 23 11:18 cyber-course
drwxr-xr-x  2 ivan ivan 4096 Sep  6 10:56 Desktop
drwxr-xr-x  2 ivan ivan 4096 Sep  6 10:56 Documents
drwxr-xr-x  2 ivan ivan 4096 Sep  6 10:56 Downloads
-rw-r--r--  1 ivan ivan 5290 Sep  6 10:53 .face
lrwxrwxrwx  1 ivan ivan    5 Sep  6 10:53 .face.icon -> .face
drwx------  4 ivan ivan 4096 Sep  6 10:56 .local
drwxrwxr-x  2 ivan ivan 4096 Sep  6 11:24 media
drwxr-xr-x  2 ivan ivan 4096 Sep  6 10:56 Music
drwxr-xr-x  3 ivan ivan 4096 Sep  6 11:42 Pictures
-rw-r--r--  1 ivan ivan  807 Sep  6 10:53 .profile
drwxr-xr-x  2 ivan ivan 4096 Sep  6 10:56 Public
drwxr-xr-x  2 ivan ivan 4096 Sep  6 10:56 Templates
-rw-r-----  1 ivan ivan    5 Sep 23 10:47 .vboxclient-clipboard-tty2-control.pid
-rw-r-----  1 ivan ivan    5 Sep 23 10:47 .vboxclient-clipboard-tty2-service.pid
-rw-r-----  1 ivan ivan    5 Sep 23 10:47 .vboxclient-draganddrop-tty2-control.pid
-rw-r-----  1 ivan ivan    5 Sep 23 10:47 .vboxclient-hostversion-tty2-control.pid
-rw-r-----  1 ivan ivan    5 Sep 23 10:47 .vboxclient-seamless-tty2-control.pid
-rw-r-----  1 ivan ivan    5 Sep 23 10:47 .vboxclient-vmsvga-session-tty2-control.pid
-rw-r-----  1 ivan ivan    5 Sep 23 10:47 .vboxclient-vmsvga-session-tty2-service.pid
drwxr-xr-x  2 ivan ivan 4096 Sep  6 10:56 Videos

alias gohome='cd ~/cyber-course'
alias cl='clear'

4.3 - See all aliases
$ alias
 
Q9: How many aliases are now defined in your shell? (Include Debian defaults plus your additions.)
alias cl='clear'
alias gohome='cd ~/cyber-course'
alias ll='ls -la'
alias ls='ls --color=auto'


4.4 - Reflect briefly
Q10: Pick one of the two aliases you created. In one sentence, why is this a useful shortcut for you specifically?
alias cl='clear' I made it cuz I like work in clean and like beautiful tetminal, so its useful alias for me.

Part 5 - History settings
5.1 - Check current values
$ echo $HISTSIZE
$ echo $HISTFILESIZE
 
Q11: What are the default values on your system?
ivan@IvanDebian:~$ echo $HISTSIZE
1000
ivan@IvanDebian:~$ echo $HISTFILESIZE
2000

5.2 - Check what ~/.bash_history actually contains
$ wc -l ~/.bash_history
$ tail -n 20 ~/.bash_history
 
Q12: How many lines are in your history file? Paste the last 5 lines.
65 
nano ~/.bashrc
nano ~/.bashrc
cp ~/.bashrc.backup ~/.bashrc
source ~/.bashrc
nano ~/.bashrc

5.3 - Increase the limits
In ~/.bashrc, find the existing HISTSIZE and HISTFILESIZE lines (usually around line 25–30) and change them:

HISTSIZE=10000
HISTFILESIZE=20000
 
Save, open a new terminal, and verify:

$ echo $HISTSIZE
$ echo $HISTFILESIZE
 
Q13: What are the new values?
ivan@IvanDebian:~$ echo $HISTSIZE
10000
ivan@IvanDebian:~$ echo $HISTFILESIZE
20000

5.4 - Decrease them temporarily
In a current terminal (no editing needed), run:

$ HISTSIZE=5
$ history
 
Q14: What changes? How many commands does history now show?
I set the value for the returned history to 5.
ivan@IvanDebian:~$ history
   71  cl
   72  echo $HISTSIZE
   73  echo $HISTFILESIZE
   74  HISTSIZE=5
   75  history

5.5 - Security thought
Q15: A long history is convenient — but ~/.bash_history is a plain text file in your home directory. Name two reasons why someone with read access to your home folder might care what's in your history file.
First, there is the risk of a leak of usernames and passwords. 
Second, there is the risk of a leak of source code related to the development of applications and systems.

Part 6 - Your first script

#!/bin/bash
# make-files.sh - Ask for a directory name, create it if needed,
#                and populate it with 5 empty files.
# Author: <your name>
# Date:   <today>

read -p "Enter directory name: " dirname

if [ -z "$dirname" ]; then
   echo "Error: no name was given."
   exit 1

fi

if [ -d "$dirname" ]; then
   echo "Directory alredy exists: $dirname"
else
   mkdir "$dirname"
   echo "Created directory: $dirname"
fi 

for i in {1..5}; do
    touch "$dirname/file${i}.txt"
done

echo "Created 5 files in $dirname"

ivan@IvanDebian:~/cyber-course$ chmod +x make-files.sh
ivan@IvanDebian:~/cyber-course$ ls -l make-files.sh 
-rwxrwxr-x 1 ivan ivan 526 Sep 23 13:17 make-files.sh

Part 7 - Testing your script
Run the script with three different test cases and document each.

Test 1 - New directory
$ ./make-files.sh
 
Enter a fresh name like test-run-1.

Q16: Paste the output. Then run ls -la test-run-1/ and paste the result.
ivan@IvanDebian:~/cyber-course$ ./make-files.sh
Enter directory name: test-run-1    
Created directory: test-run-1
Created 5 files in test-run-1

ivan@IvanDebian:~/cyber-course$ ls -la test-run-1/
total 8
drwxrwxr-x 2 ivan ivan 4096 Sep 23 13:24 .
drwxrwxr-x 3 ivan ivan 4096 Sep 23 13:24 ..
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:24 file1.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:24 file2.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:24 file3.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:24 file4.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:24 file5.txt

Test 2 - Existing directory
Run the script again:

$ ./make-files.sh
 
Enter the same name (test-run-1).

Q17: What does the script say this time? Did it still try to create the 5 files? What happens if a file with the same name already exists - does touch overwrite it, or does something else happen?
ivan@IvanDebian:~/cyber-course$ ./make-files.sh
Enter directory name: test-run-1      
Directory alredy exists: test-run-1
Created 5 files in test-run-1

The `touch` command didn't overwrite the file, and nothing out of the ordinary happened.

Test 3 - Empty input
Run the script again, but just press Enter without typing a name.

Q18: What does the script do?
ivan@IvanDebian:~/cyber-course$ ./make-files.sh
Enter directory name: 
Error: no name was given.

#!/bin/bash
# make-files.sh - Ask for a directory name, create it if needed,
#                and populate it with 5 empty files.
# Author: <your name>
# Date:   <today>

read -p "Enter directory name: " dirname

if [ -z "$dirname" ]; then
   echo "Error: no name was given."
   exit 1

fi

if [ -d "$dirname" ]; then
   echo "Directory alredy exists: $dirname"
else
   mkdir "$dirname"
   echo "Created directory: $dirname"
fi 
read -p "How many files? " count  
for i in $(seq 1 "$count"); do
    touch "$dirname/file${i}.txt"
done

echo "Created $count files in $dirname"


ivan@IvanDebian:~/cyber-course$ ./make-files.sh
Enter directory name: test-run-2
Created directory: test-run-2
How many files? 67
Created 67 files in test-run-2
ivan@IvanDebian:~/cyber-course$ ls -la test-run-2
total 8
drwxrwxr-x 2 ivan ivan 4096 Sep 23 13:39 .
drwxrwxr-x 4 ivan ivan 4096 Sep 23 13:39 ..
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file10.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file11.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file12.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file13.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file14.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file15.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file16.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file17.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file18.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file19.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file1.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file20.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file21.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file22.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file23.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file24.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file25.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file26.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file27.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file28.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file29.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file2.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file30.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file31.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file32.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file33.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file34.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file35.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file36.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file37.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file38.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file39.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file3.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file40.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file41.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file42.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file43.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file44.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file45.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file46.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file47.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file48.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file49.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file4.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file50.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file51.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file52.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file53.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file54.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file55.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file56.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file57.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file58.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file59.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file5.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file60.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file61.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file62.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file63.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file64.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file65.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file66.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file67.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file6.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file7.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file8.txt
-rw-rw-r-- 1 ivan ivan    0 Sep 23 13:39 file9.txt

