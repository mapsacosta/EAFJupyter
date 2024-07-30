******************************
Activating the ROOT C++ Kernel
******************************

ROOT has its Jupyter kernel! More information `here <https://github.com/jupyter/jupyter/wiki/Jupyter-kernels>`_.

Yet another milestone of the integration plan of ROOT with the Jupyter technology has been reached: ROOT now offers a `Jupyter kernel <https://github.com/root-project/root/tree/master/bindings/jupyroot>`_, which you can use on EAF.

========
Instructions
========

1. Install the kernel. From your notebook terminal:

.. code-block:: console

  jupyter kernelspec install $ROOTSYS/etc/notebook/kernels/root --name=myroot --user
  cd ~/.local/share/jupyter/kernels/myroot

2. Create a 'startup' script ``go.sh`` that looks like:

.. code-block::

   #!/bin/bash
   source /cvmfs/sft.cern.ch/lcg/views/LCG_105_cuda/x86_64-el9-gcc11-opt/setup.sh
   python3.9 -m JupyROOT.kernel.rootkernel "$@"

3. Ensure the script has the right permissions to execute
.. code-block:: console
   chmod +x go.sh

4. Modify ``kernel.json`` in that same directory to point ``argv`` to the kernel startup script. Replace the <username> in the path with your username.

.. code-block::
  {
    "language": "c++",
    "display_name": "My ROOT C++",
    "argv": [
      "/home/<username>/.local/share/jupyter/kernels/myroot/go.sh",
      "-f",
      "{connection_file}"
    ]  
  } 
