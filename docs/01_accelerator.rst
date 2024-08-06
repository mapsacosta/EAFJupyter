ACCEL-AI
==========

There are several types of notebooks available to an ACCEL-AI user. You can choose between CPU and GPU notbooks and L-CAPE and READS notebooks. If you are unsure what notebook to use, see the :doc:`Choosing a Notebook <01_choosing_a_notebook>` page. Each notebook inherits packages from a base notebook, the base notebook will be listed with each image along with the link to it's packages. To see all the OS base images, you can look at the :doc:`Base Images page <01_baseimages>`. Some notebooks also inherit from the other CPU Interactive notebooks, these will be listed as well. 

To learn what packages are in each notebook, select a notebook below:

* `CPU Interactives <cpu notebooks>`
   * `SL7 <sl7 cmslpc>`
   * `SL7 Dask (Coffea 0.7.x) [stable] <sl7 dask coffea stable>`
   * `SL7 Dask (Coffea 2024.x) [devel] <sl7 dask coffea devel>`
* `NVIDIA® A100 GPU <gpu notebooks>`
   * `AL9 - 10GB/20GB/40GB GPU slot <al9 10/20/40 gb>`
   * `AL8 - 10GB/20GB/40GB GPU slot <al8 10/20/40 gb>`
   * `SL7 - 10GB/20GB/40GB GPU slot <sl7 10/20/40 gb>`

.. _cpu notebooks:

CPU Interactives
-----------------
 .. image:: img/CMSLPC_hub.png
   :height: 485
   :width: 375
   :align: center
   :alt: The CMSLPC notebook options as displayed on the JupyterHub. The first option is the SL7 Interactive, the second option is COFFEA-DASK SL7 Interactive, the third option is GPU SL7 Interactive (NVIDIA Ampere A100), and the fourth option is GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU].

.. note::
   The TESTING notebooks are for developer use only, unless you have explicit permission to use them. If you think you need to use a TESTING notebook, contact us via :doc:`slack or email <index>`. 

.. _al9 cmslpc:

AL9
~~~~~~~~~
Base Image: :ref:`OS AL9 <al9 base>`

Usage: General purpose AL9 computer, non-dask, non-coffea 

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _al8 cmslpc:

AL8
~~~~~~~~~
Base Image: :ref:`OS AL8 <al8 base>`

Usage: General purpose AL8 computer, non-dask, non-coffea 

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _al9 dask coffea stable:

AL9 Dask (Coffea 0.7.x) [stable]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Images: :ref:`OS AL9 <al9 base>`, :ref:`AL9 CMSLPC <al9 cmslpc>`

Usage: General purpose AL9 computer with coffea and dask enabled, coffea version is 0.7.x

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _al8 dask coffea stable:

AL8 Dask (Coffea 0.7.x) [stable]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Image: :ref:`OS AL8 <al8 base>`, :ref:`AL8 CMSLPC <al8 cmslpc>`

Usage: General purpose AL8 computer with coffea and dask enabled, coffea version is 0.7.x

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _al9 dask coffea devel:

AL9 Dask (Coffea 2024.x) [devel]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Images: :ref:`OS AL9 <al9 base>`, :ref:`AL9 CMSLPC <al9 cmslpc>`

Usage: General purpose AL9 computer with coffea and dask enabled, coffea version is 2024.x

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _al8 dask coffea devel:

AL8 Dask (Coffea 2024.x) [devel]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Image: :ref:`OS AL8 <al8 base>`, :ref:`AL8 CMSLPC <al8 cmslpc>`

Usage: General purpose AL8 computer with coffea and dask enabled, coffea version is 2024.x

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _al9 big mem:

AL9-BigMem (max 128 GB)
~~~~~~~~~~~~~~~~~~~~~~~~
Base Image: :ref:`OS AL9 <al9 base>`, :ref:`AL9 CMSLPC <al9 cmslpc>`

Usage: General purpose AL9 computer with larger memory of 128 GB, non-dask, non-coffea

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _sl7 cmslpc:

SL7
~~~~~~~~~

.. warning::
   SL7 notebooks will be deprecated, please use an AL8 or AL9 image.  

Base Image: :ref:`OS SL7 <sl7 base>`

Usage: General purpose SL7 computer, non-dask, non-coffea 

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _sl7 dask coffea stable:

SL7 Dask (Coffea 0.7.x) [stable]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Image: :ref:`OS SL7 <al8 base>`, :ref:`SL7 CMSLPC <sl7 cmslpc>`

Usage: General purpose SL& computer with coffea and dask enabled, coffea version is 0.7.x

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _sl7 dask coffea devel:

SL7 Dask (Coffea 2024.x) [devel]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Images: :ref:`OS SL7 <sl7 base>`, :ref:`SL7 CMSLPC <sl7 cmslpc>`

Usage: General purpose SL7 computer with coffea and dask enabled, coffea version is 2024.x

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _gpu notebooks:

NVIDIA® A100 GPU
-----------------
 .. image:: img/CMSLPC_hub.png
   :height: 485
   :width: 375
   :align: center
   :alt: The CMSLPC notebook options as displayed on the JupyterHub. The first option is the SL7 Interactive, the second option is COFFEA-DASK SL7 Interactive, the third option is GPU SL7 Interactive (NVIDIA Ampere A100), and the fourth option is GPU SL7 Interactive (NVIDIA Ampere A100) [20GB GPU].

.. _al9 10/20/40 gb:

AL9 - 10GB/20GB/40GB GPU slot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Images: :ref:`OS AL9 <al9 base>`, :ref:`AL9 CMSLPC <al9 cmslpc>`

Usage: General purpose AL9 GPU with 10GB/20GB/40GB, non-dask, non-coffea

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _al8 10/20/40 gb:

AL8 - 10GB/20GB/40GB GPU slot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Base Images: :ref:`OS AL8 <al8 base>`, :ref:`AL8 CMSLPC <al8 cmslpc>`

Usage: General purpose AL8 GPU with 10GB/20GB/40GB, non-dask, non-coffea

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0

.. _sl7 10/20/40 gb:

SL7 - 10GB/20GB/40GB GPU slot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. warning::
   SL7 will be deprecated, please use AL8 or AL9 notebooks.    

Base Images: :ref:`OS SL7 <sl7 base>`, :ref:`SL7 CMSLPC <sl7 cmslpc>`

Usage: General purpose SL7 GPU with 10GB/20GB/40GB, non-dask, non-coffea

Packages
`````````

.. csv-table::
   :file: /csvfiles/coffea_image_table.csv
   :widths: 30,30,30,30,30
   :header-rows: 0
