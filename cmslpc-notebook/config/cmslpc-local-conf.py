#!/usr/bin/python -E
"""
A script to define user specific HTCondor LOCAL_CONFIG_FILE
"""

import os
import pwd
import sys

# Main function
def main():

    # Reading the effective UID and GID of the user
    uid = os.geteuid()
    gid = os.getegid()

    # Finding the user name based on the uid
    userentry = pwd.getpwuid(uid)

    # Setting the LOCAL_CONFIG_FILE variable appropriately
    print 'LOCAL_CONFIG_FILE=/storage/local/data1/condor/config.d/'+ \
           userentry.pw_name+'.config'

    # Getting the OS information
    sysInfo = os.uname()

    if "el7" in (" ").join(sysInfo):
        desiredOS = "SL7"
    elif "el6" in (" ").join(sysInfo):
        desiredOS = "SL6"
    else:
        desiredOS = "SL7"

    print 'DesiredOS="'+desiredOS+'"'
    print 'SUBMIT_ATTRS = $(SUBMIT_ATTRS) DesiredOS'

if __name__ == '__main__':
    sys.exit(main())
