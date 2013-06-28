#!/bin/bash
#To shut down dstport=80, so that you can focus!!!

lines=`sudo ipfw show | wc`
rule_num=${lines:0:8}
if [ $rule_num -gt 1 ]
then
    sudo ipfw delete 1000
else
    echo "You are not focusing right now, you still want that hum?"
fi
