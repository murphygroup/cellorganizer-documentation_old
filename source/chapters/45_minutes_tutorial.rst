.. 45_minutes_tutorial:

CellOrganizer in 45 Minutes
***************************

Introduction
============

CellOrganizer is a software package that learns generative models of cell organization from fluorescence images. These models are useful for modeling the dependency between compartments of the cell, allowing for a compact representation of cell geometries present in cell images and generating image of geometries useful for spatially realistic biochemical simulations. There are two main functions which this tutorial will cover: ``img2slml``, the top-level function to train a generative model of cell morphology, and ``slml2img``, the top-level function to generate an instance from a trained model.

Whom is this tutorial for?
==========================

This tutorial was written for people who have experience with fluorescence microscopy, no experience with CellOrganizer and possibly some experience with MATLAB, generative models, or cell modeling. Users should be interested in learning how to use the automated modeling tools provided by CellOrganizer to explore their image data.

Resources
=========

* `CellOrganizer <http://cellorganizer.org>`_

* `CellOrganizer Publications <http://www.cellorganizer.org/publications/>`_

Other Software
--------------

`ImageJ <http://imagej.nih.gov/ij/>`_ - This is great software for viewing your images and those synthesized from CellOrganizer. This tutorial uses ImageJ in some spots.

Image Databases
---------------

* `Cell Image Library <http://www.cellimagelibrary.org>`_
* `Human Protein Atlas <http://www.proteinatlas.org/subcellular>`_
* `Murphy Lab Public Datasets <http://murphylab.web.cmu.edu/data/>`_

Prerequisites
=============

* An OS X, Linux or Unix operating system
* MATLAB installation (MATLAB 2014a or newer) with the following toolboxes:
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
* Some basic familiarity with writing scripts/programming (preferably in MATLAB).

Input requirements for building models
======================================

The main function that builds a generative model is called ``img2slml``. This function has five input arguments

* dimensionality
* dna_membrane_images
* cell_membrane_images
* protein_channel_images
* options_structure

The first input argument ``dimensionality`` is a string, e.g. '2D', '3D', that specifies whether we building a generative model by training on 2D or 3D images.  

Each of the second to fourth input arguments can be provided in one of the following three formats 

* a string containing wildcards, e.g. '/path/to/images/\*.tiff'
* a cell array of strings that point to each file, e.g. {'/path/to/images/1.tiff', '/path/to/images/2.tiff'}
* a cell array of function handles where each function returns a 2D/3D array that corresponds to a particular image in the list

The last input argument ``options_structure`` is a Matlab structure that contain the fields necessary for you to train the model in question.

In general, the images should

* be able to be read with `BioFormats for Matlab <https://docs.openmicroscopy.org/bio-formats/5.7.2/developers/matlab-dev.html>`_.
* contain only a single cell OR have a single cell region defined by additional mask image(s)
* contain channel(s) for fluorescent marker(s) appropriate for the desired type of model. Typically, one might include
	* a channel for nuclear shape (e.g. DAPI, Hoechst, tagged histone), 
	* a channel for cell shape (e.g., a soluble cytoplasmic protein, a plasma membrane protein, or autofluorescence), and 
	* a channel for a specific organelle (e.g. mitochondria, lysosome)

If your images are valid OME.TIFF files with regions of interest (ROI), then you can use the helper function ``get_list_of_function_handles_from_ometiff`` to retrieve a list of function handles. Each function handle should be able to return a 3D matrix when called using ``feval``. For example

.. gist:: https://gist.github.com/icaoberg/ee061a2d1bbe12ea5d05871f31364ef2

Hence we can use this helper function to generate input arguments for the function ``img2slml``. For example

.. gist:: https://gist.github.com/icaoberg/f327f6cd28ee448a2175460280ee4b44