#!/bin/bash 

## requirements
## sendEmail && libraries -> apt-get install sendEmail libio-socket-ssl-perl libnet-ssleay-perl

SMTPFROM=your_email@gmail.com
SMTPTO=your_email@gmail.com
SMTPSERVER=smtp.googlemail.com:587
SMTPUSER=user
SMTPPASS=your_gmail_pass
MESSAGEBODY="this is a test."
SUBJECT="hello"

sendEmail -f $SMTPFROM -t $SMTPTO -u $SUBJECT -m $MESSAGEBODY -s $SMTPSERVER -xu $SMTPUSER -xp $SMTPPASS

