******************************
Announcements history (from eaf-users mailing list)
******************************

August 2023
=============

August 11 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Interruption in service: Aug 16, 9-12

.. code::
   Hi EAF users,

    There will be interruptions in service on Wednesday morning as we update
    certificates and switch the outgoing network gateway. We're hoping this
    is transparent, but I can't guarantee that - so please prepare for
    disruption to your work during that time.
    
    We will also move the work originally planned for Thursday (changing
    GIDs for some users) to occur during that timeframe as well.
    
    Thanks,
    - B


August 2 2023 (Maria P. Acosta <macosta@FNAL.GOV>)
------------------------------------------
Subject: Re: Changing GID assignment for EAF notebooks

.. code::
    Dear EAF users,

    Due to the end of summer internships being close, we will re-schedule this change for Thursday, August 17th.

    Maria A.


Subject: Changing GID assignment for EAF notebooks

.. code::
   Dear EAF users,

    On Thursday August 3rd, we will be rolling out a change that may impact file/user permissions. In order to stay consistent, we will be assigning your GID according to FERRY, our centralized user data source, depending on which notebook flavor you pick.
    
    The following group (GID) assignments are going to apply from now on:
    DUNE: dune (9010)
    CMS: us_cms (5063)
    FIFE/Astro: fnalgrid (9767)
    ACCEL-AI: accelai (8754)
    ACORN: accel (8776)
    
    Please note that this restricts the use of notebooks to VOs you are a member of but we don't expect any breaking changes to happen to your current home directories.
    
    For any questions/comments please email eaf_admins@fnal.gov or open a SNOW ticket.


July 2023
=============

July 31 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF is back!

.. code::
    Hi folks,

    The underlying issue has been fixed and the EAF is available again.
    Sorry for the inconvenience!
    
    - B

Subject: EAF currently down

.. code::

    Hi folks,
    
    There was an infrastructure failure over the weekend that is affecting 
    access to the EAF. It is being worked on; I'll send an update to the 
    list when things are back.
    
    - B

July 14 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF: PYTHONNOUSERSITE update

.. code::
   Hi EAF users,

    We know that the global setting of the PYTHONNOUSERSITE environment 
    variable has caused issues for some of you. In particular, if you have 
    installed python packages with "pip install --user", you may have 
    different behavior depending on how you're running (terminal launcher, 
    notebook with ipykernel, notebook with your own conda-installed kernel, 
    etc.)
    
    The solution we proposed here: 
    https://eafjupyter.readthedocs.io/en/latest/02_customization.html#pip
    only caught a subset of these cases.
    
    I came up with a better solution [1]; next week, we'll roll out a change 
    that will automatically include this fix, as well as update the 
    documentation.  If you'd like to test it ahead of time on our dev 
    cluster, please feel free to e-mail me off-list.
    
    Thanks,
    
    - B
    
    ---
    
    [1] On server start, we will check for the existence of the file 
    ~/.python_no_user_site_unset. If it does not exist, we will append
    
    export -n PYTHONNOUSERSITE
    export PATH=${PATH}:~/.local/bin
    
    to your ~/.bash_profile, and also create a python script in 
    ~/.ipython/default_profile/startup that has the same effect. Then we 
    will create ~/.python_no_user_site_unset so that we only do this once. 


June 2023
=============

Jun 1 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Re: Setting PYTHONNOUSERSITE globally

.. code::
    Hi folks,

    This one fell through the cracks, but no longer! We will deploy
    PYTHONNOUSERSITE next week.  (In addition to the e-mail below [02/20], this is
    documented at
    https://eafjupyter.readthedocs.io/en/latest/02_customization.html#pip)
    
    - B

May 2023
=============

May 23 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: FYI: cosmetic changes to server selection screen

.. code::
    Hi folks,

    Just wanted to give you a heads-up - we're rolling out a cosmetic change
    to the server selection screen this afternoon; with the increasing
    complexity of the server types, we needed to add some pulldowns to make
    things more manageable.
    
    There may be a brief interruption to the server selection screen, but it
    should not disrupt your work.
    
    - B


May 9 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Re: EAF downtime, Tuesday May 9

.. code::

   Hi folks,

   We've completed the work we had scheduled for today, so we're
   terminating the downtime early.  Please log in and let us know if you
   see any issues.
    
   - B



May 5 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF downtime, Tuesday May 9

.. code::

    Hi EAF users!
    
    We're scheduling a downtime on Tuesday to reconfigure GPUs to better
    match demand - we will add another 40GB MiG slice and increase the
    number of 20GB MiG slices from 14 to 20. This will come at the expense
    of the less-used 10GB MiG slices, of course.
    
    This reconfiguration will reboot the GPU nodes, possibly multiple times;
    it is also possible that non-GPU worker nodes may also get rebooted.
    
    You may be able to work, but at your own risk - save early and save often!
    
    I will send an e-mail to the list when the downtime concludes - I'm
    cautiously optimistic it will not take the whole day.
    
    Thanks!
    
    - B

February 2023
=============

Feb 23 2023 (Burt Holzman <burt@FNAL.GOV>)
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


Feb 21 2023 (Burt Holzman <burt@FNAL.GOV>)
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


Feb 20 2023 (Burt Holzman <burt@FNAL.GOV>)
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

Jan 23 2023 (Burt Holzman <burt@FNAL.GOV>)
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


Jan 17 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------

Subject: Downtime scheduled for Wed, 25 Jan 2023 9-5 CST

.. code::

    Hi EAF users,
    
    We're going to schedule a downtime for the EAF all day on Wednesday. 
    Thanks to your feedback, we've noticed that the current configuration 
    incurs a huge network overhead on the faster (100 Gbit) nodes. 
    Unfortunately, changing this configuration will be disruptive.
    
    The facility may appear to be available during this time, but be aware 
    that your notebook/server pod may disappear at any point.  I'll send out 
    an all-clear if the work finishes early.
    
    - B

