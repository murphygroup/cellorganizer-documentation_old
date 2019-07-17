img2slml
********
This function trains a generative model of subcellular location from a
collection of images and saves the model to disk.

A CellOrganizer model consists of four components,

1) a (optional) documentation component
2) a nuclear membrane model
3) a cell membrane model and
4) a protein pattern model

=============================  ===============================================================
        Inputs                                             Outputs
=============================  ===============================================================
  dimensionality                2D/3D
  dnaImagesDirectoryPath        DNA images collection directory, list of files or pattern
  cellImagesDirectoryPath       Cell images collection directory, list of files or pattern
  proteinImagesDirectoryPath    Protein images collection directory, list of files or pattern
  options                       List of options
=============================  ===============================================================


General Options
================


*options.train.flag* (mandatory)
    * Selects what model is going to be trained (‘nuclear’, 'cell', ‘framework’, or ‘  all’).

*options.debug* (optional) **[false]**
    * If set to true, then the function will (1) keep temporary results folder, (2) will print information useful for debugging.

*options.masks* (optional) **[empty]**
    * List holding the mask files for input images

*options.save_segmentations* (optional) **[false]**
    * Will save the segmentations to the model file. Setting this option to true will create a considerably large file.

*options.display* (optional) **[false]**
    * If set to true, then plots useful for debugging with be open. This functionality is meant for debugging only, setting this to true will considerably slow down computation.

*options.model.name* (optional) **[empty]**
    * Holds the name of the model.

*options.model.id* (optional) **['randomly generated string']**
    * Holds the id of the model.

*options.model.filename* (optional) **['model.mat']**
    * Holds the output filename.

*options.downsampling* (optional) **[[1,1,1]]**
    * The downsampling vector to be used during preprocessing.


Nuclear Shape model
^^^^^^^^^^^^^^^^^^^
*options.nucleus.class* (mandatory)
    * Holds the nuclear membrane model class.

*options.nucleus.type* (mandatory)
    * Holds the nuclear membrane model type.

*options.nucleus.name* (optional) **[empty]**
    * Holds the name of the nuclear model.

*options.nucleus.id* (optional) **['randomly generated string']**
    * Holds the id of the nuclear model.

Cell Shape model
^^^^^^^^^^^^^^^^^^^
*options.cell.class* (mandatory)
    * Holds the cell membrane model class.

*options.cell.type* (mandatory)
    * Holds the cell membrane model type.

*options.cell.name* (optional)**[empty]**
    * Holds the name of the cell model.

*options.cell.id* (optional) **['randomly generated string']**
    * Holds the id of the cell model.


Protein Shape model
^^^^^^^^^^^^^^^^^^^
*options.protein.class* (mandatory)
    * Holds the protein membrane model class.

*options.protein.type* (mandatory)
    * Holds the protein membrane model type.

*options.protein.name* (optional) **[empty]**
    * Holds the name of the protein model.

*options.protein.id* (optional) **['randomly generated string']**
    * Holds the id of the protein model.


Model Specific Options
======================

PCA
^^^^^^^^^^^^^^^^^^^
Learn more `here <https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty983/5232995>`_

* options.model.pca.latent_dim* (mandatory) **[15]**
    * This option specifies how many latent dimensions (principal vectors or principal components) should be used for modeling the shape space.  Valid values are positive integers.

Diffeomorphic
^^^^^^^^^^^^^^^^^^^
Learn more `here <http://murphylab.web.cmu.edu/publications/144-rohde2008.pdf>`_

*model.diffeomorphic.distance_computing_method* (mandatory) **['faster']**
    * This option specifies

*model.diffeomorphic.com_align* (mandatory) **['nuc']**

T-Cell Distribution
^^^^^^^^^^^^^^^^^^^
Learn more `here <https://link.springer.com/protocol/10.1007/978-1-4939-6881-7_25>`_

*options.model.tcell.synapse_location* (mandatory)
    * File path to annotation of the synapse positions of the T cells as input.

*options.model.tcell.results_location* (mandatory)
    * File path for where the results should be saved.

*options.model.tcell.named_option_set* (mandatory)
    * The running choice for CellOrganizer and one sensor of two-point annotation.

*options.model.tcell.model_type_to_include* (mandatory)
    * Set up for model to include.

*options.model.tcell.infer_synapses* (mandatory) **[true]**
    * set up  the synapse inference

*options.model.tcell.use_two_point_synapses* (optional) **[false]**
    * Set up the mode of synapse to use, if needed you can use two-point by setting the option as true.

*options.model.tcell.timepoints_to_include* (optional)
    * If creation of models for only a subset of the time points is desired, edit to specify which time points to include.

*options.model.tcell.adjust_one_point_alignment* (optional) **[true]**
    * Set up alignment adjustment true or false.

*options.model.tcell.ometiff* (optional) **[false]**
    * If true, then it assumes images are OME.TIFFs with annotations.

3D SPHARM-RPDM
^^^^^^^^^^^^^^^^^^^
Learn more `here <https://link.springer.com/protocol/10.1007%2F978-1-4939-9102-0_11>`_

*options.model.spharm_rpdm.components* (mandatory) **[{'cell', 'nuc'}]** 
    * This specifies which components should be included in the shape model. The valid values are {'cell'}, {'nuc'}, or {'cell', 'nuc'}.

*options.model.spharm_rpdm.alignment_method* (optional) **['major_axis]**
    * method by which cells willbe aligned when producing shape descriptors. The possible values are 'major_axis' or 'foe'.

*options.model.spharm_rpdm.rotation_plane* (optional) **['xy']**
    * Dimensions of image that will used for alignment. The possible values are 'xy' (defaut), 'xz', 'yz' or ‘xyz'. For example, xy plane (around the z axis). if ‘xy‘ is specified, each cell will be rotated in the

*options.model.spharm_rpdm.postprocess* (optional) **[true]**
    * This specifies whether alignment and size normalization, should be done after parameterization. The values are ‘true’ or ‘false’.

*options.model.spharm_rpdm.maxDeg* (optional) **[31]**
    * This specifies the degree up to which spherical harmonics should be calculated. Valid values are positive integers.

*options.model.spharm_rpdm.latent_dim* (optional) **[15]**
    * This specifies how many latent dimensions should be used for modeling the shape space. Valid values are positive integers.
