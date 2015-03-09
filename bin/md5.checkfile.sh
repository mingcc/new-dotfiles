#!/bin/bash
#
# found : http://linux.vbird.org/linux_basic/0520source_code_and_tarball.php

if [ "$1" == "new" ]; then
    for filename in $(cat important.file); do
        md5sum $filename >> finger1.file
    done
    echo "new finger1.file is created"
    exit 0
fi

if [ ! -f finger1.file ]; then
    echo "file: finger1.file NOT exist."
    exit 1
fi

[ -f finger_new.file ] && rm finger_new.file
for filename in $(cat important.file)
do
    md5sum $filename >> finger_new.file
done


testing=$(diff finger1.file finger_new.file)
if [ "$testing" != "" ]; then
    diff finger1.file finger_new.file | echo "no problem"
fi
