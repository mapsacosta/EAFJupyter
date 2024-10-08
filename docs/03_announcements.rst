******************************
Announcements history (from eaf-users mailing list)
******************************

September 2024
=============

September 3 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Service interruption on Wed, Sep 11 @ 9 am

.. code-block:: none

   Hi folks,

    We’re going to be doing rolling reboots on September 11, starting at 9 am central.  During this time, the pod hosting your notebook server may be restarted on another node (equivalent to stopping and restarting a server).  This may happen several times depending on where the pod migrates to so please save early and save often.
    
    Thanks!
    
    -B


July 2024
=============

July 24 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: FW: Statement on scientific computing services during the Fermilab closure

.. code-block:: none

   Hi folks,

    Note that EAF is not on the facility list below – so we’ll keep the lights on and fingers crossed, but if anything breaks we will not be looking at it until the lab closing/shutdown is over.
    
    - B


July 15 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Reminder: python 3.10 is now live

.. code-block:: none 

    Hi folks,
    
    Just a reminder that we have updated to py3.10.  If you've installed packages with pip, you may need to reinstall them, since the old packages were installed in $HOME/.local/lib/python3.9, but python will look in $HOME/.local/lib/python3.10 by default now.
    
    If you are frustrated by this issue, please let us know - we can deploy a py3.9 option for a little while to help ease the transition.
    
    - B


July 2 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF: update python to 3.10, openssl to v3

.. code-block:: none

   Hi folks,

    We’d like to bump the default python in the image to version 3.10 and openssl to version 3.  This may also bring along some minor version updates to packages.
    
    We will deploy the updated images next week on Thursday, July 11.
    
    Thanks,
    
    - B
      

June 2024
=============

June 24 2024 (Maria P. Acosta <macosta@FNAL.GOV>)
------------------------------------------
Subject: [Errata] SL7 end of life and EAF

.. code-block:: none

   Dear EAF users,

    Apologies, there was a typo on the initial announcement.
    
    “HTCondor submissions to the LPC and FermiGrid pools will be disabled on Wednesday JUNE 26th, 2024 (Today)”
    
    Maria A.


June 24 2024 (Maria P. Acosta <macosta@FNAL.GOV>)
------------------------------------------
Subject: SL7 end of life and EAF

.. code-block:: none

    Dear EAF users,
    
    As many of you know, Scientific Linux 7 (SL7) is reaching end of life on June 30th, 2024.
    
    We will not push security patches or software updates to our current SL7 offerings after this date and HTCondor submissions to the LPC and FermiGrid pools will be disabled on Wednesday July 26th, 2024. Please plan accordingly.
    
    We encourage you to use a variant of AlmaLinux (AL8/AL9) available in our catalog as we will officially retire our SL7 notebook offerings on July 15th 2024.
    
    If you have any questions or comments, please don’t hesitate to reach out or open a SNOW ticket at your earliest convenience.
    
    Thanks,
    
    Maria A.
    On behalf of the EAF administration team



June 24 2024 (Farrukh A. Khan <fkhan@FNAL.GOV>)
------------------------------------------
Subject: LPC EOS Downtime (Wednesday, June 26)

.. code-block:: none

    Hi everyone,

    This is a reminder for the upcoming LPC EOS downtime on Wednesday, June 26.
    
    During the downtime we plan to upgrade the EOS MGM nodes to Alma Linux 9. The upgrade will start at 8 am and is expected to last until 4 pm. EOS service will be unavailable during this time. Other services such as batch and interactives will remain unaffected.
    
    Thank you for your patience!
    
    Best regards,
    Farrukh Khan
    on behalf of the CMS facility administration team



June 21 2024 (Maria P. Acosta <macosta@FNAL.GOV>)
------------------------------------------
Subject: [SOLVED] Re: Connection issues with registry

.. code-block:: none

   Dear EAF users,

    We have applied a fix for this and are back to normal operations, please let us know if you see any further issues.
    
    We apologize for the inconvenience and thank you for your patience while we worked on it.
    
    Maria A.


June 21 2024 (Maria P. Acosta <macosta@FNAL.GOV>)
------------------------------------------
Subject: Connection issues with registry

.. code-block:: none

   Dear EAF users,

    We are experiencing connectivity issues between EAF and the image registry. Our infrastructure team is working hard to resolve this. We apologize for any inconvenience this may cause and will report back when the issue is sorted out.
    
    Thanks,
    
    Maria A.


