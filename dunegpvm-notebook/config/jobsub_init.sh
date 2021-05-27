#!/bin/bash

source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setup
source /cvmfs/oasis.opensciencegrid.org/fermilab/products/common/etc/setup
#This establishes a UPS product working area (more about this later)
setup jobsub_client
setup ifdhc
printenv
