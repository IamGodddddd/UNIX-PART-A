clear
echo "Enter the name of file1 :"
read file1
echo "Enter contents of $file1 :"
cat > $file1
echo "Enter the name of file2 :"
read file2
echo "Enter the contents of $file2"
cat > $file2
sort -0 $file1 $file1
sort -0 $file2 $file2
echo
clear
echo "The item of $file1 are"
cat $file1
echo "The item of $file2 are"
cat $file2
echo "**********************"
echo "The items that are unique to $file1 are"
comm -23 $file1 $file2
echo "***********************"
echo "The item that are unique to $file2 are"
comm -13 $file1 $file2
echo "***********************"
echo "The items that are common to both are"
comm -12 $file1 $file2
echo "***********************"
