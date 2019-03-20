echo "enter your directory name:"
read name
mkdir $name
cd $name
echo "enter filename:"
read fname
touch $fname
cat $fname
echo "enter filename:"
read fname
touch $fname
cat $fname
echo "enter filename:"
read fname
touch $fname
cat $fname
echo "first three columns of f1:"
cut -b 1,2,3 f1
cat f1>>f3
cat f2>>f3
echo "contents of f3:"
cat f3
echo "searching for a string:"
infile=$(cat f3 | grep -c "college")
if [ $infile -eq 0 ]; then
  echo "string is not present"
else
  echo "string is present"
  grep "college" f3
fi
