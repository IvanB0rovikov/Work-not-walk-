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

4.3 - See all aliases
$ alias
 
Q9: How many aliases are now defined in your shell? (Include Debian defaults plus your additions.)

4.4 - Reflect briefly
Q10: Pick one of the two aliases you created. In one sentence, why is this a useful shortcut for you specifically?
