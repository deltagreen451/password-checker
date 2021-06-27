#!/bin/bash

awk 'NR!=1 {print $2}' usrpwords.txt | awk '{ print #removes the first header line and prints password only before passing to check for password strength
    if (length()>7 && /[0-9]/ && /[A-Z]/) #checks for password strength 
        { print "- meets password strength requirement"; } #displays successful password strength check
    else
        { print "- does NOT meet password strength requirement"; } #displays unsuccessful password strength check
    }' #closes awk statement

exit 0 #exits program safely