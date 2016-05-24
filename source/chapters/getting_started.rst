.. getting_started:

Getting Started
===============

CellOrganizer is an open source system for using microscope images to learn statistical models of the structure of cell components and of how those components are organized relative to each other. 

Since these models can be used to synthesize new images reflecting what the model learned, they are referred to as <i>generative</i> models. 

For example, CellOrganizer can take fluorescence microscope images of many cells expressing a GFP-tagged lysosomal protein and construct a model of how the cell and nuclear shapes vary among those cells, of how many lysosomes are typically found per cell, how they vary in size, and where they are typically located relative to the cell and nuclear boundaries.
 
Publications describing the development and use of various software components of CellOrganizer are located`here <http://cellorganizer.org/Publications>`_. 
A recent overview of the principles behind CellOrganizer can be found `here <http://www.sciencedirect.com/science/article/pii/S1046202315301298>`_.

CellOrganizer provides tools for

* learning generative models of cell organization directly from images
* storing and retrieving those models
* synthesizing cell images (or other representations) from one or more models

Model learning captures variation among cells in a collection of images. Images used for model learning and instances synthesized from models can be two- or three-dimensional static images or movies.

.. figure:: ../images/cellorganizer-overview-diagram.png
  :align: center

   CellOrganizer learns compact and invertible models of subcellular shape and organization. To train a model for a collection of images, CellOrganizer first finds the parameterizations per image, then learns a distribution on these parameterizations and stores it in the trained model. Parameterizations can be sampled from this distribution and then be used to synthesize novel images. Johnson (2015). "Model Selection in Parameterizing Cell Images and Populations."

CellOrganizer can learn models of

* cell shape
* nuclear shape
* chromatin texture
* vesicular organelle size, shape and position
* microtubule distribution.

These models can be conditional upon each other. For example, for a given synthesized cell instance, organelle position is dependent upon the cell and nuclear shape of that instance.
Cell types for which generative models for at least some organelles have been built include human HeLa cells, mouse NIH 3T3 cells, and Arabidopsis protoplasts. Planned projects include mouse T lymphocytes and rat PC12 cells.

Support for CellOrganizer has been provided by grants GM075205, GM090033 and GM103712 from the National Institute of General Medical Sciences, grants MCB1121919 and MCB1121793 from the U.S. National Science Foundation, by a Forschungspreis from the Alexander von Humboldt Foundation, and by the Freiburg Institute for Advanced Studies.

.. include:: ./sections/about.rst

.. include:: ./sections/download.rst
