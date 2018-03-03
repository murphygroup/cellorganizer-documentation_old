Installing CellOrganizer
************************

Go to the CellOrganizer Dowload page and get the latest release. Extract the contents of the release into a local directory of your preference. For example,

.. code-block:: bash

	cd ~/
	wget -nc http://cellorganizer.org/Downloads/v2.7/cellorganizer_v2.7.0_and_image_collection.tgz
	tar -xvf cellorganizer_v2.7.0_and_image_collection.tgz
	rm -fv cellorganizer_v2.7.0_and_image_collection.tgz

The commands above will download and extract to disk the contents of CellOrganizer v2.7.0.

To start using CellOrganizer, start a Matlab session and change directory to the location of CellOrganizer and run setup.m. In the Matlab terminal, type

.. code-block:: matlab

	cd( ‘/path/to/cellorganizer’ );
	setup();

If you were successful you should see a message like

.. code-block:: bash

	>> setup
	Checking for new stable version... Version is up to date.