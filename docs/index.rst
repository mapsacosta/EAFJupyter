======================
Welcome to the Fermilab EAF documentation!
======================

The **Fermilab Elastic Analysis Facility** is a kubernetes-based platform providing services for integrated data, software and computational resources to execute one or more elements of scientific analysis workflows for Fermilab experiments and scientists. 
These resources are centrally managed by the Scientific Computing Division at Fermilab as part of the EAF project and generally available for all Fermilab users. Check out the :doc:`userdocs/index` section for more information on environments, general user documentation for the analysis tools ecosystem and navigating the UI.

.. important::

    This project is under active development and is currently in beta testing stage. Please provide feedback and include your project requirements at our `GitHub repo <https://github.com/mapsacosta/EAFJupyter>`_ by opening an issue or email us at `eaf-admins@fnal.gov <mailto:eaf-admins@fnal.gov>`_.


Quickstart
==========

1. Connect to VPN or make sure you are connected to a Fermilab network.

2. Navigate to the JupyterHub home page `https://analytics-hub.fnal.gov <https://analytics-hub.fnal.gov>`_

3. Log in with your SERVICES account credentials.


Exploring
===========

.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: Welcome to EAF

   00_introduction.rst
   00_comp_capabilities.rst
   00_getting_started.rst

.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: Accounts and authentication

   00_user_accounts.rst
   01_user_visitor_student.rst
   01_getting_fnal_accounts.rst
   01_experiment_specific_accounts.rst
   02_cms_accounts.rst

.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: Jupyter - the basics

   00_jupyter_basics.rst
   01_managing_notebooks.rst
   Notebook environments <https://pypi.org>
   01_named_sessions.rst

.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: Jupyter - advanced usage

   00_jupyter_advanced.rst
   01_new_users_python.rst
   01_jupyterhub_terminal.rst
   01_jupyterhub_terminal_howto.rst
   01_tips_tricks.rst
   02_important_links.rst
   02_jupyter_console_ui.rst
   JupyterHub Extensions <https://pypi.org>
   01_troubleshooting.rst
   02_common_issues.rst
   02_contact.rst

.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: EAF DAE (Data Analysis Ecosystem)

   00_eaf_dae.rst
   01_jupyterhub_extensions.rst
   02_preinstalled_libs.rst
   02_github_extension.rst
   02_dask_extension.rst
   01_tutorials.rst
   02_dask_usage_jupyter.rst
   02_dask_errors.rst
   02_coffea_examples.rst
   02_submit_htcondor_cms.rst
   02_batch_dask_cms.rst
   02_local_dask.rst
   02_add_extensions.rst
   02_installing_libraries.rst
   02_fileops_jupyter.rst
   02_fileops_xrootd.rst
   02_network_volumes.rst
   02_persistent_volumes.rst
   02_nb_conda_kernels.rst
   02_user_script_customiztion.rst
