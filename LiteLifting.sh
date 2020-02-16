#Keegan Bean
#CSCI 274
#LiteLifting.sh
#This file has XXX characters in it.
echo 'This file has' "$(( $( wc -c < $1 ) - 1 ))" 'characters in it.'

#This file has XXX characters not counting newline.
echo 'This file has' "$(( $(tr -d '\n' < $1 | wc -c) -1 ))" 'characters not counting newline.'

#This file has XXX empty lines.
echo 'This file has' "$(( $(wc -1 < $1) - $(sed '/^$/d' $1 | wc -1) ))" 'empty lines.'

#This file contains XXX alphanumeric characters.
echo 'This file contains' "$( cat $1 | tr -cd [:alnum:] | wc -c )" 'alphanumeric characters.'

#The 4th word of the 3rd line of text is /XXX/
echo 'The 4th word of the 3rd line of text is' "/$( sed -n 3p $1 | awk '{print $4}' )/"

#final logic gate
grep -q 'CapitalIdea' <<< "$( tr '\n' ' ' < $1 | tr -d ' ' )"
if [ $? -eq 0 ];then
	cat $1 | tr '[:upper:]' '[:lower:]' > $1.1c
fi

#NOTES
#use sed to display a certain word
#remove the initial newline 
#arranged to do jobs in order
#alnum for character class
#new syntax to reveal a specific word
