.. _dune:

LBNF/DUNE/ProtoDUNE
=====================

.. image:: img/Dune_lbnf_protodune_hub.png
   :height: 225
   :width: 375
   :align: center
   :alt: The LBNF/DUNE/ProtoDUNE server options as displayed on the JupyterHub. The first option is the SL7 Interactive General Purpose Notebook, the second option is the GPU SL7 Interactive (NVIDIA Ampere A100) and the third is the GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU].

|

SL7 Interactive General Purpose Notebook
-----------------------------------------
Image: dune-notebook

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: yum-plugin-priorities   | .. centered:: redhat-lsb-core | .. centered:: cmake3   | .. centered:: libcurl-devel | .. centered:: perl-Digest-MD5  |
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: libX11-devel            | .. centered:: nss_wrapper     | .. centered:: gettext  | .. centered:: gl2ps-devel   | .. centered:: gcc              |
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: osg-wn-client           | .. centered:: xrootd-client   | .. centered:: voms     | .. centered:: subversion    | .. centered:: voms-clients-cpp | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: xrootd-client-libs      | .. centered:: perl-DBD-SQLite | .. centered:: libtool  | .. centered:: ftgl-devel    | .. centered:: gdbm-devel       | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: perl-ExtUtils-MakeMaker | .. centered:: glew-devel      | .. centered:: xz-devel | .. centered:: pcre2-devel   | .. centered:: readline-devel   | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: libjpeg-turbo-devel     | .. centered:: bzip2-devel     | .. centered:: asciidoc | .. centered:: libzstd-devel | .. centered:: texinfo          | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: mesa-libGL-devel        | .. centered:: ncurses-devel   | .. centered:: xmlto    | .. centered:: libffi-devel  | .. centered:: xxhash-devel     | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: libAfterImage-devel     | .. centered:: gcc-c++         | .. centered:: automake | .. centered:: libXi-devel   | .. centered:: libXt-devel      | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: mesa-libGLU-devel       | .. centered:: tk-devel        | .. centered:: swig     | .. centered:: lz4-devel     | .. centered:: perl-Digest-SHA  | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: glibc-devel.i686        | .. centered:: libstdc++.i686  | .. centered:: xxhash   | .. centered:: autoconf      | .. centered:: tcl-devel        | 
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: giflib-devel            | .. centered:: perl-Digest     | .. centered:: HTCondor | .. centered:: binutils      | .. centered:: zstd             |
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+
   | .. centered:: libXmu-devel            | .. centered:: libgcc.i686     | .. centered:: --       | .. centered:: --            | .. centered:: --               |
   +---------------------------------------+-------------------------------+------------------------+-----------------------------+--------------------------------+

GPU SL7 Interactive (NVIDIA Ampere A100) and GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU]
--------------------------------------------------------------------------------------------------
Image: dune-notebook (GPU)

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +------------------------------------------+---------------------------+---------------------------+---------------------+-------------------------+
   | .. centered:: jupyterlab-tensorboard-pro | .. centered:: torchvision | .. centered:: cudatoolkit | .. centered:: cudnn | .. centered:: yum-utils |
   +------------------------------------------+---------------------------+---------------------------+---------------------+-------------------------+
   | .. centered:: matplotlib-base            | .. centered:: nccl        | .. centered:: tqdm        | .. centered:: bokeh | .. centered:: pytorch   |
   +------------------------------------------+---------------------------+---------------------------+---------------------+-------------------------+
   | .. centered:: tensorflow-gpu             | .. centered:: nvcc        | .. centered:: cython      | .. centered:: h5py  | .. centered:: sympy     |
   +------------------------------------------+---------------------------+---------------------------+---------------------+-------------------------+
   | .. centered:: scikit-learn               | .. centered:: ipywidgets  | .. centered:: mpi4py      | .. centered:: numba | .. centered:: scipy     | 
   +------------------------------------------+---------------------------+---------------------------+---------------------+-------------------------+
   | .. centered:: numexpr                    | .. centered:: numpy       | .. centered:: pandas      | .. centered:: pytz  | .. centered:: ipympl    |
   +------------------------------------------+---------------------------+---------------------------+---------------------+-------------------------+
   | .. centered:: scikit-image               | .. centered:: --          | .. centered:: --          | .. centered:: --    | .. centered:: --        |
   +------------------------------------------+---------------------------+---------------------------+---------------------+-------------------------+

CVMFS
------

.. table:: 
   :align: center
   
   +-----------------------------------------+--------------------------------------------+
   | .. centered:: oasis.opensciencegrid.org | .. centered:: fermilab.opensciencegrid.org |
   +-----------------------------------------+--------------------------------------------+
   | .. centered:: dune.opensciencegrid.org  | .. centered:: larsoft.opensciencegrid.org. |
   +-----------------------------------------+--------------------------------------------+


.. include:: notebook-structure-footer.rst
