#!/bin/bash

echo ===== Bootstrapping
echo This Jupyter notebook was requested by:
echo "* Username $NB_USER"
echo "* UID $NB_UID"
echo "* GID $NB_GID"

export LD_PRELOAD=libnss_wrapper.so
export NSS_WRAPPER_PASSWD=/etc/sssd/passwd
export NSS_WRAPPER_GROUP=/etc/sssd/group
