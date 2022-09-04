clear
str=y
while [ $str==y ]
do
	echo ------------MENU-----------
	echo 1. Count the number vowels in a string
	echo 2. Convert uppercase to lowecase
	echo 3. Convert lowercase to uppercase
	echo 4. Pattern matching in a file
	echo "Enter you choice:"
	read ch
	case $ch in
		1) v=0
			echo "Enter a string"
			read str
			len=`expr length $str`
			while [ $len -gt 0 ]
			do
				ch1=`echo $str | cut -c $len`
				case $ch1 in
					[aeiouAEIOU])v=`expr $v + 1`
			esac
			len=`expr $len - 1`
		done
		echo "Number of vowels is $v";;
	2) echo "Enter a string"
		read str
		echo $str | tr A-Z a-z;;
	3) echo "Enter a STring"
		read str
		echo $str | tr a-z A-Z;;
	4) echo "Enter a filename"
		read fname
		echo "Enter Names and press ctrl + d"
		cat > $fname
		echo "Enter the name to be searched"
		read name
		grep -n $name $fname;;
	*) echo "Invalid choice";;
esac
echo "Do you want to continue y/n :"
read str
done
