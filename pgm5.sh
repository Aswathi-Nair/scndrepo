echo "Enter a number to start count:"
read n
echo "Count down starts:"
while [ $n -gt 0 ]
do
echo $n
n=`expr $n - 1`
done
