Installing CellOrganizer for Matlab
***********************************

Requirements
------------
* Matlab 2016b or newer
* Bioinformatics Toolbox
* Computer Vision System Toolbox
* Control System Toolbox
* Curve Fitting Toolbox
* Image Processing Toolbox
* Mapping Toolbox
* Optimization Toolbox
* Robust Control Toolbox
* Signal Processing Toolbox
* Simulink
* Simulink Design Optimization
* Statistics and Machine Learning Toolbox
* System Identification Toolbox
* Wavelet Toolbox 

Downloading CellOrganizer for Matlab
------------------------------------

CellOrganizer is a software package that learns generative models of cell organization from fluorescence micrographs. These models are useful for modeling the dependency between compartments of the cell, allowing for a compact representation of cell geometries that is useful for spatially realistic biochemical simulations. 

CellOrganizer for Matlab is the most flexible and powerful of the CellOrganizer deliverable, since it interfaces with `Matlab <https://www.mathworks.com/products/matlab.html>`_ which facilitates data analysis.

To download the latest CellOrganizer for Matlab distribution go to the `download page <http://cellorganizer.org/downloads/>`_ and download the latest release. Aftwards, extract the contents of the release into a local directory of your preference. 

For example,

.. code-block:: bash

	cd ~/
	wget -nc http://cellorganizer.org/downloads/v2.7/cellorganizer_v2.7.0_and_image_collection.tgz
	tar -xvf cellorganizer_v2.7.0_and_image_collection.tgz
	rm -fv cellorganizer_v2.7.0_and_image_collection.tgz

The commands above will download and extract to disk the contents of CellOrganizer v2.7.0.

Starting CellOrganizer for Matlab
---------------------------------

To start using CellOrganizer, start a Matlab session and change directory to the location of CellOrganizer and run setup.m. 

In the Matlab, type

.. code-block:: matlab

	cd( ‘/path/to/folder/cellorganizer’ );
	setup();

If you were successful you should see a message like

.. code-block:: bash

	>> setup
	Checking for new stable version... Version is up to date.

You are now ready to use CellOrganizer for Matlab.

