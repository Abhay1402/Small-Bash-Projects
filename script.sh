#!/bin/bash 

# Project - 1 User related info
echo -e "
[1] count the number of logged-in \n
[2] list the names of currently logged-in \n
[3] check groups for current user \n"
read userinput
case $userinput in 
1) 
who --count | grep users
;;
2)
who -q | grep -v users
;;
3)
groups
;;
*)
echo "please enter input"
;;
esac

# Project - 2 Delete the zero sized file
echo -n "enter the directory:- " (BY USING THE -n IT DOES NOT GET CURSOR TO GO TO NEXT LINE)
read name
if [ -d "$name" ]
then
echo "directory exist"
for i in $(find $name -size 0)
do
rm $i 
echo "file deleted"
done
else
echo "directory doesnot exist"
fi

# Project - 3 Processes management system
function inf_loop(){
while true;
do
echo "HELLO FRIENDS"
sleep 1
done
}
inf_loop &
loop_PID=$!
echo "Background process: $loop_PID"
sleep 20
kill -9 $loop_PID
echo "process with PID $loop_PID has been terminated"

# Project - 4 Grep Command Status
function random_script(){
randomnumber=$((RANDOM % 2))
if [ $randomnumber -eq 0 ];
then
echo "Download is completed - true...... "
else
echo "failed - false..."
fi
}
random_script | grep true
returnvalue=$?
echo "The exit status is:- $returnvalue"
if [ $returnvalue -eq 0 ];
then 
echo "we can continue with other process"
else
echo "we get failed with the process and it exit"
fi
