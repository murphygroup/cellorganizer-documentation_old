Option Parameters Based on Functionality and Model Used
--------------------------------------------------

Img2slml
-----

General Parameters
---------

**Mandatory**
^^^^^^^^^^^^^

**debug** 		
    * If set to true, then the function will (1) keep temporary results folder, (2) will print information useful for debugging. 
    * Default: false.

**display**     
    * If set to true, then plots useful for debugging with be open. This functionality is meant for debugging only, setting this to true will considerably slow down computation.
    * Default: false

**save_segmentations**  
    * Will save the segmentations to the model file. Setting this option to true will create a considerably large file.

**Optional**
^^^^^^^^^^^^                               
**Masks**  
    * Masks collection Directory.

**Train.flag**  
    * Selects what model is going to be trained (‘nuclear’, ‘framework’, or ‘  all’). 
    * default: “all”

**Model Name**   
    * Holds the name of the model. 
    * default: empty

**Model Id**      
    * Holds the id of the model. 
    * Default is a randomly generated string.

**Mode** 
    * Holds the outp*  ut filename.

**Downsampling** 
    * The downsampling vector to be used during preprocessing.
	
PCA Model
---------

**Mandatory**
^^^^^^^^^^^^^
**Latent_dim**     
    * This option specifies how many latent dimensions (principal vectors or principal components) should be used for modeling the shape space.  Valid values are positive integers.
    * Default: 15

**imagesize** 
    * refers to the size resolution of the image being output.    
    * Default: [1024, 1024]

**Optional**
^^^^^^^^^^^^
**Compression**  
    * compresses the header of an OME.TIFF image output.
    * default is ‘lzw’

**Random_sampling** 
    * random sampling of images is performed by interpolation between two exiting images.

**Pca_synthesis_method**
    *  ['reconstruction' or 'random_sampling'] reconstruct images from the model; ‘random_sampling’ random sampling images by interpolation between two exiting images. 


**NumberOfSynthesizedImages**
    * The final image produced by the model. 
    *  default: 1

**targetDirectory** 
    * the directory path where the image is going to be saved.
    * default: ‘pwd’

Diffeomorphic Model
-------------------

**Mandatory**
^^^^^^^^^^^^^
**model.diffeomorphic.distance_computing_method**  
    * This option specifies
    * default: ‘faster’

**model.diffeomorphic.com_align** 
    * 
    * default: ‘nuc’  

**Optional**
^^^^^^^^^^^^
**model.microtubule.searchparams.n** 
    *
    * [50:100:500]

**model.microtubule.searchparams.mulen** 
    * 
    * [10:10:50]

**model.microtubule.searchparams.colli_min_number** 
    * 
    * [0.97, 1 ]

T-Cell Distribution Model
-------------------------

**Mandatory**
^^^^^^^^^^^^^
**model.tcell.synapse_location**  
    * File path to annotation of the synapse positions of the T cells as input.

**model.tcell.results_location** 
    * File path for where the results should be saved.

**model.tcell.named_option_set** 
    * The running choice for CellOrganizer and one sensor of two-point annotation.

**model.tcell.model_type_to_include** 
    * Set up for model to include.
    * 

**model.tcell.infer_synapses** 
    * 
    *  [default is ] true or false.

**Optional**
^^^^^^^^^^^^
**model.tcell.use_two_point_synapses**  
    * Set up the mode of synapse to use, if needed you can use two-point by set up the option as true.
    * default one-point

**model.tcell.timepoints_to_include**  
    * If creation of models for only a subset of the time points is desired, edit to specify which time points to include.

**model.tcell.adjust_one_point_alignment**    
    * Set up alignment adjustment true or false.
    * default:

**model.tcell.ometiff**   
    *  If true, then it assumes images are OME.TIFFs with annotations. 
    * default: ‘false’

3D SPHARM-RPDM model
--------------------

**Mandatory**
^^^^^^^^^^^^^
**model.spharm_rpdm.components**    
    * This specifies which components should be included in the shape model. The valid values are {'cell'}, {'nuc'}, or {'cell', 'nuc'}.
    * default is

**Optional**
^^^^^^^^^^^^
**model.spharm_rpdm.alignment_method** 
    * method by which cells willbe aligned when producing shape descriptors. The possible values are 'major_axis' or 'foe'.
    * default: ‘major_axis’

**model.spharm_rpdm.rotation_plane** 
    * Dimensions of image that will used for alignment. The possible values are 'xy' (defaut), 'xz', 'yz' or ‘xyz'. For example, xy plane (around the z axis). if ‘xy‘ is specified, each cell will be rotated in the 

**model.spharm_rpdm.postprocess**  
    * This specifies whether alignment and size normalization, should be done after parameterization. The values are ‘true’ or ‘false’.
    * default: ‘true’

**model.spharm_rpdm.maxDeg**  
    * This specifies the degree up to which spherical harmonics should be calculated. Valid values are positive integers. 
    * default: 31

**model.spharm_rpdm.latent_dim**  
    * This specifies how many latent dimensions should be used for modeling the shape space. Valid values are positive integers. 
    * default is 15