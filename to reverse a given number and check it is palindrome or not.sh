clear
echo "Enter the number"
read num
original=$num
rev=0
while [ $num -gt 0 ]
do
	dig=`expr $num % 10`
	rev=`expr $rev \* 10 + $dig`
	num=`expr $num / 10`
done
echo "REverser is $rev"
if [ $original -eq $rev ]
then
	echo "$original is pallindrome"
else
	echo "$original is not a pallindrome"
fi

