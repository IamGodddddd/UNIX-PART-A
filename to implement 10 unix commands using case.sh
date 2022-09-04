clear
str=y
until [ $str ! = y ]
do
	echo -e "\n Menu \n"
	echo -e "\n 1. List of files"
	echo -e "\n 2. Current data"
	echo -e "\n 3. Process state"
	echo -e "\n 4. logged in users"
	echo -e "\n 5. Present working directory"
	echo -e "\n 6. Current month calender"
	echo -e "\n 7. Name of the terminal"
	echo -e "\n 8. Operating system name"
	echo -e "\n 9. Expr command to add"
	echo -e "\n 10. Exit"
	echo -e "\n Enter your choice:"
	read ch
	case $ch in
		1) ls -l;;
		2) date;;
		3) ps;;
		4) who -H;;
		5) pwd;;
		6) cal 08 2022;;
		7) Hy;;
		8) uname;;
		9) expr 5 + 7;;
		10) exit;;
		*) echo "Invalid choice"
			exit;;
	esac
			echo "Do you want to continue Y/N"
			read str
		done

