Overview
========

``jobsub_lite`` is a wrapper for Condor job submission, intended to be backwards compatible with the actively used options of the past Fermilab jobsub tools, while being smaller and easier to maintain, and handling new requirements (i.e., SciTokens authentication, etc.)


Using ``jobsub_lite`` within EAF Jupyter Notebooks
--------------------------------------------------

With the environment properly configured, ``jobsub_lite`` can be used within Jupyter notebooks to submit jobs. Here's how to use it along with an explanation of the options:

Prerequisites: Authentication
-----------------------------

Before starting with the usage of ``jobsub_lite`` within Jupyter notebooks, it is essential to ensure that you are properly authenticated using Kerberos and have obtained a bearer token through ``htgettoken``. These authentication steps are crucial for securely accessing the services and submitting jobs.

Step 1: Kerberos Authentication
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. **Obtain a Kerberos Ticket**::

     kinit

   You will be prompted to enter your password. Upon successful authentication, a Kerberos ticket will be granted.
Commands
--------

- **Basic Command**: ``jobsub_submit`` is used to submit jobs to the Condor batch system.

    - ``-G`` specifies the group (e.g., DUNE).
    - ``-N`` specifies the number of jobs to submit.

Example Submission Command
^^^^^^^^^^^^^^^^^^^^^^^^^^

::

    jobsub_submit -G dune file:///path_to_executable_file

This command submits a job to the DUNE pool.

Submitting Jobs from a Notebook
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To submit a job from a notebook cell, use the ``!`` syntax to execute shell commands, followed by the ``jobsub_submit`` command with the desired options.

::

    # Submit a job to the DUNE group without specifying a global pool
    !jobsub_submit -G dune -N 10 file:///path_to_executable_file

This command submits 10 jobs to the DUNE group.
For more information visit `Jobsub lite wiki page <https://github.com/fermitools/jobsub_lite/wiki#environment-variables-used-by-jobsub_lite>`_.

Transfer file using ifdh
------------------------

ifdh (Intensity Frontier Data Handling). The ifdh command line tool is widely used in high-energy physics for data handling, particularly for managing file transfers, metadata, and directory structures in grid computing environments.

.. dropdown:: Features

    - **Data Transfer:** Facilitates the efficient transfer of large data sets across various storage systems and sites.
    - **File Management:** Supports operations such as copying, moving, and listing files across diverse storage environments.
    - **Metadata Management:** Allows handling and association of metadata with data files for better organization and retrieval.
Usage Examples
^^^^^^^^^^^^^^

setup ifdh to transfer file
^^^^^^^^^^^^^^^^^^^^^^^^^^^

::

    $ source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    $ setup ifdhc
    $ unsetup cigetcert # Force ifdhc to use the EAF-installed cigetcert
    $ export EXPERIMENT=accel
    $ unset BEARER_TOKEN_FILE # Force ifdhc to generate and use a VOMS proxy

example job script:
^^^^^^^^^^^^^^^^^^^

::

    #!/usr/bin/env bash
    # Make some data
    echo "Test grid copying..." >> testfilegrid
    # Copy data to dCache
    source /cvmfs/fermilab.opensciencegrid.org/products/common/etc/setups.sh
    setup ifdhc
    ifdh cp -D testfilegrid /pnfs/accel/scratch/users/wallbank/
Conclusion
----------

By following these setup instructions, users can leverage the ``jobsub_lite`` command within Jupyter notebooks to submit jobs to the Condor batch system efficiently. This integration enhances the functionality of JupyterHub for computational tasks, allowing for a smoother workflow in research and development projects.

User Documentation
------------------

For additional information, please visit the `official Jobsub lite wiki <https://fifewiki.fnal.gov/wiki/Jobsub_Lite>`_.

Environment Variables Used By ``jobsub_lite``
---------------------------------------------

- **BEARER_TOKEN_FILE**: The path to a valid bearer (access) token file for the user.
- **X509_USER_PROXY**: The path to a valid VOMS-extended X509 proxy certificate for the user.
- **HTGETTOKENOPTS**: Options to pass to underlying token-obtaining/storing code (htgettoken).
- **GROUP/JOBSUB_GROUP**: Experiment/group used to run ``jobsub_lite`` commands. Either this must be set or the ``-G`` must be passed for all commands.
- **JOBSUB_DROPBOX_SERVER_LIST**: A space-separated list of servers hostnames for ``jobsub_lite`` to query for the RCDS dropbox API endpoints.
- **JOBSUB_OUTPUT_URL**: HTTP endpoint used by ``jobsub_lite`` wrapper scripts to send job logs to at the end of a job.
- **JOBSUB_FETCHLOG_URL**: HTTP endpoint used by ``jobsub_lite`` by default to fetch logs.
- **CMTCONFIG**: Legacy environment variable for use with minervasoft job submissions.
- **JOBSUB_POOL_MAP**: JSON information for the ``--global-pool=`` command line option.
- **JOBSUB_EXTRA_JOB_INFO**: Comma-separated values to add as ``--job-info`` script command line options (option also added in #373).
- **JOBSUB_EXTRA_LINES**: Comma-separated values to add as ``--lines`` options.
- **JOBSUB_EXTRA_ENVIRONMENT**: Comma-separated values to add as extra ``--environment`` options.

