network_read=17
network_write=34

w="cdf-network-write"
r="cdf-network-read"

rm $w $r 

for((i=1;i<=100;i++)); do echo "$network_read   $i" >> $r; done
for((i=1;i<=100;i++)); do echo "$network_write   $i" >> $w; done
