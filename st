#!/bin/bash
st=$1

# 启动命令与进程名不符的请按格式放在这里
[ "$st" = "google-chrome" ] && st=chrome

ps -ef | grep -v "grep\|st $1" | grep "$st" > /dev/null || nohup $1 > /dev/null 2>&1
