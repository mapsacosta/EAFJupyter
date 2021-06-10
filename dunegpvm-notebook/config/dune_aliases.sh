#!/bin/sh

#source /usr/local/bin/setups.sh
sh -c ". /fnal/ups/etc/setups.sh; setup ups; setup upd; upd install jobsub_client v1_0 -f NULL; ups declare -c jobsub_client v1_0" 

#. /fnal/ups/etc/setups.sh
#setup jobsub_client
#which jobsub_submit

export PS1="[\u@\h \W]\\$ "
echo "
                              NOTICE TO USERS

       This  is a Federal computer (and/or it is directly connected to a
       Fermilab local network system) that is the property of the United
       States Government.  It is for authorized use only.  Users (autho-
       rized or unauthorized) have no explicit or  implicit  expectation
       of privacy.

       Any  or  all uses of this system and all files on this system may
       be intercepted, monitored, recorded,  copied, audited, inspected,
       and  disclosed  to authorized site, Department of Energy  and law
       enforcement personnel, as  well as authorized officials of  other
       agencies,  both  domestic and foreign.  By using this system, the
       user consents to such interception, monitoring, recording,  copy-
       ing,  auditing,  inspection,  and disclosure at the discretion of
       authorized site or Department of Energy personnel.

       Unauthorized or improper use of this system may result in  admin-
       istrative  disciplinary  action and civil and criminal penalties.
       By continuing to use this system you indicate your  awareness  of
       and  consent to these terms and conditions of use.  LOG OFF IMME-
       DIATELY if you do not agree to  the  conditions  stated  in  this
       warning.

       Fermilab  policy  and  rules for computing, including appropriate
       use, may be found at http://www.fnal.gov/cd/main/cpolicy.html
------------------------------------------------------------------------------
            ..:: Powered by the ElasticAF Openshift Kubernetes ::..

       JHub URL: https:///analytics-hub.okddev.fnal.gov/user/${NB_USER}/lab
    Notebook OS: `lsb_release -ds`
    Notebook IP: `hostname -I`

------------------------------------------------------------------------------
   More info DUNE computing : atwork.dunescience.org/computing-coordination
------------------------------------------------------------------------------
"
