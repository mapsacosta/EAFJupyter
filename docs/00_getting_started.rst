*********
Getting started - Choosing a Notebook
*********

Each experiment has different notebook options when starting a server and are grouped into the following: LBNF/DUNE/ProtoDUNE, FIFE/Neutrinos, ACORN/ACCEL-AI, Cosmic Frontier, CMSLPC, and Fermi Generic SL7. In general, only the notebooks where the user has an associated experiment should be available when selecting which to open. Users will also have access to the Fermi Generic SL7 notebooks. All of the basic SL7 interactive notebooks inherit from the base image. This is documented in `Base Image`_.  

`CMSLPC`_ - CMS, LHC

`Cosmic Frontier`_ - LSST, MAGIS-100, Mu2e, DES, DarkSide, Holometer

`ACORN/ACCEL-AI`_ - 

`FIFE/Neutrinos`_ - LArIAT, NOvA, MicroBooNE, MINERvA, ICARUS, SBND

`LBNF/DUNE/ProtoDUNE`_ - DUNE, LBNF

`Fermi Generic SL7/CC8`_ - Muon g-2

.. note::

   If you do not have access to your experiment, or have access to an experiment you are not apart of, please contact eaf-users@fnal.gov.

Base Image
---------------
Image: base-notebook

The notebooks that directly inherit from this image are CMSLPC: SL7 Interactive, Cosmic Frontier: SL7 Interactive General Purpose Notebook, ACORN/ACCEL-AI: ACORN CPU Only SL7 Interactive, ACORN/ACCEL-AI: ACORN AIMPS SL7 Interactive, ACORN/ACCEL-AI: L-CAPE CPU Only SL7 Interactive, FIFE/Neutrinos: SL7 Interactive General Purpose Notebook, LBNF/DUNE/ProtoDUNE: SL7 Interactive General Purpose Notebook, and Cosmic Frontier: LSST Notebook (not released yet). 

Packages
~~~~~~~~~

.. table:: 
   :align: center

   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: jupyterlab-system-monitor | .. centered:: krb5-workstation  | .. centered:: krb5-libs | .. centered:: nss wrapper | .. centered:: krb5.conf |
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: fonts-liberation          | .. centered:: json-passwd       | .. centered:: gcc       | .. centered:: gettext     | .. centered:: bzip2     |
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: ca-certificates           | .. centered:: sudo              | .. centered:: locales   | .. centered:: run-one     | .. centered:: wget      |
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: python-requests           | .. centered:: ipywidgets        | .. centered:: tcpdump   | .. centered:: sssd-client | .. centered:: openssl   |
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: jupyterlab-drawio         | .. centered:: emacs             | .. centered:: git       | .. centered:: unzip       | .. centered:: rsync     |
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: typing-extensions         | .. centered:: nano              | .. centered:: vim       | .. centered:: miniforge   | .. centered:: tini      |
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: nb_conda_kernals          | .. centered:: jupyterhub        | .. centered:: notebook  | .. centered:: jupyterlab  | .. centered:: net-tools |
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
   | .. centered:: jupyter_server            | .. centered:: jupyterlab-it     | .. centered:: ssh.conf  | .. centered:: rpm         | .. centered:: --        | 
   +-----------------------------------------+---------------------------------+-------------------------+---------------------------+-------------------------+
