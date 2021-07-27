#!/bin/bash

echo ===== Bootstrapping
echo This Jupyter notebook was requested by:
echo * Username $NB_USER
echo * UID $NB_UID
echo * GID $NB_GID

echo Initializing krb5 configuration
wget https://authentication.fnal.gov/krb5conf/SL7/krb5.conf --output-document=/etc/krb5.conf
