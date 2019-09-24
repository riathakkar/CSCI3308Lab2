#Authors: Ria Thakkar
#!/bin/bash

echo "Enter file"
read filename

echo "search "
read criteria
grep $criteria $filename

email="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\."
echo "email count"
grep -c -E -o $email $filename
echo "phone count"
grep -c -E "^([0-9]{3}-[0-9]{3}-[0-9]{4})" $filename
grep -c -E "303-[0-9]{3}-[0-9]{4}" $filename
grep "\b[A-Za-z0-9._%+-]+@geocities.com" $filename >> email_results.txt
