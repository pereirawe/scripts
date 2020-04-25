##!/bin/bash
read -p "Enter a password: " pass
if test "$pass" = "jared"
then
     echo "Password verified."
else
     echo "Access denied."	
fi