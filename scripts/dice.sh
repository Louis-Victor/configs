rolldie(){
	local result=$1 sides=$2
	rolled=$((($RANDOM%$sides)+1))
	eval $result=$rolled
}

for request in $* ; do
	dice=$(echo $request | cut -dd -f1)
	sides=$(echo $request | cut -dd -f2)
	odice=$dice
	#echo "Rolling $dice d $sides"
	sum=0 # reset
	while [ ${dice:=1} -gt 0 ]; do
		rolldie die $sides
		#echo "	dice roll = $die"
		sum=$(($sum+$die))
		dice=$(($dice-1))
	done
	echo "${odice}d$sides: $sum"
done