May 2024
=============

May 28 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF downtime: June 5, 9-5 (all day)

.. code-block:: none

   Hi folks,

    We're scheduling a downtime all day on Wed, June 5 to improve network routing.  As always, we hope to be done sooner than EOB, in which case we will let you know when the system will be available.
    
    Thanks!
    
    - B


April 2024
=============

April 11 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: New GPUs added to the EAF

.. code-block:: none

   Hi folks,

    We've just added many new GPUs to the EAF.
    
    40 GB slices have increased from 2 to 18
    
    20 GB slices have increased from 20 to 36
    
    10 GB slices have increased from 10 to 24
    
    Please let us know (via tickets or the #eaf-users slack) if there are
    any issues.
    
    - B


March 2024
=============

March 5 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Default notebook choices have changed

.. code-block:: none

    Hi folks,

    With the latest updates, the order of notebook choices has changed; AL9 is now selected by default, and SL7 is further down in the drop down list.  We will also prioritize adding the notebook flavor and OS to the status bar.
    
    Sorry for the inconvenience - I should have sent out an announcement before the defaults changed.
    
    - B
    

February 2024
=============

February 20 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF is back

.. code-block:: none

    Hi folks,
    
    The issues with the underlying storage were resolved, and the EAF should
    once again be available.  You may not need to restart any existing
    notebooks (but may need to rerun any cells that were running when the
    service was interrupted).
    
    - B

February 20 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF currently unavailable

.. code-block:: none

   Hi folks,

    The storage cluster underlying the EAF is having issues this morning. It
    is being investigated and worked on, but for the time being, the login
    screen will display "service unavailable".  If you had notebooks open,
    running cells probably will be interrupted; it's also possible that we
    will need to reboot nodes.
    
    I'll send an update when we know more - we appreciate your patience and
    will get you back up as soon as we can.
    
    - B

February 16 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: /scratch temporarily unavailable; possible reboots on Monday at 10 am

.. code-block:: none

   Hi EAF users,

    Writes and reads are currently hanging to the /scratch filesystem. We
    will restart some services on Monday after 10 am; please save/checkpoint
    your work, since this may shut down your notebook.
    
    Thanks for your patience!
    
    - B


January 2024
=============

January 25 2024 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Removing old SL7/AL8/AL9 images

.. code-block:: none

   Hi everyone,

    Just a heads-up - it's been a month and we haven't received any reports
    of issues with the NEW images; shortly we'll reconfigure to remove the
    OLD option.
    
    Thanks for testing!
    
    - B


December 2023
=============

December 20 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF: Service interruption: Jan 3 at 1 pm CST

.. code-block:: none

   Hi folks,

    We need to reboot the cluster nodes that serve the EAF. If you have an
    active server at that time, it should migrate and respawn - but all
    processes in the current server will be terminated -- meaning that all
    kernels/terminal processes will stop and you'll need to restart. Please
    plan accordingly - thanks!
    
    - B


December 20 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF: New SL7, Alma8, Alma9 images - please test!

.. code-block:: none

   Hi folks,

    We just reconfigured the EAF with new SL7, Alma8, and Alma9 images. We
    refactored our build system in order to do this efficiently. It's
    possible during this process we missed including some software that you
    need; we'd appreciate if you could verify that the new SL7 image is
    working for you.
    To give you time to let us know if there's a problem, we are providing
    both the current/old and new SL7 images available on the server
    selection screen.
    
    The "OLD SL7" is what you've been using up until now.
    The "NEW SL7" is SL7 using our new build process.
    
    As always, drop us a line through the usual channels - servicenow
    tickets and/or the #eaf-users slack channel.  (If you need an invite to
    #eaf-users, send me an e-mail privately).
    
    - B




November 2023
=============

November 16 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF: back to (nearly) full service

.. code-block:: none

   Hi folks,

    We now have all GPUs back in the EAF, monitoring working correctly, and
    CMS areas (nobackup, data, etc) mounted and responding correctly.
    Thanks again for your patience; please contact us if you see any
    remaining issues.
    - B




November 14 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF back up with degraded services

.. code-block:: none

    Hi everyone,

    The EAF is again available, but with some degraded services:
    
       * GPU availability/monitoring is offline
       * Only half the GPUs are available
       * CMS NFS areas (scratch, data1-3) are not available
    
    We are continuing to work these issues.
    
    - B



November 14 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF update: still in maintenance

.. code-block:: none

   Hi folks,

    We are making progress with the migration but are now working through
    some issues with mounting shared filesystems correctly.  I'll send an
    update before the end of the day - hopefully sooner.
    
    - B



November 13 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Extending EAF downtime through tomorrow

.. code-block:: none

   Hi folks,

    Unfortunately, it's taking a lot longer than expected to sync files
    between the old and new subvolumes for EAF. Because of this, we're
    extending the downtime through tomorrow - I'll keep you posted and let
    you know as soon as we're open for business.
    
    Thanks for your patience,
    
    - B


November 10 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: 11/13 downtime reminder

.. code-block:: none

   Hi folks,
    
   Just a reminder that the EAF will be unavailable potentially all day
   (Fermilab time) on Monday.
    
    Thanks!
    - B


October 2023
=============

October 30 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Upcoming degradation (11/3) and downtime (11/13) for EAF

.. code-block:: none

   Hi folks,


    We are in the long-overdue process of migrating to newer (faster, more
    reliable) infrastructure. Unfortunately, we need to migrate one of the
    GPU nodes ahead of time - which is half of the GPUs - in order to avoid
    an extended service outage when we migrate the rest of the system.
    
    11/3 (Friday): we stop scheduling new notebooks to the GPU node, but
    ones that are already running can keep running over the weekend.  I will
    send a mail to affected users on the cordoned node.
    
    11/6 (Monday): degraded GPU service: migration of the GPU node - any
    notebooks running there are terminated.
    
    11/13 (Monday): DOWNTIME: migration of the remainder of the EAF. The EAF
    will be unavailable all day.
    
    As always, we appreciate your patience, and we will strive to restore
    full service as quickly as possible.
    
    - B


October 2 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Issues connecting to the EAF over wifi

.. code-block:: none

    Hi folks,

    There appears to be a network issue between the fgz wireless network and
    the EAF. A ticket with networking is being opened and we will let you
    know when it resolved. As a workaround, you should be able to still
    access the EAF via wired networking, as well as the solutions you would
    use when off-site (VPN or tunnelling).
    
    Thanks for your patience!
    
    - B


Subject: Re: Issues connecting to the EAF over wifi

.. code-block:: none

    And we're back!
    
    It turns out not to be a networking issue at all (sorry: networking 
    folks always get blamed first), but one of the infrastructure 
    controllers in failure mode.  For some reason (which we will 
    investigate), this led to a failure for some connections (but not all).
    
    As always we appreciate your patience.
    
    - B


August 2023
=============

August 11 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: Interruption in service: Aug 16, 9-12

.. code-block:: none

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

.. code-block:: none

    Dear EAF users,

    Due to the end of summer internships being close, we will re-schedule this change for Thursday, August 17th.

    Maria A.


Subject: Changing GID assignment for EAF notebooks

.. code-block:: none

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

.. code-block:: none

    Hi folks,

    The underlying issue has been fixed and the EAF is available again.
    Sorry for the inconvenience!
    
    - B

Subject: EAF currently down

.. code-block:: none

    Hi folks,
    
    There was an infrastructure failure over the weekend that is affecting 
    access to the EAF. It is being worked on; I'll send an update to the 
    list when things are back.
    
    - B

July 14 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF: PYTHONNOUSERSITE update

.. code-block:: none

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

.. code-block:: none

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

.. code-block:: none

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

.. code-block:: none

   Hi folks,

   We've completed the work we had scheduled for today, so we're
   terminating the downtime early.  Please log in and let us know if you
   see any issues.
    
   - B



May 5 2023 (Burt Holzman <burt@FNAL.GOV>)
------------------------------------------
Subject: EAF downtime, Tuesday May 9

.. code-block:: none

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

.. code-block:: none

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

.. code-block:: none

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

.. code-block:: none

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

.. code-block:: none

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

.. code-block:: none

    Hi EAF users,
    
    We're going to schedule a downtime for the EAF all day on Wednesday. 
    Thanks to your feedback, we've noticed that the current configuration 
    incurs a huge network overhead on the faster (100 Gbit) nodes. 
    Unfortunately, changing this configuration will be disruptive.
    
    The facility may appear to be available during this time, but be aware 
    that your notebook/server pod may disappear at any point.  I'll send out 
    an all-clear if the work finishes early.
    
    - B

