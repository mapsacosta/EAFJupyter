*********
Getting started - Choosing a Notebook
*********

Each experiment has different notebook options when starting a server and are grouped into the following: LBNF/DUNE/ProtoDUNE, FIFE/Neutrinos, ACORN/ACCEL-AI, Cosmic Frontier, CMSLPC, and Fermi Generic SL7. In general, only the notebooks where the user has an associated experiment should be available when selecting which to open. Users will also have access to the Fermi Generic SL7 notebooks.

`CMSLPC`_ - CMS, LHC

`Cosmic Frontier`_ - LSST, MAGIS-100, Mu2e, DES, DarkSide, Holometer

`ACORN/ACCEL-AI`_ - 

`FIFE/Neutrinos`_ - LArIAT, NOvA, MicroBooNE, MINERvA, ICARUS, SBND

`LBNF/DUNE/ProtoDUNE`_ - DUNE, LBNF

`Fermi Generic SL7/CC8`_ - Muon g-2

.. note::

   If you do not have access to your experiment, or have access to an experiment you are not apart of, please contact eaf-users@fnal.gov.

red:: bokeh                      | .. centered:: tqdm           | .. centered:: cython      | .. centered:: awkward         | .. centered:: h5py         |
   +------------------------------------------+------------------------------+---------------------------+-------------------------------+----------------------------+
   | .. centered:: ipympl                     | .. centered:: scipy          | .. centered:: cupy        | .. centered:: sympy           | .. centered:: nvcc         |
   +------------------------------------------+------------------------------+---------------------------+-------------------------------+----------------------------+

LSST
-----------------------------------------------------
.. important::
   
   This notebook option will be made available in a future update.

Image: lsst-notebook

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +-------------------------------------+--------------------------------+-------------------------------+-----------------------------+--------------------------------+
   | .. centered:: yum-plugin-priorities | .. centered:: krb5-workstation | .. centered:: redhat-lsb-core | .. centered:: binutils      | .. centered:: voms-clients-cpp |
   +-------------------------------------+--------------------------------+-------------------------------+-----------------------------+--------------------------------+
   | .. centered:: xrootd-client-libs    | .. centered:: make             | .. centered:: cmake3          | .. centered:: gcc-c++       | .. centered:: gcc              |
   +-------------------------------------+--------------------------------+-------------------------------+-----------------------------+--------------------------------+
   | .. centered:: lsst-jupyter-kernel   | .. centered:: libXft-devel     | .. centered:: libXext-devel   | .. centered:: openssl-devel | .. centered:: nss_wrapper      |
   +-------------------------------------+--------------------------------+-------------------------------+-----------------------------+--------------------------------+
   | .. centered:: gettext               | .. centered:: osg-wn-client    | .. centered:: xrootd-client   | .. centered:: voms          | .. centered:: libXpm-devel     |
   +-------------------------------------+--------------------------------+-------------------------------+-----------------------------+--------------------------------+
   | .. centered:: HTCondor              | .. centered:: xxhash-libs      | .. centered:: libX11-devel    | .. centered:: cvmfs-lsst    | .. centered:: --               |
   +-------------------------------------+--------------------------------+-------------------------------+-----------------------------+--------------------------------+

CVMFS
------

.. table:: 
   :align: center
   
       +-----------------------------------------+--------------------------------------------+
       | .. centered:: oasis.opensciencegrid.org | .. centered:: fermilab.opensciencegrid.org |
       +-----------------------------------------+--------------------------------------------+
       | .. centered:: admx.opensciencegrid.org  | .. centered:: darkside.opensciencegrid.org |
       +-----------------------------------------+--------------------------------------------+
       | .. centered:: des.opensciencegrid.org.  | .. centered:: sw.lsst.eu                   |
       +-----------------------------------------+--------------------------------------------+



For more detailed information regarding packages, check out the diagram in `EAF Structure and Packages`_. To look at only Cosmic Frontier images, toggle the "Background" and "Cosmic Frontier" layers in the interactive diagram.

CMSLPC
=====================

.. image:: img/CMSLPC_hub.png
   :height: 485
   :width: 375
   :align: center
   :alt: The CMSLPC server options as displayed on the JupyterHub. The first option is the SL7 Interactive, the second option is COFFEA-DASK SL7 Interactive, the third option is GPU SL7 Interactive (NVIDIA Ampere A100), and the fourth option is GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU].

|

Each server opton inherits the packages from the image it was based on. The inheritence is shown in the diagram in `EAF Structure and Packages`_.

SL7 Interactive
-----------------
Image: cmslpc-notebook

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +------------------------+-----------------------------+------------------------------+-----------------------------+----------------------------+
   | .. centered:: make     | .. centered:: cmake3        | .. centered:: gcc-c++        |  .. centered:: voms-client  |  .. centered:: HTCondor    |
   +------------------------+-----------------------------+------------------------------+-----------------------------+----------------------------+
   | .. centered:: gcc      | .. centered:: osg-wn-client | .. centered::  xrootd-client |  .. centered:: eos-client   |  .. centered:: eos-xrootd  |
   +------------------------+-----------------------------+------------------------------+-----------------------------+----------------------------+

