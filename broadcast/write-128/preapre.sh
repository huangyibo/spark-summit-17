if [ $# -ne 1 ]; then 
	echo "which file"
	exit 1 
fi 

tail -10000 $1 | awk '{print NR,"\t", $2}' > $1-clean
