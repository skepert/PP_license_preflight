#!/bin/bash

echo "Pronunciation Power, subkick replacement preflight script"

pathCheck1="/Applications/Pronunciation Power 1.app/Contents/resource/subkick.dcr"
path1="/Applications/Pronunciation Power 1.app/Contents/resource"
path2="/Applications/Pronunciation Power 2.app/Contents/resource"

if [ -e "$pathCheck1" ]
	then
	
		echo "Pronunciation Power is installed"
		mv "$path1/subkick.dcr" "$path1/subkick.2013.dcr"
		mv "$path2/subkick.dcr" "$path2/subkick.2013.dcr"
		
	else
	
		echo "$pathCheck1 does not exist"
		echo "Ending preflight script with error"
		exit 1

fi

echo "Pronunciation Power app is ready for installation of new subkick.dcr"
exit 0
