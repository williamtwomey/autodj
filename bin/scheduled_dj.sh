#!/bin/bash 
DAY=`date +%a`
HOUR=`date +%H`
#The line below converts '09' into '9'
#in order to conform to the mysql 
#structure (wed9 instead of wed09)
HOUR=`expr $HOUR + 0`
echo "========================="
echo "= Please be Curtious    ="
echo "= and ask before using  ="
echo "= someone else's slot   ="
echo "========================="
echo
echo "Current time:" `date`
echo
COUNT=4
while [ $COUNT -gt 0 ]; do
echo "Time: $HOUR:00"
DJ=`mysql -u readsched -pn0s3sched -e "SELECT dj FROM schedule.schedule WHERE time='$DAY$HOUR';" | grep -v dj`
if [ -z "$DJ" ]; then
echo "DJ: <OPEN>"
else
echo "DJ: "$DJ
fi
echo
HOUR=`expr $HOUR + 1`
COUNT=`expr $COUNT - 1`
done
