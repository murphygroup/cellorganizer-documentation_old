.. installation:

Installation
============

Installing CellOrganizer locally
********************************

Go to the CellOrganizer Dowload page and get the latest release. Extract the contents of the release into a local directory of your preference. For example,

.. code-block:: bash

	cd ~/
	wget -nc http://cellorganizer.org/Downloads/v2.6/cellorganizer_v2.6.0_and_image_collection.tgz
	tar -xvf cellorganizer_v2.6.0_and_image_collection.tgz
	rm -fv cellorganizer_v2.6.0_and_image_collection.tgz

The commands above will download and extract to disk the contents of CellOrganizer v2.6.0.

To start using CellOrganizer, start a Matlab session and change directory to the location of CellOrganizer and run setup.m. In the Matlab terminal, type

.. code-block:: matlab

	cd( ‘/path/to/cellorganizer’ );
	setup();

If you were successful you should see a message like

.. code-block:: bash

	>> setup
	Checking for new stable version... Version is up to date.

Installing CellOrganizer on Bridges
***********************************

.. IMPORTANT::
   Compute nodes do not access the web. Make sure to download the tarball from the front end.

This section assumes you have a license to run Matlab on Bridges. For more information about Matlab licenses on Bridges, please send an email to `remarks AT psc AT edu`.

In terminal run

.. code-block:: bash

	wget -nc http://cellorganizer.org/Downloads/v2.6/cellorganizer_v2.6.0_and_image_collection.tgz
	tar -xvf cellorganizer_v2.6.0_and_image_collection.tgz

Next make sure the Matlab binary is available in `PATH`. In terminal run

.. code-block:: bash

	>> module avail matlab

	------------------- /opt/modulefiles ------------------- 
	matlab/MCR_R2013a      matlab/R2016a      matlab/R2017a

	>> module load matlab/R2017a
	>> which matlab

	/opt/packages/matlab/R2017a/bin/matlab

If you see a result similar to the above, then you should be ready to compute.

.. HINT::
   You can add the command `module load matlab/R2017a` to `.bashrc` file or at the top of the submission SLURM scripts.

After you finished the steps above, you can either request an interactive session or submit a job to the scheduler. 

Then open Matlab, change directory to the location where the contents of CellOrganizer were extracted and run:

	setup();