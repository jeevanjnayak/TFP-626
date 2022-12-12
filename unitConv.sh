#!/bin/bash -x

perFeet=12
len=42

feet=$(($len/$perFeet))
inch=$(($len%$perFeet))

echo "$len inch is $feet feet and $inch inch"



