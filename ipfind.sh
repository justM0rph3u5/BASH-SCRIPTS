#!/bin/bash
val=domain
sale=.domain.net
for value in {1..100}
do

var2=$val$value$sale 
ip=$(ping -c 1 "$var2" | awk -F'[()]' '/PING/{print $2}')
    echo $ip

done
