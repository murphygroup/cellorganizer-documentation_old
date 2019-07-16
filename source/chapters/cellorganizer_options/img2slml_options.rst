img2slml
--------

General Options
~~~~~~~~~~~~~~~~~~

**Mandatory**

*options.debug*
    * If set to true, then the function will (1) keep temporary results folder, (2) will print information useful for debugging.
    * Default: false.

*options.display*
    * If set to true, then plots useful for debugging with be open. This functionality is meant for debugging only, setting this to true will considerably slow down computation.
    * Default: false

*options.save_segmentations*
    * Will save the segmentations to the model file. Setting this option to true will create a considerably large file.

**Optional**

*options.masks*
    * Masks collection Directory.

*options.rain.flag*
    * Selects what model is going to be trained (‘nuclear’, ‘framework’, or ‘  all’).
    * default: “all”

*Model Name*
    * Holds the name of the model.
    * default: empty

*Model Id*
    * Holds the id of the model.
    * Default is a randomly generated string.

*Mode*
    * Holds the output filename.

*options.downsampling*
    * The downsampling vector to be used during preprocessing.


`PCA <https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty983/5232995>`_
~~~~~~~~~~~~~~~~~~

**Mandatory**

*options.model.pca.latent_dim*
    * This option specifies how many latent dimensions (principal vectors or principal components) should be used for modeling the shape space.  Valid values are positive integers.
    * Default: 15

`Diffeomorphic <http://murphylab.web.cmu.edu/publications/144-rohde2008.pdf>`_
~~~~~~~~~~~~~~~~~~

**Mandatory**

*model.diffeomorphic.distance_computing_method*
    * This option specifies
    * default: ‘faster’

*model.diffeomorphic.com_align*
    *
    * default: ‘nuc’


`T-Cell Distribution <https://link.springer.com/protocol/10.1007/978-1-4939-6881-7_25>`_
~~~~~~~~~~~~~~~~~~

**Mandatory**

*options.model.tcell.synapse_location*
    * File path to annotation of the synapse positions of the T cells as input.

*options.model.tcell.results_location*
    * File path for where the results should be saved.

*options.model.tcell.named_option_set*
    * The running choice for CellOrganizer and one sensor of two-point annotation.

*options.model.tcell.model_type_to_include*
    * Set up for model to include.
    *

*options.model.tcell.infer_synapses*
    *
    *  [default is ] true or false.

**Optional**

*options.model.tcell.use_two_point_synapses*
    * Set up the mode of synapse to use, if needed you can use two-point by set up the option as true.
    * default one-point

*options.model.tcell.timepoints_to_include*
    * If creation of models for only a subset of the time points is desired, edit to specify which time points to include.

*options.model.tcell.adjust_one_point_alignment*
    * Set up alignment adjustment true or false.
    * default:

*options.model.tcell.ometiff*
    *  If true, then it assumes images are OME.TIFFs with annotations.
    * default: ‘false’


`3D SPHARM-RPDM <https://link.springer.com/protocol/10.1007%2F978-1-4939-9102-0_11>`_   
~~~~~~~~~~~~~~~~~~

**Mandatory**

*options.model.spharm_rpdm.components*
    * This specifies which components should be included in the shape model. The valid values are {'cell'}, {'nuc'}, or {'cell', 'nuc'}.
    * default is

**Optional**

*options.model.spharm_rpdm.alignment_method*
    * method by which cells willbe aligned when producing shape descriptors. The possible values are 'major_axis' or 'foe'.
    * default: ‘major_axis’

*options.model.spharm_rpdm.rotation_plane*
    * Dimensions of image that will used for alignment. The possible values are 'xy' (defaut), 'xz', 'yz' or ‘xyz'. For example, xy plane (around the z axis). if ‘xy‘ is specified, each cell will be rotated in the

*options.model.spharm_rpdm.postprocess*
    * This specifies whether alignment and size normalization, should be done after parameterization. The values are ‘true’ or ‘false’.
    * default: ‘true’

*options.model.spharm_rpdm.maxDeg*
    * This specifies the degree up to which spherical harmonics should be calculated. Valid values are positive integers.
    * default: 31

*options.model.spharm_rpdm.latent_dim*
    * This specifies how many latent dimensions should be used for modeling the shape space. Valid values are positive integers.
    * default is 15
