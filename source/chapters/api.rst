.. api:

API
===


.. note::

   This section only includes the headers of the most important functions
   in CellOrganizer.

This is the documentation included with the main methods

im2blender
**********

Method header::

    function [shiftvector, answer] = im2blender( img, savefile, downsample, patchsample, shiftvector_flag)
    % IMG2BLENDER Exports a generated instance from CellOrganizer to a .obj mesh format
    % that can be read by Blender.
    %
    %
    % List Of Input Arguments     Descriptions
    % -----------------------     ------------
    % img                         a 3D image you wish to obtain the mesh for
    % downsample                  factor by which you wish to downsample
    % savefile                    the path and file name you wish to save the generated file as
    % patchsample                 the percentage of the verticies calculated that the user
    %                             wants kept. Keeping more will result in a larger .obj file but have
    %                             better resolution. Default value is 0.05
    % shiftvector                 a 1x3 vector of the amount to shift the resulting mesh.
    %
    % This is used to place the mesh at the origin when called with syn2blender.
    %
    % List Of Outputs             Descriptions
    % ---------------             ------------
    % shiftvector                 a 1x3 vector of the amount to shift the resulting mesh.
    % answer                      boolean flag that indicates if the test was successful

im2projection
*************

Method header::

    function out_img = im2projection( img, param )
    % IM2GPROJECTION creates a sum or mean projection of the input image
    %
    % List Of Input Arguments   Descriptions
    % -----------------------   ------------
    % img                       3D binary or realvalued image.
    % param                     struct with a 'method' field that can be set
    %                           to 'mean' if a mean value projection is desired
    %
    % List Of Outputs     Descriptions
    % ---------------     ------------
    % out_img             a 2D image that contains a projection
    %                     in each dimension of the original image

im2reshape
**********

Method header::

    function img = im2reshape( img )
    % IM2RESHAPE Reshapes a 3D images into a 2D representation
    %
    % List Of Input Arguments     Descriptions
    % -----------------------     ------------
    % img                         a 3D binary or realvalued image
    %
    % List Of Outputs     Descriptions
    % ---------------     ------------
    % img                 a 2D representation of the image

img2slml
********

Method header::

    function answer = img2slml( varargin )
    % IMG2SLML Trains a generative model of protein subcellular location from a
    % collection of microscope images and saves the model as an SLML instance.
    %
    % An SLML model consists of four components,
    % 1) a (optional) documentation component
    % 2) a nuclear pattern model,
    % 3) a cell pattern model and,
    % 4) a protein pattern model.
    %
    % List Of Input Arguments     Descriptions
    % -----------------------     ------------
    % dimensionality              2D/3D
    % dnaImagesDirectoryPath      DNA images collection directory
    % cellImagesDirectoryPath     Cell images collection directory
    % proteinImagesDirectoryPath  Protein images collection directory
    % options                     Options structure
    %
    % The input argument options holds the valid parameters for these components.
    % The shape of options is described below
    %
    % List Of Parameters        Descriptions
    % ------------------        ------------
    %
    % Mandatory parameters
    % --------------------
    % model.resolutions         Any double 1x2/1x3 double vector.
    %                           (microns/voxel).
    %
    % generic model options
    % ---------------------
    % masks                     (optional) Masks collection directory.
    %
    % train.flag                (optional) Selects what model is going to be trained ('nuclear',
    %                           'framework', or 'all'). Default is 'all'.
    %
    % model.name                (optional) Holds the name of the model. Default is empty.
    % model.id                  (optional) Holds the id of the model. Default is empty.
    % model.filename            Holds the output filename.
    % model.resolution          Model resolution (in microns per pixel). This
    %                           the resolution of the dataset used to train the model
    % downsampling              Downsampling vector used during preprocessing. Default value is
    %                           [5 5 1]. Final model resolution will be resolution * downsampling
    %                           vector and will be saved in the model as well
    %
    % Nuclear shape model options
    % ---------------------------
    % nucleus.type              Holds the nuclear model type. Default is
    %                           "medial axis" for 2D and "cylindrical_surface" for 3D
    % nucleus.name              (optional) Holds the name of the nuclear model. Default is empty.
    % nucleus.id                (optional) Holds the id of the nuclear model. Default is empty.
    %
    % Cell shape model options
    % ------------------------
    % cell.type                 Holds the cell model type. Default is "ratio".
    % cell.name                 (optional) Holds the name of the cell model. Default is empty.
    % cell.id                   (optional) Holds the id the cell model. Default is empty.
    %
    % Protein shape model options
    % ---------------------------
    % protein.type              (optional) Holds the protein model type. The default is "vesicle".
    % protein.name              (optional) Holds the name of the protein model. The default is empty.
    % protein.id                (optional) Holds the id of the protein model. The default is empty.
    % protein.class             Holds the protein class, e.g. lysosome, endosome.
    % protein.cytonuclearflag   (optional) Determines whether the protein pattern will be generated in
    %                           the cytosolic space ('cyto'), nuclear space ('nuc') or everywhere ('all').
    %                           Default is cyto.
    %
    % Documentation (optional)
    % ------------------------
    % This is an optional structure with multiple elements that holds documentation about this model.
    %
    % documentation.<name>      Holds the value of variable <name>. This is meant to be meta information. Default is empty.
    %
    % Helper Options
    % -------------
    % verbose                   (optional) Displays messages to screen. Default is true.
    % debug                     (optional) Reports errors and warnings. Default is false.

slml2img
********

