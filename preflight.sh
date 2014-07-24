#!/bin/bash

echo "Pronunciation Power, subkick replacement preflight script"

pathCheck1="/Applications/Pronunciation Power 1.app/Contents/resource/subkick.dcr"
path1="/Applications/Pronunciation Power 1.app/Contents/resource"
path2="/Applications/Pronunciation Power 2.app/Contents/resource"

year=$(date +"%Y")
year=$(($year - 1))

if [ -e "$pathCheck1" ]
	then
	
		echo "Pronunciation Power is installed"
		mv "$path1/subkick.dcr" "$path1/subkick.$year.dcr"
		mv "$path2/subkick.dcr" "$path2/subkick.$year.dcr"
		
	else
	
		echo "$pathCheck1 does not exist"
		echo "Ending preflight script with error"
		exit 1

fi

echo "Pronunciation Power app is ready for installation of new subkick.dcr"
exit 0
