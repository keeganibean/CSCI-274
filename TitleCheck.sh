#Keegan Bean
#CSCI 274
#!/bin/bash
LC_COLLATE=C

echo "Enter a title: " #prompt
read line

for word in _${line};
do
	#iterate through title
	case ${word} in
		_[a-z]*)
			#if notmal word and lowercase should be capitalized
			echo "'${word:1}' should be capitalized."
			;;
			#words to not be capitalized
		A|An|In|Out|To|From|For|The|Of)
			echo "'${word}' should NOT be capitalized."
			;;
		[a-z]*)
			echo "'${word}' should be capitalized."
			;;
	esac
done #exit

#NOTES
#changed it so it didnt just exit for numbers
#removed if statements
#narrowed down to one case and esac
#set LC Collate


