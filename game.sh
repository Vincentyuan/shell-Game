#!/bin/bash
checkStatus ( ) {
	if [ $1 -le 0 ]
	then
		return 0 
	else
		return	1 
	fi			
}
echo "write down your name!"
read Person
echo "hi,${Person} has come to the game"
monster_name="roshan"
monster_life=100
monster_physicalAttack=10

man_name=$Person
man_life=100
man_physicalAttack=12

while [ $monster_life -ge 0 -a $man_life -ge 0 ]
do
	monster_life=`expr $monster_life - $man_physicalAttack`
	checkStatus $monster_life	
	if [ $?  ]	
	then 
		echo " $monster_name died $man_name win"
		break	
	fi
	
	man_life=`expr $man_life - $monster_physicalAttack`	
	if [ $man_life -le 0 ]
	then 
		echo "$man_name died $monster_name win"
		break 	
	fi
done

echo "game over"




