******************************
Help, something's broken!
******************************

========
There are no python kernels in my launcher!
========

The default kernels (ipykernel and safemode) are missing:

.. image:: img/help_no_launchers.png
  :width: 600
  :alt: Notebook with no kernels

Check to see if you have a ``~/.jupyter/jupyter_config.json`` file; if it is configuring ``CondaKernelSpecManager``,
it will disable all non-conda kernels by default. You can move it out of the way and restart your server.

Otherwise, check to make sure you're not in a rescue notebook.

========
My terminal is using the wrong window size!
========

.. image:: img/reduced_terminal.png
  :width: 600
  :alt: Reduced terminal size

If more than one browser is connected to your notebook, terminal-based applications (emacs, vim, less, etc.)
will use the lowest screen resolution.  Closing the connection from the browser with the lower resolution
will resolve the problem; otherwise, you may need to start a new terminal launcher, or as a last restort, 
restart your server.
