*********
Using Dask with COFFEA at Fermilab's EAF
*********

In alignment with IRIS-HEP and the USCMS LHC project COFFEA, EAF has deployed a centralized instance of Dask Gateway to enable fast, reliable and distributed python data processing powered by the LPC batch cluster and Openshift Kubernetes.

.. image:: img/eaf-facility.png
  :alt: Named Servers

We have developed a client around Dask Gateway to facilitate user interaction with the Batch cluster. The COFFEA-Dask notebook has the latest version installed.

[![PyPI latest version](https://badge.fury.io/py/htcdaskgateway.svg)](https://badge.fury.io/py/htcdaskgateway)

Instructions
================
* Before you start: Make sure you have an active CMS LPC account. For instructions on how to obtain one please go to the LPC computing [website](https://uscms.org/uscms_at_work/physics/computing/getstarted/getaccount_fermilab.shtml).
* Login to EAF Jupyterhub at [https://analytycs-hub.fnal.gov](https://analytycs-hub.fnal.gov)
* Start your notebook by selecting the “COFFEA-DASK SL7 Interactive” option presented in the CMS section. This environment will have all the libraries needed to interact with our instance of Dask as well as the latest COFFEA version and HTCondor command-line tools.
* Our [example notebook](https://github.com/mapsacosta/eaf-jupyter-tutorials/blob/main/examples/EAF-htcdaskgateway.ipynb) is a good place to start gettng familiar with Dask and Dask Gateway.
* If you have used COFFEA-Casa or other Dask facilities, you will find that EAF is no different and obtaining a `client` is the main difference. To add a new server/notebook, enter a DNS-safe name into the textbox 'Name your server'




```{toctree}
---
maxdepth: 2
caption: Contents:
---
notebooks/EAF-htcdaskgateway.ipynb
```


