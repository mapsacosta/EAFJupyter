#!/bin/bash

echo Boootstrapping this thing...
export LD_PRELOAD=libnss_wrapper.so

export USER_ID=`id -u`
export GROUP_ID=`id -g`

#cat /usr/local/share/passwd.template
#cat /etc/passwd

#cp /usr/lib64/libnss_wrapper.so ${OUT_DIR}/libnss_wrapper.so
#envsubst < /usr/local/share/passwd.template > ${OUT_DIR}/build.passwd

# Override user ID lookup to cope with running user not in /etc/passwd
if [ x"$NB_UID" != x"0" ]; then
    echo Entered if
    NSS_WRAPPER_PASSWD=/usr/local/share/passwd.template
    NSS_WRAPPER_GROUP=/etc/group
    cat /etc/passwd > $NSS_WRAPPER_PASSWD
    echo "$NB_USER:x:$NB_UID:100::/home/$NB_USER:/bin/bash" >> $NSS_WRAPPER_PASSWD
    export NSS_WRAPPER_PASSWD
    export NSS_WRAPPER_GROUP
    export LD_PRELOAD=libnss_wrapper.so
fi

cat /usr/local/share/passwd.template

fix-permissions /home/$NB_USER
