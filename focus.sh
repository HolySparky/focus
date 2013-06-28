#!/bin/bash
#To shut down dstport=80, so that you can focus!!!
line=`sudo ipfw show | wc`
rule_num=${line:0:8}
echo $rule_num

if [ $rule_num -eq 1 ]
then
#Block renren.com
    sudo ipfw add 1000 deny ip from any to 58.205.0.0/16
#Block weibo.com
    sudo ipfw add 1000 deny ip from any to weibo.com
#Block Feedly.com
    sudo ipfw add 1000 deny ip from any to 65.19.0.0/16
#Block SJTU_BBS
    sudo ipfw add 1000 deny ip from any to bbs.sjtu.edu.cn
else
    echo "Already focused, is there something else distracting you ?"
fi
