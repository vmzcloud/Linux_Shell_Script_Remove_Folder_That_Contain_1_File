#/bin/bash
for d in /u01/app/oracle/fast_recovery_area/LRMSUAT/dbbackup/*; do
   nfiles=$(ls "$d" | wc -l)
   if [ $nfiles = 1 ]; then
      rm -rf $d
   else
      echo "$d $nfiles exist"
   fi
done
