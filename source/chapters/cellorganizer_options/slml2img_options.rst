slml2img
-----

General Options
~~~~~~~~~~~

**Mandatory**
^^^^^^^^^^^^^


**Optional**
^^^^^^^^^^^^^

**debug**
    * If set to true, then the function will (1) keep temporary results folder, (2) will print information useful for debugging.
    * Default: false


**directory.targetDirectory**
    * Directory where the images are going to be saved.
    * Default is current

**prefix**
    * Filename prefix for the synthesized images.
    * Default is 'demo'

**numberOfSynthesizedImages**
    * Number of synthesized images.
    * Default is 1.

**Compression**
    * Compression of tiff, i.e. 'none', 'lzw' and 'packbits'

**Microscope**
    * Microscope model from which we select a point spread function.
    * Default is 'none'

**Synthesis**
    * Synthesis parameter that allows to synthesize 'nucleus', 'cell', 'framework' or 'all'.
    * Default is 'all'

**protein.cytonuclearflag**
    * Defines the allowable region for protein placement.
    * The default is the cytonuclearflag included in the model.

**sampling.method**
    * Can be 'disc', 'sampled' or 'trimmed'.
    * Default is trimmed

**savePDF**
    * Saves the probability density function for a given pattern during 2D synthesis.
    * Default is false.

**spherical_cell**
    * Boolean flag that indicates whether a cell is spherical.
    * Default is false.

**Overlapsubsize**
    * Defines the downsampling fraction to perform during object overlap avoidance.
    * Default is 0.3.

**Overlapthresh**
    * Defines the amount of overlap that is allowed between objects.
    * Default is 1.

**Oobthresh**
    * The proportion of a synthesized object that is permitted to fall outside the cell before the object is discarded.
    * Default is 0.

**Oobbuffer**
    * The thickness in microns of an additional buffer zone inside the boundary of a cell in which an object cannot be placed.
    * Default is 0.

**rendAtStd**
    * Defines the number of standard deviations to render Gaussian objects at.
    * Default is 2.

**sampling.method.density**
    * An integer.
    * Default is empty.

**protein.cytonuclearflag**
    * Can 'cyto', 'nucleus' or 'all'.
    * Default is all.

**resolution.cell**
    * The resolution of the cell and nucleus that are being passed in

**resolution.objects**
    * The resolution of the object model being synthesized

**instance.cell**
    * A binary cell image to be filled with objects.
    * Default is empty.

**instance.nucleus**
    * A binary nuclear image to be filled with objects.
    * Default is empty.

**image_size**
    * The image size.
    * Default is [1024 1024] for both 2D and 3D in x and y





2D PCA
~~~~~~~~~~~

**Mandatory**
^^^^^^^^^^^^^
**model.pca.pca_synthesis_method**
    * The method in which the generated image is synthesized.
    * ['reconstruction' or 'random sampling']

**model.pca.imageSize**
    * image size of the resulting synthesized image
    * [1024,1024]

**Optional**
^^^^^^^^^^^^^

3D SPHARM-RPDM
~~~~~~~~~~~

**Mandatory**
^^^^^^^^^^^^^
**model.spharm_rpdm.synthesis_method**
    *
    * ['reconstruction' or 'random sampling']

T-Cell Model
~~~~~~~~~~~
**Mandatory**
^^^^^^^^^^^^^
**model.tcell.results_location**
    * File path for where the results should be saved.

**model.tcell.named_option_set**
    * The running choice for CellOrganizer and one sensor of two-point annotation

**model.tcell.sensor**
    * Set up protein name

**model.tcell.model_type_to_include**
    * Set up for model to include

**Optional**
^^^^^^^^^^^^^
**model.tcell.use_two_point_synapses**
    * Set up the mode of synapse to use, as a default, we use one-point, if needed you can use two-point by set up the option as true

**model.tcell.timepoints_to_include**
    * If creation of models for only a subset of the time points is desired, edit to specify which time points to include