Method header::

    function answer = slml2img( varargin )
    % SLML2IMG Synthesizes an image from a list of SLML models.
    %
    % Instances may be saved in the following forms:
    % a) tiff stacks: a 3D tiff image stack for each pattern generated using the input models
    % b) indexed images: a single 3D tiff image stack where each pattern is represented by a number 1-n
    % c) object mesh: a .obj mesh file for each pattern generated using the input models (blenderfile option)
    % d) SBML-Spatial file: a Systems Biology Markup Language (SBML) instance XML file utilizing the Spatial extension in level 3 version 1
    %
    %
    % List Of Input Arguments  Descriptions
    % -----------------------  ------------
    % models                   A cell array of filenames
    % options                  A structure holding the function options
    %
    % The shape of options is described
    %
    % List Of Parameters        Descriptions
    % ------------------        ------------
    % targetDirectory           (optional) Directory where the images are going to be saved. Default is current directory.
    % prefix                    (optional) Filename prefix for the synthesized images. Default is 'demo'
    % numberOfSynthesizedImages (optional) Number of synthesized images. Default is 1.
    % compression               (optional) Compression of tiff, i.e. 'none', 'lzw' and 'packbits'
    % microscope                (optional) Microscope model from which we select a point spread function. Default is 'none'
    % synthesis                 (optional) Synthesis parameter that allows to
    %                                      synthesize 'nucleus', 'framework' or 'all'. Default is 'all'
    % protein.cytonuclearflag   (optional) Defines the allowable region for protein placement.
    %                                      The default is the cytonuclearflag included in the model.
    % sampling.method           (optional) Can be 'disc', 'sampled' or 'trimmed'. Default is trimmed
    % savePDF                   (optional) Saves the probability density function for a given pattern during 2D synthesis. Default is false.
    % spherical_cell            (optional) Boolean flag that indicates whether a cell is spherical. Default is false.
    % overlapsubsize            (optional) Defines the downsampling fraction to perform during object overlap avoidance. Default is 0.3.
    % overlapthresh             (optional) Defines the amount of overlap that is allowed between objects. Default is 1.
    % rendAtStd                 (optional) Defines the number of standard deviations to render Gaussian objects at. Default is 2.
    % sampling.method.density   (optional) An integer. Default is empty.
    % protein.cytonuclearflag   (optional) Can 'cyto', 'nucleus' or 'all'. Default is all.
    % resolution.cell           (optional) The resolution of the cell and nucleus that are being passed in
    % resolution.objects        (optional) The resolution of the object model being synthesized
    % instance.cell             (optional) A binary cell image to be filled with objects. Default is empty.
    % instance.nucleus          (optional) A binary nuclear image to be filled with objects. Default is empty.
    % image_size                (optional) The image size. Default is [1024 1024] for both 2D and 3D in x and y
    % synthesis.diffeomorphic.maximum_iterations (optional) Integer defining the maximum number of iterations during diffeo inference. Default is 100.
    %
    % Random walk options
    % -------------------
    % randomwalk                (optional) Boolean flag of whether to perform a shape space walk. Default is False.
    % framefolder               (optional) The folder in which to look for completed frames and save finished frames from the diffeomorphic synthesis.
    %                                      The default is './frames/'.
    % walksteps                 (optional) The integer number of steps to walk during a shape space walk. Default is 1.
    % walk_type                 (optional) Type of random walk to perform. Default is 'willmore'.
    %
    % Helper options
    % --------------
    %
    % debug                     (optional) Keeps temporary results and catches
    %                           errors with full reports. Default is false;
    % display                   (optional) Will make pretty plots. Turning this
    %                           flag on will slow down synthesis. Default is
    %                           false.
    % verbose                   (optional) Print the intermediate steps to screen. Default is false.
    %
    % Outputs
    % -------
    % output.tifimages           (optional) Boolean flag specifying whether to write out tif images. Default is true.
    % output.indexedimage        (optional) Boolean flag specifying whether to write out indexed image. Default is false.
    % output.blenderfile         (optional) Boolean flag specifying whether to write out (.obj) files for use in blender. Default is false;
    % output.blender.downsample  (optional) ownsampling fraction for the creation of object files (1 means no downsampling, 1/5 means 1/5 the size).
    % output.SBML                (optional) boolean flag specifying whether to write out (.xml) files with SBML-Spatial representations of geometries. Default is false;

syn2projection
**************

Method header::

    % SYN2PROJECTION Makes projections from a set of images synthesized by
    % CellOrganizer
    %

    % List Of Input Arguments     Descriptions
    % -----------------------     ------------
    % imgfolder                   a folder of synthesized images by CellOrganizer
    % outputfolder                the path where you wish to save the generated files
    %
    % Parameter structure description
    %
    % List Of Parameters        Descriptions
    % ------------------        ------------
    % method                    (optional) either a sum or mean. default is sum
    % verbose                   (optional) verbose flag that displays progress
    % debug                     (optional) flag that displays debugging messages. default is false
    %
    % List Of Outputs     Descriptions
    % ---------------     ------------
    % answer              true if it saves all projections to disk

syn2surfaceplot
***************

Method header::

    function syn2surfaceplot( directory, colors, viewangles, alphaval )
    % IMG2PLOT Helper method that displays images generated by CellOrganizer
    %
    % List Of Input Arguments   Descriptions
    % -----------------------   ------------
    % directory                 a directory containing images from CellOrganizer
    % colors                    a cell array containing a list of valid colors as defined by Matlab
    %                           http://www.mathworks.com/help/techdoc/ref/colorspec.html
    % viewangles                a vector defining the viewing angle as defined by Matlab
    %                           http://www.mathworks.com/help/techdoc/ref/view.html
    % alphaval                  a value that determines the transparency of an object
    %                           http://www.mathworks.com/help/techdoc/ref/alpha.html
