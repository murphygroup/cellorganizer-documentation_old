Option Parameters Based on Functionality and Model Used
--------------------------------------------------

Img2sml
-----

General Parameters


* **debug** 		If set to true, then the function will (1) keep temporary results folder, (2) will print information useful for debugging. Default is false.

* **display**      	Default is false] If set to true, then plots useful for debugging with be open. This functionality is meant for debugging only, setting this to true will considerably slow down computation.

* **save_segmentations**    Will save the segmentations to the model file. Setting this option to true will create a considerably large file.
                               
* **Masks** [Optional] 	      Masks collection Directory.
* **Train.flag** [Optional]   [default is “all”] Selects what model is going to be trained (‘nuclear’, ‘framework’, or ‘all’). 
* **Model Name** [Optional]   [default is empty] Holds the name of the model. 
* **Model Id** [Optional]     Holds the id of the model. Default is a randomly generated string.
* **Model Filename**          Holds the output filename.
* **Downsampling**            the downsampling vector to be used during preprocessing.
	
PCA Model
---------

**Mandatory**
^^^^^^^^^^^^^
* **Latent_dim** [default is 15] This option specifies how many latent dimensions (principal vectors or principal components) should be used for modeling the shape space.  Valid values are positive integers.   
* **imagesize** [1024, 1024] refers to the size resolution of the image being output.    

**Optional**
^^^^^^^^^^^^
* **Compression**  [default is ‘lzw’] compresses the header of an OME.TIFF image output.     
* **Random_sampling**  random sampling of images is performed by interpolation between two exiting images.
* **Pca_synthesis_method** ['reconstruction' or 'random_sampling'] reconstruct images from the model; ‘random_sampling’ random sampling images by interpolation between two exiting images. 
* **NumberOfSynthesizedImages** [default is 1] the final image produced by the model. 
* **targetDirectory** [default ‘pwd’] the directory path where the image is going to be saved.

Diffeomorphic Model
-------------------

**Mandatory**
^^^^^^^^^^^^^
* **model.diffeomorphic.distance_computing_method** [default is ‘faster’]  This option specifies
* **model.diffeomorphic.com_align** [default is ‘nuc’]  

**Optional**
^^^^^^^^^^^^
* **model.microtubule.searchparams.n** [50:100:500]
* **model.microtubule.searchparams.mulen** [10:10:50]
* **model.microtubule.searchparams.colli_min_number** [0.97, 1 ]

T-Cell Distribution Model
-------------------------

**Mandatory**
^^^^^^^^^^^^^
* **model.tcell.synapse_location**  File path to annotation of the synapse positions of the T cells as input.
* **model.tcell.results_location**  File path for where the results should be saved.
* **model.tcell.named_option_set**  The running choice for CellOrganizer and one sensor of two-point annotation.
* **model.tcell.model_type_to_include**  Set up for model to include.
* **model.tcell.infer_synapses**  [default is ] true or false.

**Optional**
^^^^^^^^^^^^
* **model.tcell.use_two_point_synapses**  [default one-point] Set up the mode of synapse to use, if needed you can use two-point by set up the option as true.
* **model.tcell.timepoints_to_include**  If creation of models for only a subset of the time points is desired, edit to specify which time points to include.
* **model.tcell.adjust_one_point_alignment**  [default is ]  Set up alignment adjustment true or false.
* **model.tcell.ometiff**  [default ‘false’] If true, then it assumes images are OME.TIFFs with annotations. 

3D SPHARM-RPDM model
--------------------

**Mandatory**
^^^^^^^^^^^^^
* **model.spharm_rpdm.components**  [default is ] This specifies which components should be included in the shape model. The valid values are {'cell'}, {'nuc'}, or {'cell', 'nuc'}.

**Optional**
^^^^^^^^^^^^
* **model.spharm_rpdm.alignment_method**  [default is ‘major_axis’]method by which cells willbe aligned when producing shape descriptors. The possible values are 'major_axis' or 'foe'.
* **model.spharm_rpdm.rotation_plane** Dimensions of image that will used for alignment. The possible values are 'xy' (defaut), 'xz', 'yz' or ‘xyz'. For example, xy plane (around the z axis). if ‘xy‘ is specified, each cell will be rotated in the 
* **model.spharm_rpdm.postprocess** [default is ‘true’] This specifies whether alignment and size normalization, should be done after parameterization. The values are ‘true’ or ‘false’.
* **model.spharm_rpdm.maxDeg** [default is 31] This specifies the degree up to which spherical harmonics should be calculated. Valid values are positive integers. 
* **model.spharm_rpdm.latent_dim**  [default is 15] This specifies how many latent dimensions should be used for modeling the shape space. Valid values are positive integers. 
