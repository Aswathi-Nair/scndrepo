t=0
echo "enter a number:"
read n
s=$n
while [ $n -gt 0 ]
do
 a=`expr $n % 10`
 t=`expr $t \* 10 + $a`
 n=`expr $n / 10`
done
if [ $t -eq $s ]; then
  echo "palindrome"
else
  echo "not palindrome"
fi 
