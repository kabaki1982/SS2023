#!/bin/bash

result=$(./gcd.sh 50 25)
if [ $result = "greatest common divisor:25" ]; then
	echo "OK"
else
	echo "NG:1"
	exit 1
fi
result=$(./gcd.sh 60 50)
if [ $result = "greatest common divisor:10" ]; then
        echo "OK"
else
        echo "NG:2"
	exit 1
fi
result=$(./gcd.sh 6a 50)
if [ $result = "引数1が数字ではありません！" ]; then
        echo "OK"
else
        echo "NG:3"
	exit 1
fi
result=$(./gcd.sh 60 5b)
if [ $result = "引数2が数字ではありません！" ]; then
        echo "OK"
else
        echo "NG:4"
	exit 1
fi
exit 0
