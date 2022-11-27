#!/bin/bash
count=0
converted=0
for f in *.webm; do
    count=`expr $count + 1`
    basename="${f%%.*}"
    newname="${basename}.mp3"
    echo -n "[${f}] ----> [${newname}] ... "
    if [ ! -f "$newname" ]
    then
        ./ffmpeg -i "$f" -vn "$newname" -y -loglevel warning
        converted=`expr $converted + 1`
        echo "done"
    else
        echo "skipped."
    fi
done
echo "----------------------"
echo "${converted} in ${count} files converted."
