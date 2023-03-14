******************************
Help, something's broken!
******************************

========
There are no python kernels in my launcher!
========

The default kernels (ipykernel and safemode) are missing:

.. image:: img/help_no_launchers.png
  :width: 400
  :alt: Notebook with no kernels

Check to see if you have a ``~/.jupyter/jupyter_config.json`` file; if it is configuring ``CondaKernelSpecManager``,
it will disable all non-conda kernels by default. You can move it out of the way and restart your server.

Otherwise, check to make sure you're not in a rescue notebook.

