#!/bin/bash
#add fix to exercise6-fix here
array=( $@ )
len=${#array[@]}
last=${array[$len-1]}

if [ $HOSTNAME == "server1" ]
then
	dest='server2'
else
	dest='server1'
fi

for i in $(eval echo "{0..$(($len-2))}")
do
script -q -c "scp ${array[i]} $dest:$last" | tee scp$i.log
arg=`echo ${array[i]}|rev | cut -d '/' -f1 | rev `
size=`grep $arg scp$i.log | cut -d '%' -f3 | awk '{print $1}'| tail -1`
sum=$(($sum+$size))
done
echo $sum
rm scp*
rm typescript
