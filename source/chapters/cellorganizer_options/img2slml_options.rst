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
  dnaImagesDirectoryPath        Image path for training nuclear membrane submodel (Cell array of files or pattern)
  cellImagesDirectoryPath       Image path for training cell membrane submodel (Cell array of files or pattern)
  proteinImagesDirectoryPath    Image path for training vesicular submodel (Cell array of files or pattern)
  options                       List of options
=============================  ===============================================================


General Options
================

Generic Options
^^^^^^^^^^^^^^^

*options.train.flag* (mandatory)
    * Selects what model is going to be trained (‘nuclear’, 'cell', ‘framework’, or ‘  all’).

*options.documentation.description* (optional) **[empty]**
    * String for documenting the model's description.
    
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

*options.model.id* (optional) **[randomly generated string]**
    * Holds the id of the model.

*options.model.filename* (optional) **['model.mat']**
    * Holds the output filename.

*options.resolution* (optional) **[empty]**
    * Holds the information of the dimensionality of the images
    
*options.min_obj_size* (optional) **[empty]**
    * Threshold value for determining whether the object should be saved

*options.if_skip_cell_nuclear_model* (optional) **[false]**
    * Boolean condition to skip building a nuclear model 

*options.downsampling* (optional) **[[1,1,1]]**
    * The downsampling vector to be used during preprocessing.

*options.python_path* (optional) **[empty]**
    * local python path for calling point process model building.
    
*options.verbose* (optional) **[false]**
    * display extended information
    
*options.is_demo* (optional) **[true]**
    * specifies if model is running as a demo which will use inhouse images


Nuclear shape submodel
^^^^^^^^^^^^^^^^^^^^^^
*options.nucleus.class* (mandatory)
    * Holds the nuclear membrane model class.

*options.nucleus.type* (mandatory)
    * Holds the nuclear membrane model type.

*options.nucleus.name* (optional) **[empty]**
    * Holds the name of the nuclear model.

*options.nucleus.id* (optional) **[randomly generated string]**
    * Holds the id of the nuclear model.

Cell shape submodel
^^^^^^^^^^^^^^^^^^^
*options.cell.class* (mandatory)
    * Holds the cell membrane model class.

*options.cell.type* (mandatory)
    * Holds the cell membrane model type.

*options.cell.name* (optional) **[empty]**
    * Holds the name of the cell model.

*options.cell.id* (optional) **[randomly generated string]**
    * Holds the id of the cell model.


Protein shape submodel
^^^^^^^^^^^^^^^^^^^^^^
*options.protein.class* (mandatory)
    * Holds the protein membrane model class.

*options.protein.type* (mandatory)
    * Holds the protein membrane model type.

*options.protein.name* (optional) **[empty]**
    * Holds the name of the protein model.

*options.protein.id* (optional) **[randomly generated string]**
    * Holds the id of the protein model.


Model Specific Options
======================
More information about our models can be found on our `publications page <http://www.cellorganizer.org/publications/>`_ .

2D PCA
^^^^^^^^^^^^^^^^^^^
Learn more `here <https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty983/5232995>`_

* options.model.pca.latent_dim* (mandatory) **[15]**
    * This option specifies how many latent dimensions (principal vectors or principal components) should be used for modeling the shape space.  Valid values are positive integers.

2D/3D Diffeomorphic
^^^^^^^^^^^^^^^^^^^
Learn more `here <http://murphylab.web.cmu.edu/publications/144-rohde2008.pdf>`_

*model.diffeomorphic.distance_computing_method* (mandatory) **['faster']**
    * This option specifies

*model.diffeomorphic.com_align* (mandatory) **['nuc']**

3D T-Cell Distribution
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
    
*options.model.spharm_rpdm.segminnucfraction (optional) **[0.17]**
    * Threshold parameter to clip nuclear/cell volume ratio to avoid underflow
    
Point Process Model (PPM)
^^^^^^^^^^^^^^^^^^^
Learn more `here <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5308220/pdf/nihms847685.pdf>`_

*options.model.ppm.datetime_str* (optional) **[date-time]**
    * Date and time of when the model was initated

*options.model.ppm.sigma* (optional) **[5]**
    * Standard deviation of a gaussian distribution
   
*options.model.ppm.thresPerc* (optional) **[0.1]**
    * Threshold percentage of the max value after filtering the image
    
*options.model.ppm.mask_inverted_color_flag* (optional) **[false]**
    * Boolean value to invert the mask colors if need be
    
options.model.ppm.dummy_num* (optional) **[50]**
    * Number of dummy points to generate per ROI (Regions of Interest)

options.model.ppm.rand_num* (optional) **[70000]**
    * Number of random numbers to be generated

options.model.ppm.cv_mode* (optional) **[rd_roi]**
    * Cross validation option to run on either ROIs (Regions of interest) or entire image (rd_img)

options.model.ppm.fold* (optional) **[3]**
    * Number of folds or divisions of the data to do. Equivalent to k-folds for cross validation

options.model.ppm.cv_round* (optional) **[1]**
    * Number of cross validation rounds to complete
