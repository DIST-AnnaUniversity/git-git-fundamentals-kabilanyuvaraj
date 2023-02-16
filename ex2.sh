#printing statements
echo "EXERCISE 2 "
echo "welcome to os lab"
echo -n "to print "
echo "in the same line"
echo -e "to remove\t backslash character"

#single line comments

#multiline comments
: 'multi
line
comments
'

#while loop
echo -e "\nwhile loop to print 5 numbers "
a=true
count=1
while [ $a ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done


a=1
while [ $a -lt 6 ]
do
echo  "$a"
((a++))
done


#for loop
echo -e "\n\nfor loop to print 5 numbers"
for (( i=0; i<5; i++ ))
do
echo -ne "$i\t"
done

echo -e "\nsum of numbers"
sum=0
for((i=0;i<10;i++))
do
((sum=sum+i))
done
echo $sum


#get input from user
echo -e "\n\nUSER INPUTS"
echo  "enter your name :"
read name
echo "hiii $name"

#if statements
echo -e "\neligible to cast vote"
echo "enter your age :"
read age
if [ $age -gt 18 ];
then
echo "ur eligible"
else
echo "ur not eligible"
fi

#and condition
echo -e "\n\nenter  user name"
read name
echo "enter the pasword"
read pass
if [[ ( $name == "kabi" && $pass == "123" ) ]];
then
echo "valid user"
else 
echo "invalid user"
fi

#or condition
echo -e "\n\nenter  user name"
read name
echo "enter the pasword"
read pass
if [[ ( $name == "kabi" || $name == "admin" ) ]];
then
echo "valid user"
else
echo "invalid user"
fi


#elif statements
echo -e "\n\nenter any number to check its sign"
read no
if [ $no -eq 0 ];
then
echo "enter number is zero"
elif [ $no -lt 0 ];
then
echo "enter number is negative"
else
echo "enter number is positive"
fi


#case statements
echo -e "\n\nenter the no to get the corresponding day :"
read n
case $n in
1)
 echo "sunday"
;;
2)
 echo "monday"
;;
3)
 echo "tuesday"
;;
4)
 echo "wednesday"
;;
5)
 echo "thursday"
;;
6)
 echo "friday"
;;
7)
 echo "saturday"
;;
*)
echo "invalid"
;;
esac

#GET ARGUMENTS FROM COMMAND LINE
echo -e  "\n\nTotal arguments : $#"
echo "1st Argument = $1"
echo "2nd argument = $2"


#COMBINE STRING VARAIABLES
s1="kabilan"
s2="yuvaraj"
echo -e "\n\n$s1$s2"
s3=$s1+$s2
s3+=" has an account on insta"
echo $s3


#GET SUBSTRING OF STRING
s="college of engineering guindy"
substr=${s:6:5}
echo $s64;15;6Mubstr


#ADD TWO NUMBERS
echo -e "\n\nenter the first number"
read x
echo "enter the seond number"
read y
(( sum=x+y ))
echo "the result of addition = $sum"


#CREATE FUNCTION
function display(){
echo -e "\n\nNAME  :kabilan"
echo "ROLL  NO   :5045"
}

display

#CREATE FUNTION WITH PARAMETERS
function add(){
sum=$(($1+$2))
echo -e "\n\nsum = $sum"
}

add 4 5


#PASS RETURN VALUE FROM FUNCTION
function greeting() {
str="Hello, $name"
echo $str
}
echo "Enter your name"
read name
val=$(greeting)
echo "Return value of the function is $val"


#MAKE DIRECTORY
echo -e "\n\nenter directory name"
read name
mkdir $name
echo "DIRECTORY CREATED"


#Make directory by checking existence
echo -e "\n\nenter directory name"
read name
if [ -d "$name" ];
then
echo "directory exist"
else
mkdir $name
echo "DIRECTORY CREATED"
fi


#READ A FILE
echo -e "\n\nenter the file name to read"
read fname
file="$fname"
while read line;
do
echo $line
done < $file


#DELETE A FILE
echo -e "\n\nenter the file to delete"
read fname
rm -i $fname
echo "file $fname deleted"


#APPEND TO FILE
echo -e "\n\nbefore appending the file"
cat read.txt

echo  "added text to the existing file">> read.txt
echo -e "\nafter appending the file"
cat read.txt


# checking existence of a file
echo -e "\n\nenter file name"
read name
if [ -f "$name" ];
then
echo "FILE EXIST"
else
echo " FILE DOES NOT EXIST"
fi

#SEND MAIL
to="kabilanyuvaraj007@gmail.com"
sub="greeting"
msg="welcome to our lab"
sendmail -s $sub $to <<< $msg


#Get Parse Current Date
Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`
echo `date`
echo "Current Date is: $Day-$Month-$Year"
echo "Current Time is: $Hour:$Minute:$Second"


#WAIT COMMAND 
echo "Wait command" &
process_id=$!
wait $process_id
echo "Exited with status $?"


#SLEEP COMMAND
echo "Wait for 5 seconds"
sleep 5
echo "Completed"