COFFEA-DASK SL7 Interactive
------------------------------
Image: cmslpc-coffea-dask

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: conda-build             | .. centered:: ipymp         | .. centered:: aiohttp        | .. centered:: click          | .. centered:: dask            |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: distributed             | .. centered:: pyyaml        | .. centered:: tornado        | .. centered:: numpy          | .. centered:: dask-gateway    |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: scikit-hep-testdata     | .. centered:: iminuit       | .. centered:: uproot         | .. centered:: ipywidgets     | .. centered:: traitlets       |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: dask-labextension       | .. centered:: ca-policy-lcg | .. centered:: cmake          |  .. centered:: xrootd        |  .. centered:: mplhep         |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: dask-jobqueue           | .. centered:: coffea        | .. centered:: vector         |  .. centered:: xgboost       |  .. centered:: hist           |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: python-rapidjson        | .. centered:: lz4           | .. centered:: pytables       |  .. centered:: pyhf          |  .. centered:: brotli         |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: geventhttpclient        | .. centered:: grpcio        | .. centered:: funcx          |  .. centered:: python-xhash  |  .. centered:: fastjet        |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: servicex-databinder     | .. centered:: zstandard     | .. centered:: tritonclient   |  .. centered:: aiostream     |  .. centered:: cabinetry      |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: func-adl-servicex       | .. centered:: protobuf      | .. centered:: tflite_runtime |  .. centered:: tenacity      |  .. centered:: HTCondor       |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+
   | .. centered:: func-adl-uproot         | .. centered:: onnxruntime   | .. centered:: htcdaskgateway |  .. centered:: correctionlib |  .. centered:: tcut-to-qastle |
   +---------------------------------------+-----------------------------+------------------------------+------------------------------+-------------------------------+


GPU SL7 Interactive (NVIDIA Ampere A100) and GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU]
--------------------------------------------------------------------------------------------------
Image: cmslpc-notebook (GPU)

Packages
~~~~~~~~~~
.. table:: 
   :align: center
   
   +---------------------------------------+------------------------------+------------------------------+-------------------------------+------------------------------------+
   | .. centered:: cudatoolkit             | .. centered:: cudnn          | .. centered:: pytorch        | .. centered:: mpi4py          | .. centered:: awkward-cuda-kernals |
   +---------------------------------------+------------------------------+------------------------------+-------------------------------+------------------------------------+
   | .. centered:: tensorflow-gpu          | .. centered:: nccl           | .. centered:: bokeh          | .. centered:: tqdm            | .. centered:: nsight-systems       |
   +---------------------------------------+------------------------------+------------------------------+-------------------------------+------------------------------------+
   | .. centered:: cython                  | .. centered:: akward         | .. centered:: h5py           | .. centered:: ipympl          | .. centered:: nvcc                 |
   +---------------------------------------+------------------------------+------------------------------+-------------------------------+------------------------------------+
   | .. centered:: matplotlib-base         | .. centered:: scikit-image   | .. centered:: scikit-learn   | .. centered:: scipy           | .. centered:: sympy                | 
   +---------------------------------------+------------------------------+------------------------------+-------------------------------+------------------------------------+
   | .. centered:: tensorboard-pro         | .. centered:: cupy           | .. centered::  ---           |  .. centered::  ---           | .. centered::  ---                 |
   +---------------------------------------+------------------------------+------------------------------+-------------------------------+------------------------------------+

CVMFS
------

.. table:: 
   :align: center
   
   +-------------------------------------------+-----------------------------------------+
   | .. centered:: cms.cern.ch                 | .. centered:: oasis.opensciencegrid.org |
   +-------------------------------------------+-----------------------------------------+
   | .. centered:: cms-lpc.opensciencegrid.org | .. centered:: unpacked.cern.ch          |
   +-------------------------------------------+-----------------------------------------+
   
For more detailed information regarding packages, check out the diagram in `EAF Structure and Packages`_. To look at only CMSLPC images, toggle the "Background" and "CMS-LPC" layers in the interactive diagram.

EAF Structure and Packages
==============================

For more detailed server option information, check out this diagram. It lists all of the packages installed and their versions if it was specified in the build. 

.. note::
   
   The server option is not the same as the image, please use the image specified for the server option to navigate this diagram.

.. image:: img/diagram.png
   :height: 950
   :width: 950
   :align: center
   :alt: EAF structure diagram.
 
|

Here is an interactive version of the diagram with layer toggles:

`EAF Interactive Diagram <https://viewer.diagrams.net/?page-id=8oN_c9q_UM9n-6WH7pcY&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=8oN_c9q_UM9n-6WH7pcY#G1A4dTTE_s0VSGPEHtS5nBlI-CGcVstcW_>`_


