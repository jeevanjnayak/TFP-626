#!/bin/bash -x

Animal[0]="cat"
Animal[1]="dog"
Animal[2]="cow"
Animal[3]="tiger"
Animal[4]="lion"

echo ${Animal[@]}
Animal[3]="deer"
echo ${Animal[3]}
unset "Animal[4]"
echo ${Animal[@]}
