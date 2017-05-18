if [ $# -ne 1 ]; then 
	echo "which directory" 
	exit 1;
fi 

files=$(find $1 | grep stderr)
rm -r ./tmp/
mkdir tmp 
i=1
for fn in $files; do 
	cat $fn | grep "took" | tail -10000 | awk '{print NR,"\t",$11}' > ./tmp/$i-ok
        i=$(($i + 1)) 
done
cat ./tmp/* | awk '{print NR,"\t",$1,"\t",$2}' > $1.result
min=$(sort -k 3 -n $1.result | head -5 | awk '{print $3}')
max=$(sort -k 3 -n $1.result | tail -5 | awk '{print $3}')
echo "min: $min and max: $max"
