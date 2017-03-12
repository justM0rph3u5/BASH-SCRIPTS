#! /bin/bash

cat /home/matra/Desktop/ip.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo $output
    fi
done