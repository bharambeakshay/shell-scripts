#!/bin/bash -x
for file in  `find -mtime +7`
do echo $file
mv $file backup/
done
