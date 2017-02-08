Overview
~~~~~~~~

General idea: the model is used for building model for 3D cells with protein patterns, especially for 4D movies. And we assume different cells have similar cell shape and can map to a template. The model is based on the t cell model in the Royal et al. 2016. It is useful for quantitative analysis of proteins in T cells and also other cells. Like other models in CellOrganizer, it contains two parts: training and synthesis. Training part: train a morphing model from the original images; synthesis: synthesize cells with protein pattern from the model. 

In the training part, it uses t cell movies and the annotation of the synapse positions of the t cells as input. It contains these steps: cropping, segmentation, rigid alignment, non-rigid alignment (morphing) and model-building. 

In the synthesis part, it takes a t cell model (if need specific shape of cells, also a cell shape model) as input. It contains: voxel sampling, shape registration, and voxel mapping. 

Training
~~~~~~~~

The demo included, demo3Dtcell_train, illustrates using CellOrganizer to train a protein distribution model following the approach described in

* K. T. Roybal, T. E. Buck, X. Ruan, B. H. Cho, D. J. Clark, R. Ambler, H. M. Tunbridge, J. Zhang, P. Verkade, C. Wülfing, and R. F. Murphy (2016) `Computational spatiotemporal analysis identifies WAVE2 and Cofilin as joint regulators of costimulation-mediated T cell actin dynamics <http://stke.sciencemag.org/content/9/424/rs3>`_. Science Signaling 9:rs3. doi: 10.1126/scisignal.aad4149.

The slowest step, which typically takes about 1 min per cell per frame, is to align each cell at each time to the standardized template. This demo uses 46 cells so it will take about 1 hour on a single core.

Synthesis
~~~~~~~~~

The included, demo3Dtcell_synth, illustrates synthesis from a T cell model. The demo takes in two models, one model contains both cell and nuclear shape models, and the other contains a t cell protein shape model.

Annotation file
~~~~~~~~~~~~~~~

Each annotation file contains the information of chosen cell pairs for a movie (each frame is a 3D stack). An example annotation file is shown below. The annotation file should be formated as described below:

* Each row represent a cell in a specific time point. And the adjacent rows without blank row separation represents a cell in different time points. Different cells are separated with blank row(s). 
* In column 1, the name of the image file (depending on how the images are acquired, there may be one file per time point or multiple time points in a single file).
* In column 2, the number of the channel within that file that contains the GFP fluorescence for that time point (if each time point is in a separate file, this would typically be channel 1; if multiple time points are in the same file, this would typically be the frame number).
* In columns 3–7, the X coordinate of the left end point, the Y coordinate of the left end point, the X coordinate of the right end point, and the Y coordinate of the right end point for the synapse in that time point.
* In column 8, the time difference for that frame relative to time point 0.




