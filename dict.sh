#!/bin/bash -x

declare -A animalS

animalS[dog]="bark"
animalS[cats]="meow"
animalS[cow]="moo"
animalS[deer]="sound"
animalS[lion]="roar"
animalS[dog]="barks"

echo ${animalS[dog]}
echo ${animalS[@]}
echo ${!animalS[@]}
echo ${#animalS[@]}
unset animalS[deer]
echo ${#animalS[@]}
