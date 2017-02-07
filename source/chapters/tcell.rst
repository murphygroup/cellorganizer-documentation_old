T cell models
=============

Overview
--------

General idea: the model is used for building model for 3D cells with protein patterns, especially for 4D movies. And we assume different cells have similar cell shape and can map to a template. The model is based on the t cell model in the Royal et al. 2016. It is useful for quantitative analysis of proteins in T cells and also other cells. Like other models in CellOrganizer, it contains two parts: training and synthesis. Training part: train a morphing model from the original images; synthesis: synthesize cells with protein pattern from the model. 

In the training part: it uses t cell movies and the annotation of the synapse positions of the t cells as input. It contains these steps: cropping, segmentation, rigid alignment, non-rigid alignment (morphing) and model-building. 

In the synthesis part, it takes a t cell model (if need specific shape of  cells, also a cell shape model) as input. It contains: voxel sampling, shape registration, and voxel mapping. 


Training
--------

TODO: put explanation of the training process.


Synthesis
---------

TODO: put explanation of the synthesis process.







