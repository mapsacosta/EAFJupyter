.. _accelerator:

ACORN/ACCEL-AI
=====================

.. image:: img/Accel_ai_acorn_hub.png
   :height: 485
   :width: 375
   :align: center
   :alt: The ACORN/ACCEL-AI server options as displayed on the JupyterHub. The first option is the ACORN CPU Only SL7 Interactive, the second option is ACORN AIMPS SL7 Interactive, the third option is L-CAPE CPU Only SL7 Interactive, the fourth option is L-CAPE GPU SL7 Interactive (NVIDIA Ampere A100), the fifth option is L-CAPE GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU], the sixth option is READS CPU Only SL7 Interactive, the seventh option is READS GPU SL7 Interactive (NVIDIA Ampere A100), and the eigth option is READS GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU].

|

ACORN CPU Only SL7 Interactive
-------------------------------
Image: acorn-notebook

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+
   | .. centered:: xorg-x11-proto-devel | .. centered:: libX11-devel | .. centered:: libXau-devel | .. centered:: xorg-x11-xauth | .. centered:: xorg-x11-apps |
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+
   | .. centered:: xorg-x11-server-Xorg | .. centered:: cm-super     | .. centered:: libX11       | .. centered:: gcc            | .. centered:: nvcc          |
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+
   | .. centered:: jupyterlab-drawio    |  .. centered:: ffmpeg      | .. centered:: dvipng       | .. centered:: pytorch        | .. centered:: cpuonly       |
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+
   | .. centered:: jupyterlab-github    | .. centered:: bokeh        | .. centered:: tqdm         | .. centered:: cython         | .. centered:: h5py          |
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+
   | .. centered:: matplotlib-base      | .. centered:: ipympl       | .. centered:: ipywidgets   | .. centered:: numba          | .. centered:: numexpr       |
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+
   | .. centered:: scikit-images        | .. centered:: numpy        | .. centered:: pandas       | .. centered:: pytz           | .. centered:: scipy         |
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+
   | .. centered:: scikit-learn         | .. centered:: cupy         | .. centered:: sympy        | .. centered:: --             | .. centered:: --            |
   +------------------------------------+----------------------------+----------------------------+------------------------------+-----------------------------+


ACORN AIMPS SL7 Interactive
------------------------------
Image: AIMPS-notebook

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +----------------------------+------------------------+---------------------+
   | .. centered:: gcc-gfortran | .. centered:: lfortran | .. centered:: cmake |
   +----------------------------+------------------------+---------------------+

L-CAPE CPU Only SL7 Interactive
---------------------------------
Image: accel-ai-lcape-notebook

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +------------------------------------+----------------------+-----------------------+----------------------------+------------------------+
   | .. centered:: tensorflow-estimator | .. centered:: ffmpeg | .. centered:: cpuonly | .. centered:: scikit-learn | .. centered:: cm-super |
   +------------------------------------+----------------------+-----------------------+----------------------------+------------------------+
   | .. centered:: tensorflow           | .. centered:: pandas | .. centered:: dvipng  | .. centered:: matplotlib   | .. centered:: pytorch  |
   +------------------------------------+----------------------+-----------------------+----------------------------+------------------------+
   | .. centered:: pytables             | .. centered:: h5py   | .. centered:: seaborn | .. centered:: dask         | .. centered:: hvplot   |
   +------------------------------------+----------------------+-----------------------+----------------------------+------------------------+
   | .. centered:: dask-ml              | .. centered:: numpy  | .. centered:: scipy   | .. centered:: sympy        | .. centered:: --       |
   +------------------------------------+----------------------+-----------------------+----------------------------+------------------------+

L-CAPE GPU SL7 Interactive (NVIDIA Ampere A100) and L-CAPE GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU]
---------------------------------------------------------------------------------------------------------------
Image: accel-ai-lcape-notebook (GPU)

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +---------------------------+---------------------+------------------------------+--------------------+
   | .. centered:: cudatoolkit | .. centered:: cudnn | .. centered:: tensorflow-gpu | .. centered:: nvcc |
   +---------------------------+---------------------+------------------------------+--------------------+


READS CPU Only SL7 Interactive
--------------------------------
Image: accel-ai-reads-notebook

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +-------------------------------+--------------------------+----------------------------+----------------------------+------------------------+
   | .. centered:: matplotlib-base | .. centered:: ipywidgets | .. centered:: scikit-image | .. centered:: scikit-learn | .. centered:: cm-super |
   +-------------------------------+--------------------------+----------------------------+----------------------------+------------------------+
   | .. centered:: ffmpeg          | .. centered:: dvipng     | .. centered:: pytorch      | .. centered:: cpuonly      | .. centered:: bokeh    |
   +-------------------------------+--------------------------+----------------------------+----------------------------+------------------------+
   | .. centered:: tqdm            | .. centered:: cython     | .. centered:: h5py         | .. centered:: ipympl       | .. centered:: numba    |
   +-------------------------------+--------------------------+----------------------------+----------------------------+------------------------+
   | .. centered:: numexpr         | .. centered:: numpy      | .. centered:: pandas       | .. centered:: pytz         | .. centered:: scipy    |
   +-------------------------------+--------------------------+----------------------------+----------------------------+------------------------+
   | .. centered:: cupy            | .. centered:: sympy      | .. centered:: --           | .. centered:: --           | .. centered:: --       |
   +-------------------------------+--------------------------+----------------------------+----------------------------+------------------------+

READS GPU SL7 Interactive (NVIDIA Ampere A100) and READS GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU]
--------------------------------------------------------------------------------------------------------------
Image: accel-ai-reads-notebook (GPU)

Packages
~~~~~~~~~~

.. table:: 
   :align: center
   
   +------------------------------------------+---------------------------+---------------------+------------------------------+--------------------+
   | .. centered:: jupyterlab-tensorboard-pro | .. centered:: cudatoolkit | .. centered:: cudnn | .. centered:: tensorflow-gpu | .. centered:: nvcc |
   +------------------------------------------+---------------------------+---------------------+------------------------------+--------------------+

.. include:: notebook-structure-footer.rst
