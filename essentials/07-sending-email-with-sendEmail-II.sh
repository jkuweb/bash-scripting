#!/bin/bash 

## requirements
## sendEmail && libraries -> apt-get install sendemail libio-socket-ssl-perl libnet-ssleay-perl

SMTPFROM=your_email@gmail.com
SMTPTO=your_email@gmail.com
SMTPSERVER=smtp.googlemail.com:465
SMTPUSER=user
SMTPPASS=your_gmail_pass
SUBJECT="hello"

df -h | grep Filesystem > /temp/diskusage.txt
df -h | grep sda1 >> /tmp/diskusage.txt

sendEmail -f $SMTPFROM -t $SMTPTO -u $SUBJECT -o message-file=/tmp/diskusage.txt -s $SMTPSERVER -xu $SMTPUSER -xp $SMTPPASS -o tls=yes

rm /tmp/diskusage.txt
