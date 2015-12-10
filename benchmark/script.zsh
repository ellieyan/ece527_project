
for bm (div binSearch inSort intFilt intAVG mult rle tHold tea8)
do

  #ls $bm/modified_9_hier
  cp ../run/templates/begin_end.pl $bm/modified_9_hier/
  echo $bm :
  cd $bm/modified_9_hier
  perl begin_end.pl $bm
  cd -

done
