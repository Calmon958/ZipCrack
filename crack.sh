#!/bin/bash

#Takes two variables: zip file and wordlist
#Check for the two variables
if [ $# -ne 2 ]; then 
 echo "Usage: $0 <zipFile> <wordlist>"
 exit 1
fi

zipfile=$1
wordlist=$2


#check exsistance of zip file
if [ ! -f "$zipfile" ]; then
 echo -e "Error: Zip file '$zipfile' not found.\nCheck the zipfile name and try again"
 exit 1
fi

#check variation lists
if [ ! -f "$wordlist" ]; then
 echo "Error: Wordlist '$wordlist' not found. Try using rockyou.txt"
 exit 1
fi


#Loop through all the passwords one by one
while IFS= read -r password; do
    echo "Trying password: $password"
    
    # Attempt to unzip using the current password
    if unzip -P "$password" -tq "$zipfile" &>/dev/null; then
        echo "Password is: $password"
        exit 0
    fi
done < "$wordlist"

echo "Password not found in the wordlist."
exit 1
