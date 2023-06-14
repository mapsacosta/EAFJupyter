#############################
Customizing user environments
#############################

   It is possible to customize the notebook environment using either a conda/mamba environment, or preamble scripts that execute
   before your notebook starts.  
.. contents:: Table of Contents

.. include::
   02_user_script_customization.rst

.. include::
   02_nb_conda_kernels.rst

**********************************************
Pip
**********************************************

It is possible to customize your environment using ``pip install --user``, but requires some additional work.

.. warning::
  The ``PYTHONNOUSERSITE`` environment variable is set by default in your workspace.  This prevents version conflicts
  between user-installed packages and the Jupyter environment.

  You **must** add the following line to ``~/.bash_profile`` and ``~/.preamble/global.sh``
  in order for pip to work properly::
    export -n PYTHONNOUSERSITE

You may wish to set ``PYTHONUSERBASE`` to something other than ``$HOME`` to avoid conflicting packages from
being installed when working in different environments. For example::

     [burt@jupyter ~]$ export -n PYTHONNOUSERSITE

     [burt@jupyter ~]$ cd ~/work1
     [burt@jupyter work1]$ PYTHONUSERBASE=$PWD/.local pip -q install --user numpy==1.24.1

     [burt@jupyter work1]$ cd ~/work2
     [burt@jupyter work2]$ PYTHONUSERBASE=$PWD/.local pip -q install --user numpy==1.21

To work in the work2 environment with NumPy 1.21, one can add the following notebook cell::

     pythonuserbase = "/home/burt/work2/.local"

     import sys
     pyver = f"python{sys.version_info.major}.{sys.version_info.minor}"
     sys.path.append(f"{pythonuserbase}/lib/{pyver}/site-packages")



