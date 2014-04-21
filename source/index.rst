.. CellOrganizer documentation master file, created by
   sphinx-quickstart on Wed Mar  5 11:34:03 2014.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

CellOrganizer for Matlab
========================

Contents:

.. toctree::
   :maxdepth: 2


Indices and tables
##################

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

Getting Started
###############

.. include:: ./chapters/about.rst

.. include:: ./chapters/download.rst

.. include:: ./chapters/start.rst

.. include:: ./chapters/demos.rst

Training Demos
===============

Training a model
################

Required Materials
------------------
* A copy of CellOrganizer
* A set of fluorescently tagged images, each containing a single cell

Main Function
-------------
The main method for training a model is::

	success = img2slml( dimensionality, img_dna_wildcard, ... 
		img_cell_wildcard, img_protein_wildcard, param )

Recommended Setup
-----------------

Images
~~~~~~
Cell images must satisfy the following requirements

#. Either a single cell per image, or a binary-valued mask must be provided.
#. Images must be wildcard accessible (ex. ``img*-channel1.tif`` could be the wildcard for all nuclear images, ``img*-channel2.tif`` could be the wildcard for all cell images
#. 3D images must be contained within a single multi-stack TIF per channel (ex. ``image1-channel1.tif``, ``image1-channel2.tif``, ``image2-channel1.tif``, ``image2-channel2.tif``, ...)

Example::

	img_dna_wildcard =  ‘/your_image_directory/img*-channel1.tif’;
	img_cell_wildcard = ‘/your_image_directory/img*-channel2.tif’;
	img_prot_wildcard = ‘/your_image_directory/img*-channel3.tif’;

Parameters
~~~~~~~~~~

.. include:: training_parameters.rst

.. include:: synthesis_parameters.rst

Training a model of cellular organization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The following code is the bare minimum to train a 3D model::

	dimensionality = ‘3D’;

	img_dna_wildcard =  ‘/your_image_directory/img*-channel1.tif’;
	img_cell_wildcard = ‘/your_image_directory/img*-channel2.tif’;
	img_prot_wildcard = ‘/your_image_directory/img*-channel3.tif’;

	param.model.trainflag = ‘all’;
	param.model.filename = ‘myModel.mat’
	param.model.resolution =  [0.049, 0.049, 0.200];

	success = img2slml( dimensionality, img_dna_wildcard, ...
		img_cell_wildcard, img_protein_wildcard, param )

Advanced Demos
~~~~~~~~~~~~~~
If you are interested in learning about training models you can start by investigating the demos. All the demos included with the source code use images from the Murphy Lab dataset collection.

* ``demo2D01`` - Trains a 2D generative model of protein location using one of the four patterns.
* ``demo3D11`` - Trains a generative model of the cell framework using the four patterns in the HeLa dataset.
* ``demo3D12`` - Trains a generative model of the cell framework and protein pattern using one of the four patterns in the HeLa dataset.
* ``demo3D20`` - Trains a generative model of the cell framework using diffeomorphic modeling with a subset of the HeLa dataset.

.. include:: footnotes.rst
