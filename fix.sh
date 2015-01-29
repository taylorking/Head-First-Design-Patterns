#!/bin/bash
for f in `ls *.java`
do
  cat $f | sed s/'package'/'\/\/package'/g > $f.fixed.java
done
mkdir new 
for f in `ls *.fixed.java`
do
#  echo $f
    g=`echo $f | sed s/'.fixed.java'/''/g`
   cp $f new/$g
  rm $f 
done
