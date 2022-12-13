#!/bin/bash -x

read -p "Enter the value of N: " n
harmonic=0

for ((i=1; i<=n; i++))
do
		harmonic=$(( $harmonic+$(( 1/$i ))))
done

echo $harmonic
