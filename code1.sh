#!/bin/bash
#Thu Jul 13 15:16:05 CDT 2017

pwd
for file in ./dbg/*.fasta;
do 
	a=$file
	b=$(basename $a | cut -d '.' -f1)
#       echo '>'$b >> result-synteny.txt
	echo $b
	sed "s/NODE/NODE_$b/g" $a >> combinedb    
	
	
done
