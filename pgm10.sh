echo "enter the limit:"
read n
echo "enter $n numbers:"
for (( i=0; i<n; i++ ))
do
 read l
 a[i]=$l
done

for (( i=1; i<n; i++ ))
do
for (( j=0; j<n-i; j++ ))
do
  if [ ${a[$j]} -gt ${a[$j+1]} ]
  then
     t=${a[$j]}
     a[$j]=${a[$j+1]}
     a[$j+1]=$t
  fi
done
done 
echo "after sorting"
for (( i=0; i<n; i++ ))
do
 echo "${a[$i]}"
 done
echo "enter the element to be searched:"
read s
l=0
f=0
u=`expr $n - 1`
while [ $l -le $u ]
do
  mid=$((((l+u))/2))
  if [ $s -eq ${a[$mid]} ]
  then
     f=1
     break
  elif [ $s -lt ${a[$mid]} ]
  then
     u=`expr $mid - 1`
  else
     l=`expr $mid + 1`
  fi
done
if [ $f -eq 1 ]
then
  echo "number found at " `expr $mid + 1`
else
  echo "not found"
fi
