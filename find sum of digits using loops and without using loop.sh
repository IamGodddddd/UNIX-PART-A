clear
echo "Enter the number"
read num
n=$num
echo "Sum of digits are"
sum=0
while [ $num -gt 0 ]
do
	rem=`expr $num % 10`
	sum=`expr $sum + $rem`
	num=`expr $num / 10`
done
echo "Sum is $sum"
echo "Sum of digits without using loops"
sum1=`expr $n / 100 + $n / 10 % 10 + $n % 10`
echo "Sum is $sum1"
