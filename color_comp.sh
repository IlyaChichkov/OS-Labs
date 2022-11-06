#!/bin/bash
exec 3<>gp2
exec 4<>hcs
while :
do
read -u 3 linegp2  
read -u 4 linehcs 
Lgp2=$(bc -l<<<"scale=4;(61.3899*e(1.1076*l(1000/($linegp2*0.1875))))")
Lhcs=$(bc -l<<<"scale=4;$linehcs*340/2*100")
echo gp2:$Lgp2 cm >> result.txt
echo hcs:$Lhcs cm >> result.txt
done
