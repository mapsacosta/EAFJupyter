*********
Dask at Fermilab's EAF
*********

In alignment with IRIS-HEP and the USCMS LHC project COFFEA, EAF has deployed a centralized instance of Dask Gateway to enable fast, reliable and distributed python data processing powered by the LPC batch cluster and Openshift Kubernetes.

.. image:: img/eaf-facility.png
  :alt: Named Servers

We have developed a client around Dask Gateway to facilitate user interaction with the Batch cluster. The COFFEA-Dask notebook has the latest version installed. If you are interesting in checking out the code or release information, here are the links:
* Source repo: `HTCDaskgateway <https://github.com/mapsacosta/htcdaskgateway>`_
* Releases : `Pypi <https://pypi.org/project/htcdaskgateway/>`_ 

Get Started with Dask
======================

.. warning::
  You MUST have have an active CMS LPC account. For instructions on how to obtain one please go to the LPC computing `website <https://uscms.org/uscms_at_work/physics/computing/getstarted/getaccount_fermilab.shtml>`_.

If you are new to the EAF, be sure to follow the :doc:`Quickstart <index.rst>` for log-in information or :doc:`EAF Access and Accounts <00_user_accounts.rst>` to gain access to the EAF. 

Once logged in, you will need to choose a notebook. Only notebooks with "DASK" in the name will be able to use the HTCondor dask cluster. The following are dask enabled notebooks:
* AL9 Dask (Coffea 0.7.x) [stable] 
* AL8 Dask (Coffea 0.7.x) [stable] 
* SL7 Dask (Coffea 0.7.x) [stable] 
* AL9 Dask (Coffea 2024.x) [devel] 
* AL8 Dask (Coffea 2024.x) [devel] 
* SL7 Dask (Coffea 2024.x) [devel] 

.. image:: img/dask_notebook_options.png
  :alt: Image of the server options with the dask enabled notebooks marked with arrows.

If you are unsure which notebook to use, go to :doc:`Getting started - Choosing a Notebook <00_getting_started.rst>`. These notebooks have coffea pre-installed along with HTCondor command-line tools and libraries necessary for interacting with our instance of dask. 

.. Note::
  You do NOT need to be a coffea user to access dask. These notebooks can be used for other custom environments within the notebooks. Read further for instructions.  



.. toctree::
   :maxdepth: 2
   :caption: Contents:

   notebooks/EAF-htcdaskgateway.ipynb
