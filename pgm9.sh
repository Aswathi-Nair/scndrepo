echo "enter no. of numbers to find avg:"
read i
echo "enter "$i" numbers:"
for (( v=1; v <= $i; v++ ))
do
read n
s=$((s+n))
done
echo "average of "$i" is:"`echo "scale=2; $s/$n" | bc`
