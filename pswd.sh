echo "What's your login name"
read logname
line=`grep $logname /etc/passwd`
IFS=:
set $line
echo "Username:$1"
echo "User ID: $3"
echo "Group ID: $4"
echo "Common Field:$5"
echo "Home Folder:$6"
echo "Default Shell:$7"

