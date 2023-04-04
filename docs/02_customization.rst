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

It is possible to customize your environment using ``pip install --user``, but requires some additional steps.

.. warning::
  ``PYTHONNOUSERSITE`` is set by default. It is necessary to either unset the variable via :ref:`Preamble scripts <preamble scripts>`, 
  or to manually set ``PYTHONPATH`` / ``sys.path``.  If you do not unset the environment variable, you may experience confusing
  behavior that ``pip install`` reports success, but ``pip list`` cannot find the package.

It is also *strongly advised* to set ``PYTHONUSERBASE`` to something other than ``$HOME`` to avoid conflicting packages from
being installed when working in different environments. For example::

  [burt@jupyter ~]$ export -n PYTHONNOUSERSITE

  [burt@jupyter ~]$ cd ~/work1
  [burt@jupyter work1]$ PYTHONUSERBASE=$PWD/.local pip -q install --user numpy==1.24.1

  [burt@jupyter work1]$ cd ~/work2
  [burt@jupyter work2]$ PYTHONUSERBASE=$PWD/.local pip -q install --user numpy==1.21

To work in the work2 environment with NumPy 1.21, one can add the following notebook cell::

  import sys
  sys.path.append("work2/.local/lib/python{}.{}/site-packages".format(sys.version_info.major,sys.version_info.minor))



