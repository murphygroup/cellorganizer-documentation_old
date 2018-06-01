About CellOrganizer for Docker
******************************

CellOrganizer for Docker is an image with compiled binaries from CellOrganizer functions

- **img2slml**, the top-level function to train generative models of cell, and 
- **slml2img**, the top-level function to generate simulated instances from a trained generative model. 
- **slml2info**, the top-level function to generate a report from information extracted from a single generative model. 
- **slml2report**, the top-level function to generate a report from comparing generative models. 

Installing CellOrganizer for Docker 
***********************************

Setup
-----
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
Before downloading the image and spinning a cotainer, you need to install Docker. Installing Docker is beyond the scope of this document. To learn about Docker Community Edition (CE), click `here <https://www.docker.com/community-edition>`_.

* To install Docker-for-Mac, click `here <https://docs.docker.com/docker-for-mac/install/>`_.
* To install Docker-for-Windows, click `here <https://docs.docker.com/docker-for-windows/install/>`_.


**Download the most recent image using Docker command line**

Open terminal and enter the command

	``docker pull murphylab/cellorganizer:latest``

Running this command will initiate download and pull the most recent image of cellorganizer-docker from Docker Hub down to your computer.

.. figure:: docker-pull.png
   :align: center

Once the download is complete, you can confirm the image was downloaded by entering the command:

	``docker images``

You should see a record of a docker image identified by its repository **murphylabs/cellorganizer** and the tag **latest**.

Installing Kitematic
--------------------

The easiest way to download an image and run a container is to use `Kitematic <https://kitematic.com/>`_. Kitematic is a tool for downloading images and running containers.

* To install Kitematic, click `here <https://kitematic.com/docs/>`_.

.. ATTENTION::
   Kitematic is not necessary but it is reccomended to streamline installation and deployment
 

**Download the most recent image using Kitematic**

Start Kitematic. It should open a window similar to the screenshot below

.. figure:: kitematic.png
   :align: center

Demos included in the distribution
----------------------------------

There are several demos included within the CellOrganizer software bundle. These demos are intended to illustrate CellOrganizer's functionality, and should be used to familiarize the user with the input/output format of various top-level functions such as **img2slml** and **slml2img**. 

.. exec::
   
	print commands.getoutput('python make_tabulate_from_excel.py source/chapters/docker/demos.xlsx "v2.7"')
