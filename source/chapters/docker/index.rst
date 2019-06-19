About CellOrganizer for Docker
******************************

CellOrganizer for Docker is an image with compiled binaries from the CellOrganizer functions

- **img2slml**, the top-level function to train generative models of cells, and
- **slml2img**, the top-level function to generate simulated instances from a trained generative model.
- **slml2info**, the top-level function to generate a report from information extracted from a single generative model.
- **slml2report**, the top-level function to generate a report from comparing generative models.
- **slml2slml**, the top-level function to combine models into a single model file.

The image also comes with

- `Conda <https://conda.io/en/latest/>`_
- `Jupyter <https://jupyter.org/>`_
- and the Python packages

  - `cellorganizer-python 2.8.1 <https://github.com/murphygroup/cellorganizer-python>`_
  - ipywidgets 7.4
  - `pandas 0.24 <https://pandas.pydata.org/>`_
  - `numexpr 2.6 <https://github.com/pydata/numexpr>`_
  - `matplotlib 3.0 <https://matplotlib.org/>`_
  - `scipy 1.2 <https://www.scipy.org/>`_
  - `seaborn 0.9 <https://seaborn.pydata.org/>`_
  - `scikit-learn 0.20 <https://scikit-learn.org/stable/>`_
  - `scikit-image 0.14 <https://scikit-image.org/>`_
  - `sympy 1.3 <https://www.sympy.org/en/index.html>`_
  - `cython 0.29 <https://cython.org/>`_
  - `patsy 0.5 <https://patsy.readthedocs.io/en/latest/>`_
  - `statsmodels 0.9 <https://www.statsmodels.org/stable/index.html>`_
  - `cloudpickle 0.8 <https://github.com/cloudpipe/cloudpickle>`_
  - dill 0.2
  - dask 1.1
  - numba 0.42
  - bokeh 1.0
  - sqlalchemy 1.3
  - hdf5 1.10
  - `h5py 2.9 <https://www.h5py.org/>`_
  - vincent 0.4
  - `beautifulsoup4 4.7 <https://www.crummy.com/software/BeautifulSoup/bs4/doc/>`_
  - protobuf 3.7
  - xlrd

About Docker
------------

Docker performs operating-system-level virtualization. Docker lets us create and deploy a preconfigured image with the CellOrganizer binaries. This image can be used to spin containers that are ready to use and start testing.

To learn about Docker and how to use it, click `here <https://docs.docker.com/get-started/>`_

About Jupyter
-------------
The `Jupyter Notebook <https://jupyter.org/>`_ is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text.

To learn more about Jupyter, click `here <https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/what_is_jupyter.html>`_

Installing CellOrganizer for Docker
***********************************

Setup
^^^^^
The instructions below describe

* How to install Docker, the virtualization engine that will run the container
* How to install Kitematic, a UI for Docker
* How to download the latest cellorganizer-docker image from Docker Hub, i.e. the docker images repository
* How to start a container from the Docker image
* How to connect to the container
* How to run some of the demos included in the container

Installing Docker
-----------------
Before downloading the image and spinning a container, you need to install Docker. Installing Docker is beyond the scope of this document. To learn about Docker Community Edition (CE), click `here <https://www.docker.com/community-edition>`_.

* To install Docker-for-Mac, click `here <https://docs.docker.com/docker-for-mac/install/>`_.
* To install Docker-for-Windows, click `here <https://docs.docker.com/docker-for-windows/install/>`_.

Installing Kitematic and downloading CellOrganizer for Docker
-------------------------------------------------------------

The easiest way to download an image and run a container is to use `Kitematic <https://kitematic.com/>`_. Kitematic is a tool for downloading images and running containers.

* To install Kitematic, click `here <https://kitematic.com/docs/>`_.

.. ATTENTION::
   Kitematic is not necessary, but it is recommended to streamline installation and deployment.

**Download the most recent image using Kitematic**

Start Kitematic. It should open a window similar to the screenshot below

.. figure:: kitematic.png
   :align: center

Searching for CellOrganizer should return a container like the image below

.. figure:: docker/image_find.png
   :align: center

Then click *CREATE* to download the image and start a container

.. figure:: docker/image_downloading.png
   :align: center

**Download the most recent image from terminal**

For convenience, the Docker image can be found in `Docker Hub <https://hub.docker.com/r/murphylab/cellorganizer-jupyter>`_ along with links to the Dockerfile.

Demos
-----

There are several demos included within the CellOrganizer software bundle. These demos are intended to illustrate CellOrganizer's functionality, and should be used to familiarize the user with the input/output format of various top-level functions such as **img2slml** and **slml2img**. Certains demos have been deprecated and will be removed in future versions of CellOrganizer.

+----------+------------+-------------+-----------+-------------+
|Demo      | Training   | Synthesis   | Other     | Deprecated  |
+==========+============+=============+===========+=============+
| demo2D00 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D01 | True       |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D02 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D03 | True       |             |           |     X       |
+----------+------------+-------------+-----------+-------------+
| demo2D04 | True       |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D05 | True       |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D06 |            |  True       |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D07 |            |  True       |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D08 |  True      |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo2D09 |  True      |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D00 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D01 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D04 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D05 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D06 |            | True        |           |    X        |
+----------+------------+-------------+-----------+-------------+
| demo3D07 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D08 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D09 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D10 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D12 | True       |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D19 | (True)     |             |   Report  |             |
+----------+------------+-------------+-----------+-------------+
| demo3D25 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D47 |            |             |  Model    |             |
+----------+------------+-------------+-----------+-------------+
| demo3D48 | True       |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D50 | True       |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D51 | (True)     |             |  Plot     |             |
+----------+------------+-------------+-----------+-------------+
| demo3D52 | True       |             |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D53 |            | True        |           |             |
+----------+------------+-------------+-----------+-------------+
| demo3D55 |            | (True)      |  Plot     |             |
+----------+------------+-------------+-----------+-------------+
| demo3D57 |            | (True)      |  Plot     |             |
+----------+------------+-------------+-----------+-------------+
| demo3D58 |            | (True)      |           |             |    
+----------+------------+-------------+-----------+-------------+
| demo3D59 |            | (True)      |           |             |
+----------+------------+-------------+-----------+-------------+
