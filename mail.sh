#!/bin/bash
FILE="/etc/init.d/postfix"
FILE="/etc/init.d/sendmail"
FILE="/etc/init.d/


## Check if Postfix is installed

echo -e "Checking if Postfix is installed...\n"
POST="/etc/init.d/postfix"


if [ -f $POST ];
then
echo -e "Postfix is Installed!\n"
else
echo -e "Postfix is not installed! yum update and then yum install postfix cyrus-sasl cyrus-imapd\n"
exit 
fi"

## Check if Sendmail is installed

echo -e "Checking if Sendmail is installed...\n"
SEND="/etc/init.d/sendmail"


if [ -f $SEND ];
then
echo -e "Sendmail is Installed!\n"
else
echo -e "Sendmail is not installed! First add yum update and then yum install sendmail sendmail-cf m4\n"
exit 
fi"

## Check if EXIM is installed

echo -e "Checking if Exim is installed...\n"
EXIM="/etc/init.d/exim"


if [ -f $EXIM ];
then
echo -e "Exim is Installed!\n"
else
echo -e "Exim is not installed! First add epel repository and yum update and then yum install exim-mysql -y\n"
exit 
fi"


Number_of_lines=$(sed -n "/^$(date --date='2 hours ago' '+%b %d %H')\\|^$(date --date='1 hours ago' '+%b %d %H')/p"  /var/log/maillog | grep -c "Sent" /var/log/maillog)
echo ${Number_of_lines}
Email_Id="divyanshu.s@mantraventures.com"

if (( ${Number_of_lines} > 1000 ))
then
  mail -s "Mails exceeded over 1000 Check ${hostname} " ${Email_Id}
fi



