#!/bin/bash

echo ===== Bootstrapping
echo This Jupyter notebook was requested by:
echo "* Username $NB_USER"
echo "* UID $NB_UID"
echo "* GID $NB_GID"

cd /usr/local/bin && git clone https://github.com/tskirvin/json-passwd.git

json-fetchpasswdfile --test 


