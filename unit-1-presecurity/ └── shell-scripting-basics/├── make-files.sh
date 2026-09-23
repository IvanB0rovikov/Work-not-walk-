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
