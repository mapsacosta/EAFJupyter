******************************
Announcements history (from eaf-users mailing list)
******************************


February 2023
=============

23 Feb 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF downtime over: in degraded mode

.. code::
   Hi folks,

    We've finished the downtime, but have two ongoing issues:
    CMS data and scratch areas are currently unavailable (accessing them
    hangs forever). We are actively investigating.
    
    Some of the older CPU-only nodes are not configuring their networking
    properly. We've taken them out of the cluster for the time being.
    
    We'll keep you posted - particularly on the first issue.
    
    Thanks for your patience!
    
    - B

21 Feb 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Setting PYTHONNOUSERSITE globally
.. code::

    Hi EAF users!
    
    We had an issue recently that exposed a problem in our environment.
    Users can install python libraries into their path (via pip install)
    that can conflict with Jupyter, which could prevent sessions from
    spawning. Even worse - at install-time, the libraries may not conflict,
    but if the image gets rebuilt/upgraded, that may no longer be the case.
    
    [This is only regarding packages installed with pip (which end up in
    $HOME/.local/lib/python3.9/site-packages); packages that users install
    via conda/mamba are fine.]
    
    I'd like to set PYTHONNOUSERSITE for all sessions by default; this would
    remove $HOME/.local/lib/python3.9/site-packages from the dynamically
    generated PYTHONPATH.
    
    This means that the user needs to manually unset the variable when
    accessing user-installed pip packages. For example, adding the following
    line to .bash_profile and ~/.preamble/global.sh would unset the variable
    for both terminal launchers and notebooks:
    
    export -n PYTHONNOUSERSITE
    
    Please let us know your thoughts and if you're interested in testing
    this configuration.
    
    - B


20 Feb 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------

Subject: Downtime scheduled for Thu, Feb 23, 9-5 CST

.. code::
   Hi EAF users,

    This is the continuation of the previously postponed downtime to
    reconfigure our network stack; here's the message I sent previously:
    
    We're going to schedule a downtime for the EAF all day on Thursday.
    Thanks to your feedback, we've noticed that the current configuration
    incurs a huge network overhead on the faster (100 Gbit) nodes.
    Unfortunately, changing this configuration will be disruptive.
    
    The facility may appear to be available during this time, but be aware
    that your notebook/server pod may disappear at any point.  I'll send out
    an all-clear if the work finishes early.
    - B

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

