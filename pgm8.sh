i="y"
while [ $i = "y" ]
do
echo "--SIMPLE CALCULATOR--"
echo "1. ADDITION"
echo "2. SUBTRACTION"
echo "3. MULTIPLICATION"
echo "4. DIVISION"
echo "5. MODULO DIVISION"
echo "enter two numbers:"
read a
read b
echo "choose your operation:"
read ch
 if [ $ch -eq 1 ]
  then
   echo "result:" 
   expr $a + $b

 elif [ $ch -eq 2 ]
  then
   echo "result:" 
   expr $a - $b

 elif [ $ch -eq 3 ]
  then
   echo "result:" 
   expr $a \* $b
 
 elif [ $ch -eq 4 ]
  then
   if [ $b -eq 0 ]; then
     echo "division not possible"
   else
     echo "result:" `echo "scale=2; $a/$b" | bc`
    fi 
 elif [ $ch -eq 5 ]
  then
   echo "result:" 
   expr $a % $b
  fi
echo "Do u want to continue:(y/n)"
read i
if [ $i != "y" ] 
then exit
fi
done
