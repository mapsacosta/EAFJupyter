.. _preamble scripts:

**************************************************
Preamble scripts
**************************************************

You can customize your EAF Jupyter installation with your own custom preamble scripts.
These scripts are executed when you launch a notebook with the standard python (`ipykernel`) kernel.
We provide a duplicate of the standard python kernel, labelled `safemode`, that ignores the
preamble scripts on launch.

Why would I need this?
======================

It may be useful to set up your environment via setup scripts from CVMFS. For example, you 
may want to execute a script like this::

  source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
  setup dunesw v09_52_00d00 -q e20:prof

Usage
=====

The ipykernel launcher will execute two different preamble scripts in order:

   * ``~/.preamble/global.sh``, which is executed on every notebook flavor.  
   * ``~/.preamble/${NB_PROFILE}.sh``

The second script allows you to customize notebook flavor-dependent scripts, based on the value of
the ``NB_PROFILE`` environment variable.

.. note:: The preamble scripts only run for the "python-ipykernel" launcher. See :ref:`conda preamble scripts <conda user scripts>` for information on running preamble scripts in a conda/mamba environment.

Example
=======

``~/.preamble/global.sh``:

.. code-block:: bash

  export FOO=globally-set
  export BAR=globally-set

``~/.preamble/astro-sl7-unpriv-interactive.sh``:

.. code-block:: bash

  export BAR=locally-set

The second preamble will only run for an astro notebook server; ``BAR`` is overwritten:

.. image:: img/astro-preamble.png
  :width: 400
  :alt: Screencap from Astro notebook

If you execute from an LPC notebook server, the second script does not execute and ``BAR``
remains unchanged:

.. image:: img/lpc-preamble.png
  :width: 400
  :alt: Screencap from LPC notebook

