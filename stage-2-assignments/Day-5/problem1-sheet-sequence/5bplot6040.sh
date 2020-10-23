#!/bin/bash -x
echo "lenth"
read length
echo "breadth"
read breadth
area=$(($length * $breadth))
echo "area in squarefeet :$area"
in_square_meter=`echo "scale=3; $area/10.764" |bc -l`
echo "In square meter : $in_square_meter"

