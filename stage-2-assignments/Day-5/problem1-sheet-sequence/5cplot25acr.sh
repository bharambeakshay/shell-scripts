#!/bin/bash -s

echo "lenth in feet"
read length

echo "breadth feet"
read breadth

area=$(($length * $breadth))
echo "area in squarefeet :$area"

area_in_square_meter=`echo "scale=3; $area/10.764" |bc -l` #converting  factor for feet to meter
echo "area in square meter : $area_in_square_meter sqm"

area_in_acre=`echo "scale=3; $area_in_square_meter/4047.000"|bc -l` #sqfeet to acres
echo "Area in acre :$area_in_acre acres"
echo "Enter number of plots"
read num_of_plots
area_of_num_of_plots=`echo "scale=3; $num_of_plots *$area_in_acre" |bc -l`
echo "area of $num_of_plots : $area_of_num_of_plots acres"
