slml2img
********

General Options
==============

**Mandatory**

*options.synthesis*
    * Synthesis parameter that allows to synthesize 'nucleus', 'cell', 'framework' or 'all'.

**Optional**


*options.debug*
    * If set to true, then the function will (1) keep temporary results folder, (2) will print information useful for debugging.
    * Default: false


*options.targetDirectory*
    * Directory where the images are going to be saved.
    * Default is current

*options.prefix*
    * Filename prefix for the synthesized images.
    * Default is 'demo'

*options.numberOfSynthesizedImages*
    * Number of synthesized images.
    * Default is 1.

*options.compression*
    * Compression of tiff, i.e. 'none', 'lzw' and 'packbits'

*options.microscope*
    * Microscope model from which we select a point spread function.
    * Default is 'none'

*options.protein.cytonuclearflag*
    * Defines the allowable region for protein placement.
    * The default is the cytonuclearflag included in the model.

*options.sampling.method*
    * Can be 'disc', 'sampled' or 'trimmed'.
    * Default is trimmed

*options.savePDF*
    * Saves the probability density function for a given pattern during 2D synthesis.
    * Default is false.

*options.spherical_cell*
    * Boolean flag that indicates whether a cell is spherical.
    * Default is false.

*options.overlapsubsize*
    * Defines the downsampling fraction to perform during object overlap avoidance.
    * Default is 0.3.

*options.overlapthresh*
    * Defines the amount of overlap that is allowed between objects.
    * Default is 1.

*options.oobthresh*
    * The proportion of a synthesized object that is permitted to fall outside the cell before the object is discarded.
    * Default is 0.

*options.oobbuffer*
    * The thickness in microns of an additional buffer zone inside the boundary of a cell in which an object cannot be placed.
    * Default is 0.

*options.rendAtStd*
    * Defines the number of standard deviations to render Gaussian objects at.
    * Default is 2.

*options.sampling.method.density*
    * An integer.
    * Default is empty.

*options.protein.cytonuclearflag*
    * Can 'cyto', 'nucleus' or 'all'.
    * Default is all.

*options.resolution.cell*
    * The resolution of the cell and nucleus that are being passed in

*options.resolution.objects*
    * The resolution of the object model being synthesized

*options.instance.cell*
    * A binary cell image to be filled with objects.
    * Default is empty.

*options.instance.nucleus*
    * A binary nuclear image to be filled with objects.
    * Default is empty.

*options.image_size*
    * The image size.
    * Default is [1024 1024] for both 2D and 3D in x and y





2D PCA (learn more `here <https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty983/5232995>`_ )
==============

*options.model.pca.pca_synthesis_method*
    * The method in which the generated image is synthesized.
    * ['reconstruction' or 'random sampling']

*options.model.pca.imageSize*
    * image size of the resulting synthesized image
    * [1024,1024]

**Optional**


3D SPHARM-RPDM (learn more `here <https://link.springer.com/protocol/10.1007%2F978-1-4939-9102-0_11>`_ )
==============

**Mandatory**

*options.model.spharm_rpdm.synthesis_method*
    *
    * ['reconstruction' or 'random sampling']


T-Cell Model  (learn more `here <https://link.springer.com/protocol/10.1007/978-1-4939-6881-7_25>`_ )
==============
**Mandatory**

*options.model.tcell.results_location*
    * File path for where the results should be saved.

*options.model.tcell.named_option_set*
    * The running choice for CellOrganizer and one sensor of two-point annotation

*options.model.tcell.sensor*
    * Set up protein name

*options.model.tcell.model_type_to_include*
    * Set up for model to include

**Optional**

*options.model.tcell.use_two_point_synapses*
    * Set up the mode of synapse to use, as a default, we use one-point, if needed you can use two-point by set up the option as true

*options.model.tcell.timepoints_to_include*
    * If creation of models for only a subset of the time points is desired, edit to specify which time points to include
