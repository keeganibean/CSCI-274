#Keegan Bean
#CSCI 274
#10/21/19
#!/bin/bash
echo "Pick a quote sayer from: "
ls -1
echo "... or enter QUIT to exit the script."

input="input"
while [[ $input != "QUIT" && $input != "quit"  ]] #either or
do
	read input #user input
	if [[ $input != "QUIT" && "$input" != "quit" ]] #either or
	then
		if [[ -d $input ]] #if the directory exits
		then
			echo "$input said..." #print out
			cat quote.txt
			echo -e "\n"
			cd ..

			echo "Pick a quote sayer from: " #directories
			ls -1
			echo "... or enter QUIT to exit the script." #up or lo
		else
			exit 7 #if it doesnt exist exit with code 7
		fi
	fi
done
exit 0
