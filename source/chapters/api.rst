.. api:

API
===

These is the documentation attached to each of the main methods

img2slml
********

Method header::

    function answer = img2slml( varargin )
    % IMG2SLML Trains a generative model of protein subcellular location from a
    % collection of microscope images and saves the model as an SLML instance. An SLML model
    % consists of four components, a (optional) documentation component, a nuclear pattern model,
    % a cell pattern model and a protein pattern model. The input argument param holds the valid
    % options for these components.
    %
    % Arguments                   Description
    % ---------                   ------------
    % dimensionality              2D/3D
    % dnaImagesDirectoryPath      DNA images collection directory
    % cellImagesDirectoryPath     Cell images collection directory
    % proteinImagesDirectoryPath  Protein images collection directory
    % param                       Parameter structure
    %
    % The shape of param is described
    %
    % List Of Parameters        Descriptions
    % ------------------        ------------
    % documentation (optional)
    % ------------------------
    % This is an optional structure with multiple elements that holds documentation about this model.
    %
    % documentation.<name>      Holds the value of variable <name>. This is meant to be meta information. Default is empty.
    %
    % generic model options
    % ---------------------
    % model.name                (optional) Holds the name of the model. Default is empty.
    % model.id                  (optional) Holds the id of the model. Default is empty.
    % model.filename            Holds the output filename.
    % model.resolution          Model resolution (in microns per pixel). This
    %                           the resolution of the dataset used to train the model
    % model.downsampling        Downsampling vector used during preprocessing. Default value is
    %                           [5 5 1]. Final model resolution will be resolution * downsampling
    %                           vector and will be saved in the model as well
    %
    % nuclear shape model options
    % ---------------------------
    % nucleus.type              Holds the nuclear model type. Default is
    %                           "medial axis" for 2D and "cylindrical_surface" for 3D
    % nucleus.name              (optional) Holds the name of the nuclear model. Default is empty.
    % nucleus.id                (optional) Holds the id of the nuclear model. Default is empty.
    %
    % cell shape model options
    % ------------------------
    % cell.type                 Holds the cell model type. Default is "ratio".
    % cell.name                 (optional) Holds the name of the cell model. Default is empty.
    % cell.id                   (optional) Holds the id the cell model. Default is empty.
    %
    % protein shape model options
    % ---------------------------
    % protein.type              (optional) Holds the protein model type. The default is "vesicle".
    % protein.name              (optional) Holds the name of the protein model. The default is empty.
    % protein.id                (optional) Holds the id of the protein model. The default is empty.
    % protein.class             Holds the protein class, e.g. lysosome, endosome.
    % protein.cytonuclearflag   (optional) Determines whether the protein pattern will be generated in
    %                           the cytosolic space ('cyto'), nuclear space ('nuc') or everywhere ('all').
    %                           Default is cyto.
    %
    % other options
    % -------------
    % verbose                   (optional) Displays messages to screen. Default is true.
    % debug                     (optional) Reports errors and warnings. Default is false.
    % train.flag                (optional) Selects what model is going to be trained ('nuclear',
    %                           'framework', or 'all'). Default is 'all'.

slml2img
********

Method header::

    function answer = slml2img( varargin )
    % SLML2IMG Synthesizes an instance from a collection
    % of SLML Level 1.0 Version 1.* models.
    % instances may be saved in the following forms:
    % Tiff stacks = a 3D tiff image stack for each pattern generated using the input models
    % indexed images = a single 3D tiff image stack where each pattern is represented by a number 1-n
    % object mesh = a .obj mesh file for each pattern generated using the input models (blenderfile option)
    % SBML-Spatial file = a systems biology markup language(SBML) formatted xml file utilizing the spatial extension in level 3 version 1
    %
    %
    % COMMENT: When the method is not deployed the shape of the input arguments is
    % slml2img( models, param )
    %
    % List Of Input Arguments  Descriptions
    % -----------------------  ------------
    % models                   A cell array of filenames
    % param                    A structure holding the function options
    %
    % The shape of param is described
    %
    % List Of Parameters        Descriptions
    % ------------------        ------------
    % targetDirectory           (optional) Directory where the images are going to be saved. Default is current directory.
    % prefix                    (optional) Filename prefix for the synthesized images. Default is 'demo'
    % numberOfSynthesizedImages (optional) Number of synthesized images. Default is 1.
    % compression               (optional) Compression of tiff, i.e. 'none', 'lzw' and 'packbits'
    % debug                     (optional) Keeps temporary results and catches errors with full reports
    % display                   (optional) Display flag for figures
    % verbose                   (optional) Print the intermediate steps to screen. Default is true.
    % microscope                (optional) Microscope model from which we select a point spread function. Default is 'none'
    % synthesis                 (optional) Synthesis parameter that allows to
    %                                      synthesize 'nucleus', 'framework' or 'all'. Default is 'all'
    % protein.cytonuclearflag   (optional) Defines the allowable region for protein placement.
    %                                      The default is the cytonuclearflag included in the model.
    % sampling.method           (optional) Can be 'disc' or 'sampled'. Default is trimmed
    % savePDF                   (optional) Saves the probability density function for a given pattern during 2D synthesis. Default is False.
    % spherical_cell            (optional) Boolean flag that indicates whether a cell is spherical. Default is False.
    % synthesis.diffeomorphic.maximum_iterations (optional) Integer defining the maximum number of iterations during diffeo inference. Default is 100.
    % randomwalk                (optional) Boolean flag of whether to perform a shape space walk. Default is False.
    % framefolder               (optional) The folder in which to look for completed frames and save finished frames from the diffeomorphic synthesis.
    %                                      The default is './frames/'.
    % walksteps                 (optional) The integer number of steps to walk during a shape space walk. Default is 1.
    % walk_type                 (optional) Type of random walk to perform. Default is 'willmore'.
    % overlapsubsize            (optional) Defines the downsampling fraction to perform during object overlap avoidance. Default is 0.3.
    % overlapthresh             (optional) Defines the amount of overlap that is allowed between objects. Default is 1.
    % rendAtStd                 (optional) Defines the number of standard deviations to render gaussian objects at. Default is 2.
    % sampling.method.density   (optional) An integer. Default is empty.
    % protein.cytonuclearflag   (optional) Can 'cyto', 'nucleus' or 'all'. Default is all.
    % resolution.cell           (optional) The resolution of the cell and nucleus that are being passed in
    % resolution.objects        (optional) The resolution of the object model being synthesized
    % instance.cell             (optional) A binary cell image to be filled with objects. Default is empty.
    % instance.nucleus          (optional) A binary nuclear image to be filled with objects. Default is empty.
    % image_size                (optional) The image size. Default is [1024 1024] for both 2D and 3D in x and y
    % spherical_cell            (optional) Indicates whether the cell is spherical or not. Default is FALSE
    %
    % output.tifimages           (optional) boolean flag specifying whether to write out tif images
    % output.indexedimage        (optional) boolean flag specifying whether to write out indexed image
    % output.blenderfile         (optional) boolean flag specifying whether to write out (.obj) files for use in blender
    % output.blender.downsample  (optional) downsampling fraction for the creation of object files (1 means no downsampling, 1/5 means 1/5 the size)
    % output.SBML                (optional) boolean flag specifying whether to write out (.xml) files with SBML-Spatial representations of geometries
