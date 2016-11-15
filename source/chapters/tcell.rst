T cell model documentation

Overview:

General idea: the model is used for building model for 3D cells with protein patterns, especially for 4D movies. And we assume different cells have similar cell shape and can map to a template. The model is based on the t cell model in the Royal et al. 2016. It is useful for quantitative analysis of proteins in T cells and also other cells. Like other models in CellOrganizer, it contains two parts: training and synthesis. Training part: train a morphing model from the original images; synthesis: synthesize cells with protein pattern from the model. 

In the training part: it uses t cell movies and the annotation of the synapse positions of the t cells as input. It contains these steps: cropping, segmentation, rigid alignment, non-rigid alignment (morphing) and model-building. 

In the synthesis part, it takes a t cell model (if need specific shape of  cells, also a cell shape model) as input. It contains: voxel sampling, shape registration, and voxel mapping. 


Training


demo3Dtcell_train.m

The training demo is demo3Dtcell_train.m in demos/3D/demo3Dtcell_train/

Basically, synapse location is the required input. And the detailed explanation of the synapse annotation is in the chapter XXXX. The explanation of the parameters are in the demo. 


Img2model.m

With the idea of modulability of cellorganizer, t cell model is somehow modulized that it use a interface in img2model.m which is the interface of model building. 


tcell_setup_options.m

it is called by setup_data.m in img2model.m. The function of the script is to set up the basic options as input for the further steps, such as, making directories in the temp directories, getting template information, getting parameters for segmentation, get parameters for morphing and so on. 

tcell_imgs2params.m

The script is called in img2model.m.

The idea is to first parameterize the images before building the model. This script is the main script for image parameterization.


tcell_img2param.m

The script is called in tcell_imgs2param.m. The script calls tcell_to_parameter.m to extract parameters for each cell. 


tcell_to_parameter.m

The script is called in tcell_img2param.m. The script is the main script to parameterize a cell. The input of the function are: cell_options: the option that specific to the cell, such as cell index; options: general options that contains the information for the input of the functions. The output is the parameter of the cell. 

It first gets the options of the cell, then by step, it calls tcell_produce_windows.m (crop the big image to just contain the bounding box of the target cell), tcell_segment_windows.m (segment the cell in the chosen region), tcell_align_segmentations.m (rigid alignment of the segmented cell so that the synapse region face upward approximately), tcell_morph_segmentations.m (non-rigid alignment of the aligned cell to a half-elipsoid template). 


tcell_produce_windows.m

The inputs are t_cell_info, options, the former one contains the general information for the pipeline, and the latter contains the information for the specific cell. The output is  t_cell_info. And the output result relative to the cell is saved in the disk. 

The idea is to use the coordinates in the annotation file and crop a bounding box that contains the cell with fixed size (71 X 71 X 35). 

tcell_segment_windows.m

The inputs are t_cell_info, options, the former one contains the general information for the pipeline, and the latter contains the information for the specific cell. The output is  t_cell_info. And the output result relative to the cell is saved in the disk.

The idea is to use the cropped image in the disk, and perform a two-stage snake segmentation. The first stage is the coarse stage which is intended to find the approximate contour that fit the cell and the second stage is the fine stage that uses the contour from the first stage to refine the segmentation. The technique detail can be referred to Royal et al. And the segmentation is saved as a polygon mesh in the disk. 


tcell_align_segmentations.m

The inputs are t_cell_info, options, the former one contains the general information for the pipeline, and the latter contains the information for the specific cell. The output is  t_cell_info. And the output result relative to the cell is saved in the disk.

The idea is to use the segmented image in the disk, and align the cell so that the synapse region approximately face up. We use the left and right end point of the synapse region from the annotation and the centroid of the cell as landmarks. The z coordinates of the left and right end points are inferred by weighted intensity in the neighborhood. The we used procrustes analysis with the corresponding landmarks in the template to get the transformation matrix.  Further more, we rescaled the image to the volume of the template. And the image is then transformed based on the transformation matrix. And the aligned image is saved as a binary image in the disk.
 

tcell_morph_segmentations.m

The inputs are t_cell_info, options, the former one contains the general information for the pipeline, and the latter contains the information for the specific cell. The output is  t_cell_info. And the output result relative to the cell is saved in the disk.

The idea is to use the aligned image in the disk, and morph the cell to the template. After rigid alignment, the cell is approximately similar to the template. To further exploring the relationship of the cell and the template, we use a registration method LDDMM model which can map the one image to another image by wrapping the image. After that, we can project the voxels in the aligned image to the voxels in the template, so that different cells can be comparable. 

After this step, we parameterize the image with the standardized shape. And the next step is to build the model using the parameters of all cells. 

tcell_build_models.m

The function is called in img2model.m after parameterizing of the cells. It uses t_cell_info and options as input and output. 

The basic idea is to take all standardized cells in, and build an average model of the cells voxel by voxel. If there is input of different time points, then it will build models for each time point. 

To specify the methods for the model type, it first calls tcell_get_model_type_info.m. Then it builds the model following the algorithm of the model type. 

The model(s) is saved in the disk. Here the model is not the valid type of model for CellOrganizer, and we need to further process the model. 


tcell_adapt_models.m

The function is called in img2model.m after building the model. It uses t_cell_info and options as input and output. 

The purpose of the function is to adapt the model from the t cell pipeline to the valid protein model in CellOrganizer. It setup the necessary options for the model and put the learned model in the model structure. 

After this step, the model is a valid protein model, and will be further process by functions the same as other protein models in CellOrganizer, i.e. img2model.m, img2slml.m 



Synthesis


demo3Dtcell_synth.m

The synthesis demo is demo3Dtcell_synth.m in demos/3D/demo3Dtcell_synth/

The demo takes in two models: one model contains both cell and nuclear shape models, and the other contains a t cell protein shape model. Same as other synthesis framework, it calls slml2img for the synthesis. The meanings of the options are commented in the script. 

If there is input of a cell shape(nuclear shape is optional) model, then it will first synthesize a cell shape and nuclear shape model. Otherwise it will use the shape of the template as the cell shape. 

The wrapper for t cell protein pattern synthesize is in model2instance.m 


model2instance.m

It calls model2tcell.m to synthesize the protein pattern with the input of nucleus, cell shape and the model.


model2tcell.m

The main function for t cell protein pattern synthesis. 
Input: nucleus: nucleus shape; cellMembrane: cell shape; model: protein model for t cell; param: input options.
Output: object: t cell protein pattern,resolution: resolution of the model. 

It contains the pipeline for the synthesis. 
tcell_voxel_intensity_sampling.m is used for sampling protein pattern from the t cell model. 
tcell_cell_shape_matching.m is used for mapping the protein image in the template to the input cell shape. 


tcell_voxel_intensity_sampling.m

Input: proteinModel: the model for t cell; param: options for the pipeline.

The idea is to sampling the intensities for the voxels from the model. And we provide two methods:
Gaussian: using the model mean and standard deviation to sample the voxels. 
Empirical: using the empirical distribution of each voxel to sample the intensity. 


tcell_cell_shape_matching.m

After sampling the intensity of the protein pattern, then we map the shape of the template to the shape of the synthesized cell shape. The mapping also uses LDDMM model in CellOrganizer. And in mapping we also rescale the image to the cell shape image. 

After this step, we have the images for cell shape, nuclear shape and protein pattern. And these images are further processed by the functions, the same as other synthesis frameworks in CellOrganizer. 









