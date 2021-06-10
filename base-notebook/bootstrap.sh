#!/bin/bash

echo Boootstrapping this thing...
echo Gathering parameters
echo Username $1
echo UID $2 
echo GID $3

mkdir -p /uscmst1b_scratch/lpc1
mkdir -p /uscms_data/d1
mkdir -p /uscms_data/d2
mkdir -p /uscms_data/d3
mkdir -p /uscms
#mount --internal-only --no-mtab -t nfs cmsnfs1.fnal.gov:/uscms_data/scratch1 /uscmst1b_scratch/lpc1

