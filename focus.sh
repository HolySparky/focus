#!/bin/bash
#To shut down dstport=80, so that you can focus!!!

#Block renren.com
sudo ipfw add 1000 deny ip from any to 58.205.0.0/16
#Block weibo.com
sudo ipfw add 1000 deny ip from any to weibo.com
#Block Feedly.com
sudo ipfw add 1000 deny ip from any to 65.19.0.0/16
#Block SJTU_BBS
sudo ipfw add 1000 deny ip from any to bbs.sjtu.edu.cn
