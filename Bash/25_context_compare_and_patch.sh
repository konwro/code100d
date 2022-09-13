#!/bin/bash
# SHOW
# select files
echo "Enter leader filename [FILE1]: "
read FILE1
echo "Enter follower filename [FILE2]: "
read FILE2

# show differences
echo "Showing different lines leader - follower: "
diff --suppress-common-lines -y $FILE1 $FILE2
# optional - show full content side-by-side
shopt -s nocasematch
echo "Show full files content? [Y/N]"
read ANS1
if [ "$ANS1"=='Y' ]; then
    diff --suppress-common-lines -y $FILE1 $FILE2
fi
# PATCH
# create patch
rm new_patch.diff
diff -u $FILE2 $FILE1 > new_patch.diff
# cat new_patch.diff

# show patch
echo "Show patch.diff file? [Y/N]"
read ANS2
if [ "$ANS2"=="Y" ]; then
    cat new_patch.diff
fi

# apply patch
echo "Apply patch to the follower file (FILE2)? [Y/N]"
read ANS3
if [ "$ANS3"="Y" ]; then
    patch $FILE2 < new_patch.diff
fi
# verify - compare files after patching
echo ""
echo "VERSION VERIFICATION:"
diff -s $FILE1 $FILE2
