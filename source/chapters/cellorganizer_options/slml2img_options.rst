slml2img
********
This function synthesizes an image from a list of SLML models.
Instances may be saved in the following forms:

#. tiff stacks: a 3D tiff image stack for each pattern generated using the input models
#. OME.TIFF
#. indexed images: a single 3D tiff image stack where each pattern is represented by a number 1-n
#. object mesh: a .obj mesh file for each pattern generated using the input models (blenderfile option)
#. SBML-Spatial file: a Systems Biology Markup Language (SBML) instance XML file utilizing the Spatial extension in level 3 version 1
#. Virtual Cell Markup-Language (VCML)

=======================  ========================================
List Of Input Arguments  Descriptions
=======================  ========================================
models                   A cell array of filenames
options                  A structure holding the function options
=======================  ========================================

General Options
==============

*options.synthesis* (mandatory)
    * Synthesis parameter that allows to synthesize 'nucleus', 'cell', 'framework' or 'all'.

*options.debug* (optional) **[false]**
    * If set to true, then the function will (1) keep temporary results folder, (2) will print information useful for debugging.

*options.targetDirectory* (optional) **[current]**
    * Directory where the images are going to be saved.

*options.prefix* (optional) **['demo']**
    * Filename prefix for the synthesized images.

*options.numberOfSynthesizedImages* (optional) **[1]**
    * Number of synthesized images.

*options.compression* (optional) **['lzw']**
    * Compression of tiff, i.e. 'none', 'lzw' and 'packbits'

*options.microscope* (optional) **['none']**
    * Microscope model from which we select a point spread function.

*options.protein.cytonuclearflag* (optional) **[cytonuclearflag included in the model]**
    * Defines the allowable region for protein placement.

*options.sampling.method* (optional) **['trimmed']**
    * Can be 'disc', 'sampled' or 'trimmed'.

*options.savePDF* (optional) **['false']**
    * Saves the probability density function for a given pattern during 2D synthesis.

*options.spherical_cell* (optional) **['false']**
    * Boolean flag that indicates whether a cell is spherical.

*options.overlapsubsize* (optional) **[0.3]**
    * Defines the downsampling fraction to perform during object overlap avoidance.

*options.overlapthresh* (optional)
    * Defines the amount of overlap that is allowed between objects.

*options.oobthresh* (optional) **[0]**
    * The proportion of a synthesized object that is permitted to fall outside the cell before the object is discarded.

*options.oobbuffer* (optional) **[0]**
    * The thickness in microns of an additional buffer zone inside the boundary of a cell in which an object cannot be placed.

*options.rendAtStd* (optional) **[2]**
    * Defines the number of standard deviations to render Gaussian objects at.

*options.sampling.method.density* (optional) **[empty]**
    * An integer.

*options.protein.cytonuclearflag* (optional) **['all']**
    * Can 'cyto', 'nucleus' or 'all'.

*options.resolution.cell* (optional)
    * The resolution of the cell and nucleus that are being passed in

*options.resolution.objects* (optional)
    * The resolution of the object model being synthesized

*options.instance.cell* (optional) **[empty]**
    * A binary cell image to be filled with objects.

*options.instance.nucleus* (optional) **[empty]**
    * A binary nuclear image to be filled with objects.

*options.image_size* (optional) **[1024 1024]**
    * The image size is [1024 1024] for both 2D and 3D in x and y.

Model Specific Options
======================

2D PCA 
^^^^^^^^
learn more `here <https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty983/5232995>`_

*options.model.pca.pca_synthesis_method* (mandatory) **['reconstruction' or 'random sampling']**
    * The method in which the generated image is synthesized.

*options.model.pca.imageSize* (mandatory) **[1024, 1024]**
    * image size of the resulting synthesized image


3D SPHARM-RPDM 
^^^^^^^^^^^^^^^
learn more `here <https://link.springer.com/protocol/10.1007%2F978-1-4939-9102-0_11>`_ 

*options.model.spharm_rpdm.synthesis_method* (mandatory) **['reconstruction' or 'random sampling']**


T-Cell Model  
^^^^^^^^^^^^
learn more `here <https://link.springer.com/protocol/10.1007/978-1-4939-6881-7_25>`_ 

*options.model.tcell.results_location* (mandatory)
    * File path for where the results should be saved.

*options.model.tcell.named_option_set* (mandatory)
    * The running choice for CellOrganizer and one sensor of two-point annotation

*options.model.tcell.sensor* (mandatory)
    * Set up protein name

*options.model.tcell.model_type_to_include* (mandatory)
    * Set up for model to include

*options.model.tcell.use_two_point_synapses* (optional)
    * Set up the mode of synapse to use, as a default, we use one-point, if needed you can use two-point by set up the option as true

*options.model.tcell.timepoints_to_include* (optional)
    * If creation of models for only a subset of the time points is desired, edit to specify which time points to include
