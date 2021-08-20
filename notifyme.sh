#!/bin/sh

# Input file test1.txt
FILE=test1.txt
# How man seconds before file is deemed "older"
OLDTIME=180		#means after 3 minute it will check the changes in file
# Get current and file times
CURTIME=$(date +%s)
FILETIME=$(stat $FILE -c %Y)
TIMEDIFF=$(expr $CURTIME - $FILETIME)

# Check if file older
if [ $TIMEDIFF -gt $OLDTIME ]; then
   echo "not changed"
else
   echo "file has changed changed"
   echo "this is email form ubnut terminal, there is change in the content of the file" | 
   mail -s "Changes Alert!!!!!" xflow@localhost

fi




#part 2 of the task
#checking if the webserver is installed or not
webser=expr sudo systemctl status apache2
loc=which apache2
if [ loc != "" ]
then
    echo "apache is installed"
else
    echo "apache is not installed"
   # now lets install apache2 if not installed
    #lets update
    sudo apt update
    #install apache2
    sudo apt install apache2
    #allow apache on firewall
    sudo ufw allow 'Apache'
    #after installation check the status
    sudo systemctl status apache2
fi
