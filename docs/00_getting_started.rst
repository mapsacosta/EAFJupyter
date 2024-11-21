*********
Getting started - Choosing a Notebook
*********

Each experiment has different notebook options when starting a server and are grouped into the following: LBNF/DUNE/ProtoDUNE, FIFE/Neutrinos, ACORN/ACCEL-AI, Cosmic Frontier, CMSLPC, and Fermi Generic AL9. In general, only the notebooks where the user has an associated experiment should be available when selecting which to open. Users will also have access to the Fermi Generic AL9 notebooks. All of the basic AL9 interactive notebooks inherit from the `base image`_.

- :ref:`CMSLPC<cms>`- CMS, LHC
- :ref:`Cosmic Frontier<astro>` - LSST, MAGIS-100, DES, DarkSide, Holometer, CDMS, COUPP, Pierre Auger Observatory, Sloan Digital Sky Survey, GammeV
- :ref:`ACORN/ACCEL-AI<accelerator>` -  PIP-II, Test Beam Facility, ILC, LHC Accelerator Program, Muon Collider
- :ref:`FIFE/Neutrinos<fife>` - LArIAT, NOvA, MicroBooNE, MINERvA, ICARUS, SBND, Mu2e, Muon g-2
- :ref:`LBNF/DUNE/ProtoDUNE<dune>` - DUNE, LBNF
- :ref:`Fermi Generic AL9<fermi>` - Everyone

.. note::

   If you do not have access to your experiment, or have access to an experiment you are not a part of, please contact eaf-users@fnal.gov.

Base Image
---------------


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


The notebooks that directly inherit from this image are:

- CMSLPC: AL8/AL9 Interactives (identical to cmslpc) + COFFEa Dask interactives
- Cosmic Frontier: AL9 Interactive notebook + LSST kernel for Jupyter
- ACORN/ACCEL-AI: ACORN AL9 Interactives, Fortran AL9 Interactive, Accel-AI AL9 Interactive
- FIFE/Neutrinos: AL9 Interactive General Purpose Notebook
- LBNF/DUNE/ProtoDUNE: AL9 Interactive General Purpose Notebook


.. include:: notebook-structure-footer.rst
