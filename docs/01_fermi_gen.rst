.. _fermi:

Fermi Generic AL9
======================

.. image:: img/Generic_hub.png
   :height: 225
   :width: 375
   :align: center
   :alt: The Fermi Generic AL9 server options as displayed on the JupyterHub.
   
|

Basic AL9 Interactive
-----------------------

Packages
~~~~~~~~~~
.. table:: 
   :align: center
   
   +--------------------------------------+-------------------------------+------------------------------+---------------------------+-----------------------------+
   | .. centered:: krb5-workstation       | .. centered:: redhat-lsb-core | .. centered:: make           | .. centered:: nss_wrapper | .. centered:: libXext-devel |
   +--------------------------------------+-------------------------------+------------------------------+---------------------------+-----------------------------+
   | .. centered:: yum-plugin-priorities  | .. centered:: cmake3          | .. centered:: gcc-c++        | .. centered:: HTCondor    | .. centered:: libXpm-devel  | 
   +--------------------------------------+-------------------------------+------------------------------+---------------------------+-----------------------------+
   | .. centered:: xrootd-client-libs     | .. centered:: gcc             | .. centered:: binutils       | .. centered:: gettext     | .. centered:: libXft-devel  |    
   +--------------------------------------+-------------------------------+------------------------------+---------------------------+-----------------------------+
   | .. centered:: voms-client-cpp        | .. centered:: osg-wn-client   | .. centered:: libX11-devel   | .. centered:: voms        | .. centered:: openssl-devel |
   +--------------------------------------+-------------------------------+------------------------------+---------------------------+-----------------------------+
   | .. centered:: xrootd-client          | .. centered:: --              | .. centered:: --             | .. centered:: --          | .. centered:: --            |
   +--------------------------------------+-------------------------------+------------------------------+---------------------------+-----------------------------+


CVMFS
~~~~~~

.. table:: 
   :align: center
   
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: oasis.opensciencegrid.org            | .. centered:: fermilab.opensciencegrid.org | 
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: icarus.opensciencegrid.org           | .. centered:: lariat.opensciencegrid.org   | 
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: minerva.opensciencegrid.org          | .. centered:: minos.opensciencegrid.org    |
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: nova-development.opensciencegrid.org | .. centered:: nova.opensciencegrid.org     | 
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: sbn.opensciencegrid.org              | .. centered:: seaquest.opensciencegrid.org | 
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: gm2.opensciencegrid.org              | .. centered:: larsoft.opensciencegrid.org  |
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: mu2e.opensciencegrid.org             | .. centered:: sbnd.opensciencegrid.org     | 
   +----------------------------------------------------+--------------------------------------------+
   | .. centered:: uboone.opensciencegrid.org           | .. centered:: --                           |
   +----------------------------------------------------+--------------------------------------------+


Rescue AL9 Interactive
-----------------------

EAF offers a 'rescue' notebook which is a lightweight container that allows users to clean up data when Disk usage is too high for the notebook to function.

In the event your storage is full, the server will not be able to start. It should display a message:

.. image:: img/diskfull.png
  :width: 600
  :alt: Disk is full

You will need to go back to the hub control panel, and launch a "rescue" server, listed under Fermilab generic notebooks.
This image has limited CPU and memory resources, and only a Terminal launcher.  In the rescue notebook, your normal
storage area is mounted as ``/tmphome``.  You can remove files to get back under quota as in the example below,
and then start a normal server.

.. code-block:: console

  /usr/bin/id: cannot find name for group ID 5063

  *** RESCUE IMAGE: Your home directory is temporarily mounted at /tmphome ***

  /tmphome > df -h --output=size,used,avail,pcent,target .
   Size  Used Avail Use% Mounted on
   4.0G  4.0G     0 100% /tmphome
  /tmphome > rm bigfile
  /tmphome > df -h --output=size,used,avail,pcent,target .
   Size  Used Avail Use% Mounted on
   4.0G  3.7G  372M  91% /tmphome
  /tmphome >


