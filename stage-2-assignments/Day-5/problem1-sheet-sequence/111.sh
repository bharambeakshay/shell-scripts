l=60
b=40
area=$(($l *$b))
echo "sqft $area"
acres=`awk'BEGIN{print('$area'/43560)}'`
echo "in acres $acres"
num = 25
echo $num
total= $(($num * $acres))
echo "Tota : $total"
