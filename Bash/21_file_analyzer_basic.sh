#!/bin/bash

echo "Enter lookup file: "
read IOC_FILE
IOC=$(<$IOC_FILE)

# get file for analysis
echo "Enter file name: "
read FILENAME

# get hexdump
DUMP=$(xxd $FILENAME)
echo "$DUMP" >> output.txt
#cat output.txt

# search for IOCs in analyzed file
echo "interesting dumps found: "
for item in $IOC
do
    echo "$DUMP" | grep $item
done
 
