#!/bin/bash

file descriptor & file handle             file offset
#  pwd    /tmp

#!/bin/bash
FILENAME=out.txt
# Opening file descriptors # 3 for reading and writing
# i.e. ./out.txt
exec 3<>$FILENAME
 
# Write to file
echo "Today is $(date)" >&3
echo "Fear is the path to the dark side. Fear leads to anger. " >&3
echo "Anger leads to hate. Hate leads to suffering." >&3
echo "--- Yoda" >&3
 
 # cat <&9       # no output
 tac <&9      
# close fd # 3
exec 3>&-

