Datasets
--------
This chapter describes the image datasets included with each distribution.

Murphy Lab HeLa Collection
**************************
Fluorescence microscope images of HeLa cells using four different labels (anti-lamp2, anti-mitochondria, anti-nucleolin, anti-transferrin receptor)
In each label, there four channels: crop, protein, DNA, cell.
For 3D HeLa, there are processed binarized images in processed folder.


T Cell Collection
*****************
Three-dimensional live cell imaging of the interaction of T cells with antigen-presenting cells (APCs) visualizes the subcellular distributions of 
signaling intermediates at thousands of resolved positions within a cell, i.e., it yields detailed three-dimensional maps of local concentrations.


**Annotation File:**


Each annotation file contains the information of chosen cell pairs for a movie (each frame is a 3D stack). An example annotation file is shown below. 
The annotation file should be formatted as described below:
    *   Each row represents a cell in a specific time point. And the adjacent rows without blank row separation represents a cell in different time points. Different cells are separated with blank row(s).
    *   In column 1, the name of the image file (depending on how the images are acquired, there may be one file per time point or multiple time points in a single file).
    *   In column 2, the number of the channel within that file that contains the GFP fluorescence for that time point (if each time point is in a separate file, this would typically be channel 1; if multiple time points are in the same file, this would typically be the frame number).
    *   In columns 3–7, the X coordinate of the left end point, the Y coordinate of the left end point, the X coordinate of the right end point, and the Y coordinate of the right end point for the synapse in that time point.
    *   In column 8, the time difference for that frame relative to time point 0.



RandTag 3D 3T3 Collection
*************************
The 2D 3T3 Randomly CD-Tagged collections were created by generating randomly CD-tagged cell clones in collaboration with
Dr. Peter Berget and Jonathan Jarvik and then imaging them by automated microscopy.

The 3D 3T3 collection was collected in collaboration with Dr. Jonathan Jarvik and Peter Berget and consists of fluorescence microscope images 
of cell lines expressing GFP-tagged proteins. The cell lines were obtained by CD-tagging to produce internal GFP-fusions in random proteins. 

The images were collected using spinning disk confocal microscopy and only images of GFP fluorescence were collected. 
