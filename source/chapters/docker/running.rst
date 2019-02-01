Running CellOrganizer for Docker through Jupyter-Notebook
********************************
After the docker image has been created through Kitematic, click the top right button to open the Jupyter server. 

This will open a webpage on your browser that is hosted by your local machine. The environment will intially contain Ipython notebooks with preinstalled demos that will run the CellOrganizer binaries.   

.. image:: home_page.png
    :width: 50px

Run a demo that invokes img2slml
--------------------------------
An example of a demo that trains a generative model from a series of `.tif` image files is `demo2D01`. To run a demo, simply click the run button at the top of the notebook.

.. figure:: Run_Button.png
    :width: 200px

This demo will save a folder `param` containing .mat files as well as a `.mat` file `lamp2.mat` to the same directory (`/home/cellorganizer/demos/2D/demo2D01`). These `.mat` files contain information characterizing the trained generative model.

Run a demo that invokes slml2img
--------------------------------
An example of a demo that produces simulated images from a trained generative model is `demo2D02`. 

This demo will save a folder `img` containing these simulated images to the same directory.

Export generated data out of the container
------------------------------------------
To export generated data out of the container, click the files in the directory that will be exported and click download. 

.. figure:: Download.png
    :width: 200px
