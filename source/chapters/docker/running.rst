Running CellOrganizer for Docker through Jupyter-Notebook
********************************
After the docker image has been created through Kitematic, click the top right hand button to open the Jupyter server. 

This will open a webpage on your browser that is by your local machine. The environment will intially contain Ipython notebooks with preinstalled demos that will run the CellOrganizer binaries.   


Run a demo that invokes img2slml
--------------------------------
An example of a demo that trains a generative model from a series of `.tif` image files is `demo2D01`. To run a demo, simply click the run button at the top of the notebook.

Access cellorganizer-docker container through Terminal
********************************
To open a command line instance of the docker container, click the bottom right button on the Kitematic page. 

The Terminal window now reflects the view within the cellorganizer directory inside our container instance. We have access to all files and directories in the container through `Terminal`.

For example, to interact with the container and find all generative models

.. raw:: html

	<script src="https://asciinema.org/a/ZhXIw9a4aI3Mzw3hH7Qpguzrp.js" id="asciicast-ZhXIw9a4aI3Mzw3hH7Qpguzrp" async></script>

Run a demo that invokes img2slml
--------------------------------
An example of a demo that trains a generative model from a series of `.tif` image files is `demo2D01`. To run this demo, change your current directory to `cellorganizer/demos/2D/demo2D01` by entering::

	cd cellorganizer/demos/2D/demo2D01

You should find the shell script **demo2D01.sh**. To run the demo, enter the command::

	./demo2D01.sh

This demo will save a folder `param` containing .mat files as well as a `.mat` file `lamp2.mat` to the same directory (`/home/cellorganizer/demos/2D/demo2D01`). These `.mat` files contain information characterizing the trained generative model.

Running the demo in the container should produce results similar to

.. raw:: html

	<script src="https://asciinema.org/a/194145.js" id="asciicast-194145" async></script>

Run a demo that invokes slml2img
--------------------------------
An example of a demo that produces simulated images from a trained generative model is `demo2D02`. To run this demo, change your current directory to `/home/cellorganizer/demos/2D/demo2D02` by entering::

	cd cellorganizer/demos/2D/demo2D02

You should find the shell script `demo2D02.sh`. To run the demo, Enter the command::

	./demo2D02.sh

This demo will save a folder `img` containing these simulated images to the same directory.

Exit the container
------------------
To leave the container, enter::

	 exit

You will return to the local directory you were in before you ran Docker.

Export generated data out of the container
------------------------------------------
To export generated data out of the container, the following information is needed

	* the container ID
	* the source filepath (i.e. the filepath, within the container filesystem, of the data to be exported)
	* the destination filepath (i.e. the filepath, within our local filesystem, to which we want to export the data)

The command used to do this is

	docker cp <container_id>:<source_filepath> <destination_filepath>
