Installing CellOrganizer for Docker 
***********************************

Introduction
============

The first release of CellOrganizer for Docker contains binaries for the two main functions which this document will cover

- **img2slml**, the top-level function to train generative models of cell, and 
- **slml2img**, the top-level function to generate simulated instances from a trained generative model. 

Setup
=====

The following instructions describe

* How to install Docker, the virtualization engine that will run the container
* How to install Kitematic, a UI for Docker
* How to download the latest cellorganizer-docker image from Docker Hub, i.e. the docker images repository
* How to start a container from the Docker image
* How to connect to the container
* How to run some of the demos included in the container

Source Code
===========

The Dockerfile used to construct this Docker image is open source and can be found in `GitHub <https://github.com/icaoberg/docker-cellorganizer>`_.

For convenience, the Docker image can be found in `Docker Hub <https://hub.docker.com/u/murphylab/dashboard/>`_. 

The instructions below will show how to download and use this image.

Installing Docker
=================

Before downloading the image and spinning a cotainer, you need to install Docker. Installing Docker is beyond the scope of this document. To learn about Docker Community Edition (CE), click `here <https://www.docker.com/community-edition>`_.

* To install Docker-for-Mac, click `here <https://docs.docker.com/docker-for-mac/install/>`_.
* To install Docker-for-Windows, click `here <https://docs.docker.com/docker-for-windows/install/>`_.

Download the most recent image using Docker command line
--------------------------------------------------------

Open terminal and enter the command

	``docker pull murphylab/cellorganizer:latest``

Running this command will initiate download and pull the most recent image of cellorganizer-docker from Docker Hub down to your computer.

.. figure:: ../images/docker/docker-pull.png
   :align: center

Once the download is complete, you can confirm the image was downloaded by entering the command:

	``docker images``

You should see a record of a docker image identified by its repository **murphylabs/cellorganizer** and the tag **latest**.

Installing Kitematic
====================

The easiest way to download an image and run a container is to use `Kitematic <https://kitematic.com/>`_. Kitematic is a tool for downloading images and running containers.

* To install Kitematic, click `here <ttps://kitematic.com/docs/>`_.

.. ATTENTION::
   Kitematic is not necessary but it is reccomended to streamline installation and deployment
 
Download the most recent image using Kitematic
----------------------------------------------

Start Kitematic. It should open a window similar to the screenshot below

.. figure:: ../images/docker/kitematic.png
   :align: center

Demos included in the distribution
==================================

There are several demos included within the CellOrganizer software bundle. These demos are intended to illustrate CellOrganizer's functionality, and should be used to familiarize the user with the input/output format of various top-level functions such as **img2slml** and **slml2img**. 

.. exec::
   print commands.getoutput('python make_tabulate_from_excel.py source/chapters/docker/demos.xlsx "v2.7"')

Running CellOrganizer for Docker 
################################

Access cellorganizer-docker container interactively
***************************************************

Make sure Docker is running on your computer. Open Terminal and enter the command:

	``docker run -it murphylab/cellorganizer:latest``

The **docker run** command creates a container instance from our cellorganizer-docker image (**murphylab/cellorganizer:latest**). 

The **-it** option enables us to interactively access the container. The Terminal window now reflects the view within the cellorganizer directory inside our container instance. We have access to all files and directories in the container through Terminal. 

Run a demo that invokes img2slml
********************************

An example of a demo that trains a generative model from a series of .tif image files is **demo2D01**. To run this demo, change your current directory to **/home/cellorganizer/demos/2D/demo2D01** by entering:

	 ``cd /home/cellorganizer/demos/2D/demo2D01``

You should find the shell script **demo2D01.sh**. To run the demo, Enter the command:

	``./demo2D01.sh``

This demo will save a folder **param** containing .mat files as well as a .mat file **lamp2.mat** to the same directory (**/home/cellorganizer/demos/2D/demo2D01**). These .mat files contain information characterizing the trained generative model.

Run a demo that invokes slml2img
********************************

An example of a demo that produces simulated images from a trained generative model is **demo2D02**. To run this demo, change your current directory to **/home/cellorganizer/demos/2D/demo2D02** by entering: 


	``cd /home/cellorganizer/demos/2D/demo2D02``


You should find the shell script **demo2D02.sh**. To run the demo, Enter the command:


	``./demo2D02.sh``


This demo will save a folder **img** containing these simulated images to the same directory.


Exit the container
******************

To leave the container, enter:

	 ``exit``

You will return to the local directory in which you previously ran: 


	``docker run -it murphylab/cellorganizer:latest``


Export generated data out of the container
******************************************

To export generated data out of the container, we need to know:
	* the container ID
	* the source filepath (i.e. the filepath, within the container filesystem, of the data to be exported)
	* the destination filepath (i.e. the filepath, within our local filesystem, to which we want to export the data)

Then enter the command:

	``docker cp <container_id>  <source_filepath>:<destination_filepath>``

Just after  we have exited a container, We can find its ID by entering:

	``docker ps -a`` 

and looking at the row of information corresponding to the most recently exited container.
