echo " enter the director name "
read x1
if [ -d $x1 ]
then 
  echo " folder $x1 exists "
else
  mkdir -p $x1
fi
