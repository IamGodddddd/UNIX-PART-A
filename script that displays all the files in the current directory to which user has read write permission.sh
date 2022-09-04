clear
echo "The name of all files have all permission"
for file in *
do
	if [ -f $file ]
	then
		if [ -r $file -a -w $file -a -r $file ]
	       	then
			ls -l $file
		fi
	fi
done
