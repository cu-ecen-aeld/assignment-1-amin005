#!/bin/bash


writefile=$1
writestr=$2




if [ "$#" -ne 2  ] 
then
echo "please enter paraments  [path] [string]"  
exit 1  
fi
touch "${writefile}"
echo  "${writestr}" > "${writefile}"

if [ $? -eq 0 ]
then
  echo "Done "
  exit 0
else
  echo "failed" >&2
  exit 1
fi
