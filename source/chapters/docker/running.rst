Running CellOrganizer for Docker 
********************************

Access cellorganizer-docker container interactively
---------------------------------------------------

Make sure Docker is running on your computer. Open Terminal and enter the command:

	``docker run -it murphylab/cellorganizer:latest``

The **docker run** command creates a container instance from our cellorganizer-docker image (**murphylab/cellorganizer:latest**). 

The **-it** option enables us to interactively access the container. The Terminal window now reflects the view within the cellorganizer directory inside our container instance. We have access to all files and directories in the container through Terminal. 

Run a demo that invokes img2slml
--------------------------------

An example of a demo that trains a generative model from a series of .tif image files is **demo2D01**. To run this demo, change your current directory to **/home/cellorganizer/demos/2D/demo2D01** by entering:

	 ``cd /home/cellorganizer/demos/2D/demo2D01``

You should find the shell script **demo2D01.sh**. To run the demo, Enter the command:

	``./demo2D01.sh``

This demo will save a folder **param** containing .mat files as well as a .mat file **lamp2.mat** to the same directory (**/home/cellorganizer/demos/2D/demo2D01**). These .mat files contain information characterizing the trained generative model.

Run a demo that invokes slml2img
--------------------------------

An example of a demo that produces simulated images from a trained generative model is **demo2D02**. To run this demo, change your current directory to **/home/cellorganizer/demos/2D/demo2D02** by entering: 


	``cd /home/cellorganizer/demos/2D/demo2D02``


You should find the shell script **demo2D02.sh**. To run the demo, Enter the command:


	``./demo2D02.sh``


This demo will save a folder **img** containing these simulated images to the same directory.


Exit the container
------------------

To leave the container, enter:

	 ``exit``

You will return to the local directory in which you previously ran: 


	``docker run -it murphylab/cellorganizer:latest``


Export generated data out of the container
------------------------------------------

To export generated data out of the container, we need to know:
	* the container ID
	* the source filepath (i.e. the filepath, within the container filesystem, of the data to be exported)
	* the destination filepath (i.e. the filepath, within our local filesystem, to which we want to export the data)

Then enter the command:

	``docker cp <container_id>  <source_filepath>:<destination_filepath>``

Just after  we have exited a container, We can find its ID by entering:

	``docker ps -a`` 

and looking at the row of information corresponding to the most recently exited container.