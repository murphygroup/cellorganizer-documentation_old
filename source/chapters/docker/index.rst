About CellOrganizer for Docker
******************************

CellOrganizer for Docker is an image with compiled binaries from CellOrganizer functions

- **img2slml**, the top-level function to train generative models of cells, and 
- **slml2img**, the top-level function to generate simulated instances from a trained generative model. 
- **slml2info**, the top-level function to generate a report from information extracted from a single generative model. 
- **slml2report**, the top-level function to generate a report from comparing generative models.
- **slml2slml**, the top-level function to combine models into a single model file.


Installing CellOrganizer for Docker 
***********************************

About Docker
------------

Docker performs operating-system-level virtualization. To learn about Docker and how to use it, click `here <https://docs.docker.com/get-started/#recap-and-cheat-sheet>`_

Setup
^^^^^
The following instructions describe

* How to install Docker, the virtualization engine that will run the container
* How to install Kitematic, a UI for Docker
* How to download the latest cellorganizer-docker image from Docker Hub, i.e. the docker images repository
* How to start a container from the Docker image
* How to connect to the container
* How to run some of the demos included in the container

Source Code
-----------
For convenience, the Docker image can be found in `Docker Hub <https://hub.docker.com/r/murphylab/docker-cellorganizer/>`_ along with links to the Dockerfile. 

The instructions below will show you how to download and use this image.

Installing Docker
-----------------
Before downloading the image and spinning a container, you need to install Docker. Installing Docker is beyond the scope of this document. To learn about Docker Community Edition (CE), click `here <https://www.docker.com/community-edition>`_.

* To install Docker-for-Mac, click `here <https://docs.docker.com/docker-for-mac/install/>`_.
* To install Docker-for-Windows, click `here <https://docs.docker.com/docker-for-windows/install/>`_.

**Download the repository and build the image from Dockerfile using Docker**

Open terminal and enter the commands

	``git clone git@github.com:icaoberg/docker-cellorganizer.git
	cd docker-cellorganizer
	docker build -t murphylab/cellorganizer .``


Running the commands above will build the image locally and will not pull the existing image from the repository. For example, in Ubuntu

.. raw:: html

	<script src="https://asciinema.org/a/193939.js" id="asciicast-193939" async></script>

**Download the most recent image using Docker command line**

Open terminal and enter the command

	``docker pull murphylab/docker-cellorganizer:latest``

Running this command will initiate the download and pull the most recent image of cellorganizer-docker from Docker Hub down to your computer.

.. raw:: html 

	<script src="https://asciinema.org/a/194136.js" id="asciicast-194136" async></script>

Once the download is complete, you can confirm the image was downloaded by entering the command:

	``docker images``

You should see a record of a docker image identified by its repository **murphylabs/cellorganizer** and the tag **latest**.

.. raw:: html

	<script src="https://asciinema.org/a/194138.js" id="asciicast-194138" async></script>

Installing Kitematic
--------------------

The easiest way to download an image and run a container is to use `Kitematic <https://kitematic.com/>`_. Kitematic is a tool for downloading images and running containers.

* To install Kitematic, click `here <https://kitematic.com/docs/>`_.

.. ATTENTION::
   Kitematic is not necessary, but it is recommended to streamline installation and deployment.

**Download the most recent image using Kitematic**

Start Kitematic. It should open a window similar to the screenshot below

.. figure:: kitematic.png
   :align: center

Searching for CellOrganizer should return a container like the image below

.. figure:: ../images/docker-cellorganizer.png
   :align: center
 

Then click *CREATE* to download the image and start a container

.. figure:: ../images/docker-cellorganizer-downloading-image.png
   :align: center
 

Demos
-----

There are several demos included within the CellOrganizer software bundle. These demos are intended to illustrate CellOrganizer's functionality, and should be used to familiarize the user with the input/output format of various top-level functions such as **img2slml** and **slml2img**. 

+----------+------------+-------------+
| Demo     | Training   | Synthesis   |
+==========+============+=============+
| demo2D00 |            | True        |
+----------+------------+-------------+
| demo2D01 | True       |             |
+----------+------------+-------------+
| demo2D02 |            | True        |
+----------+------------+-------------+
| demo2D03 | True       |             |
+----------+------------+-------------+
| demo2D04 | True       |             |
+----------+------------+-------------+
| demo2D05 | True       |             |
+----------+------------+-------------+
| demo3D00 |            | True        |
+----------+------------+-------------+
| demo3D01 |            | True        |
+----------+------------+-------------+
| demo3D03 |            | True        |
+----------+------------+-------------+
| demo3D04 |            | True        |
+----------+------------+-------------+
| demo3D06 |            | True        |
+----------+------------+-------------+
| demo3D07 |            | True        |
+----------+------------+-------------+
| demo3D08 |            | True        |
+----------+------------+-------------+
| demo3D09 |            | True        |
+----------+------------+-------------+
| demo3D11 | True       |             |
+----------+------------+-------------+
| demo3D12 | True       |             |
+----------+------------+-------------+
| demo3D19 | True       |             |
+----------+------------+-------------+
| demo3D20 | True       |             |
+----------+------------+-------------+
| demo3D35 | True       |             |
+----------+------------+-------------+
| demo3D47 |            |             |
+----------+------------+-------------+
