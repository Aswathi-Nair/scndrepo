echo "Enter your name:"
read name
echo "Name:" $name
echo "Current directory:" $PWD
mkdir $name
cd $name
echo "Current directory:" $PWD
echo "Name of a file:"
read fname
echo "Filename:" $fname
touch $fname
echo $name >> $fname
echo "Enter your address"
read add
echo $add >> $fname
echo "contents of "$fname
cat $fname
cd ..
tar -cvf $name.tar $name
