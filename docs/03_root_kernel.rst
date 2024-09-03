******************************
Activating the ROOT C++ Kernel
******************************

ROOT offers a `Jupyter kernel <https://github.com/root-project/root/tree/master/bindings/jupyroot>`_, which you can use on EAF via CVMFS.

========
Instructions
========

1. Start a terminal launcher and source your CVMFS setup scripts in the usual way.

2. Install the kernel. From the terminal:

.. code-block::

  jupyter kernelspec install $ROOTSYS/etc/notebook/kernels/root --name=myroot --user
  cd ~/.local/share/jupyter/kernels/myroot

3. Create a 'startup' script ``go.sh``, replacing ``<CVMFS setup script>`` with the full path to the CVMFS setup script
   (e.g. ``/cvmfs/sft.cern.ch/lcg/views/LCG_105_cuda/x86_64-el9-gcc11-opt/setup.sh``). If you are unsure of the
   setup script's location, its parent directory may be saved in the ``LCIO`` environment variable.


.. code-block:: console

   #!/bin/bash
   source <CVMFS setup script>
   python3.9 -m JupyROOT.kernel.rootkernel "$@"


3. Ensure the script has the right permissions to execute

.. code-block::

   chmod +x go.sh

4. Modify ``kernel.json`` in that same directory to point ``argv`` to the kernel startup script. Replace the <username> in the path with your username.

.. code-block:: json

  {
    "language": "c++",
    "display_name": "My ROOT C++",
    "argv": [
      "/home/<username>/.local/share/jupyter/kernels/myroot/go.sh",
      "-f",
      "{connection_file}"
    ]  
  } 
