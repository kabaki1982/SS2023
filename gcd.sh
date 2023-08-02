#!/bin/bash
function isNotNumeric() {
  expr "$1" + 1 >/dev/null 2>&1
  if [ $? -ge 2 ]; then
    return 0
  fi
  return 1
}

tempa=$1
tempb=$2
if [ -z "$tempa" ]; then
	echo "引数1が空です！"
elif [ -z "$tempb" ]; then
	echo "引数2が空です！"
elif isNotNumeric ${tempa} ; then
	echo "引数1が数字ではありません！"
elif isNotNumeric ${tempb} ; then
	echo "引数2が数字ではありません！"
else

#echo $tempa
#echo $tempb
remainder=$((tempa  % tempb))
#echo $remainder
while [ $((remainder)) -gt 0 ]
do
#	echo "Loop"
	tempa=$tempb
	tempb=$remainder
	remainder=$((tempa % tempb))
#	echo $remainder
done
#echo "end"
#echo $1
#echo $2
echo "greatest common divisor:$tempb"
fi
