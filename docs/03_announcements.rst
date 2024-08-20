******************************
Announcements history (from eaf-users mailing list)
******************************

January 2023
============

23 Jan 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------

Subject: **POSTPONED** Re: Downtime scheduled for Wed, 25 Jan 2023 9-5 CST

.. code::

    Hi folks,
    
    We're not quite ready yet to do this work - we've seen some issues with
    the reconfigured network that we want to understand better before
    pushing this to production.
    
    We do have a minor service interruption that will still go forward on
    Wednesday: we will reboot one of the GPU servers on Wednesday to
    reconfigure it with a wider MiG slot (4 vGPU / 40 GB).  If you have a
    GPU server open on Wednesday and you're unlucky enough to be on the
    rebooted server, you may need to restart.
    
    The Triton inference server should scale down instances appropriately
    during the reboot, so active inference jobs may see a brief decrease in
    performance.
    
    I'll send out an updated scheduled downtime for the network
    reconfiguration at a later date.
    
    Thanks,
    
    - B


17 Jan 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------

Subject: Downtime scheduled for Wed, 25 Jan 2023 9-5 CST

.. code-block::
    Hi EAF users,
    
    We're going to schedule a downtime for the EAF all day on Wednesday. 
    Thanks to your feedback, we've noticed that the current configuration 
    incurs a huge network overhead on the faster (100 Gbit) nodes. 
    Unfortunately, changing this configuration will be disruptive.
    
    The facility may appear to be available during this time, but be aware 
    that your notebook/server pod may disappear at any point.  I'll send out 
    an all-clear if the work finishes early.
    
    - B
