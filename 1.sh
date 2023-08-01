echo "hello world"

echo "please enter ur name :"
read name
echo "ur name is:" $name
echo " ur role is :" $1
todaydate=$(date)
echo "todays date is:" $todaydate
listoffiles=$(ls)
echo "the files are:" $listoffiles
echo "number of files is :" $(ls -l | wc -l)

# read file and print each line of file

file=$(cat sedexp2.txt)
for i in $file   # This is the loop variable. During each iteration of the loop, i takes                   on the value of the current item from $file
do
        echo -e "$i\n"
done

#Write a Bash script that checks if a directory exists. If it does not exist, the script should create the directory.

#listoffile= $(ls -l | grep -l "d" )
directories=$(ls -d */)
if [ -d ./learn/sub ]
then
        echo "directory exists"
else
        echo "directory not exists"
fi

echo "the file name is:" $2
numlines=$(cat "$2" | wc -l)
echo "the no.of lines are:" $numlines
echo "enter the url:" $3
file=$3
curl -o output.html "$file"
list=$(ls)
if [ $? -eq 0 ]; then
        echo "ls command executed successfully"
else
        echo "command failed"
fi
echo "enter the number of lines you want to print :"
read num_lines
head -n $num_lines sedexp2.txt
echo "script executed seccussfully"
