#!/usr/bin/bash

#wget the image and place it
curl -o /tmp/ponies.jpg 'http://www.charmingponyparties.com/1398_op_658x388_op_643x379.jpg'
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/tmp/ponies.jpg"'

#osascript -e "set Volume 5"

#osascript -e 'display dialog "Hi there!" buttons "Hello doctor!" with icon note' &

#while true
#do
  	#say "Testing"
#  	echo "Testing"
#	sleep $(($RANDOM % 57 + 3))
#done  

#ICON_COUNT = echo -n `ls -l *.icns | wc -l`

cd /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources
ICON_FILES=($(ls *.icns))
ICON_COUNT=${#ICON_FILES[@]}
NEW_ICON_FILES=()
ICON_OFFSET=$RANDOM

#echo ${ICON_FILES[@]}
#echo $ICON_COUNT
COUNTER=0

# Need to sudo, can't actually finish
for i in "${ICON_FILES[@]}"
do
	mv ICON_FILES[$COUNTER] ICON_FILES[($COUNTER + ICON_OFFSET) % ]
   	echo "$i"
   	COUNTER=COUNTER+1
    # or do whatever with individual element of the array
done

echo ${NEW_ICON_FILES[*]}