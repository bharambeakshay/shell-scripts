#!/bin/bash -x
echo "Enter the value in inch"
read inch
feet=`echo "scale=2; $inch/12"|bc -l` # 1 feet=12 inch
echo "$inch inches = $feet feet"

