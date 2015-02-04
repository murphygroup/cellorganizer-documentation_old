
Demos
=====

2D/3D Demos
***********
For convenience, a series of demos are included with each distribution of CellOrganizer. These demos show 

* how synthesize images from existing models, 
* how to train new models from raw data, as well as
* other functionality, e.g. exporting examples in multiple formats.

To display information about the available demos contained in the distribution, type in Matlab terminal::

	>> demoinfo

The included demos are

.. include:: chapters/other/list_of_demos.rst

Image Synthesis Demos
=====================
If you are interested in learning how to use `slml2img` to synthesize an image from
multiple models, then you should explore `demo3D01` first.

To run this demo, type::

	cd( ‘/path/to/cellorganizer’ );
	setup;
	demo3D01();

.. figure:: images/demo3D01/cell1_ch5.jpg
   :align: center
   
   This is a sum projection that includes the nucleus, the cell boundary and nucleoli. This image was generated using
   `img2projection`.


All demos are seeded, meaning that when you run them, you should get the same results shown here and 
included in the distribution. This demo synthesizes one image saved to disk as multiple tiff files. Each
tiff file correspond to one channel. Because this demo uses four models we should expect to find six tiff 
files. One for the nuclear channel, one for the cell boundary and then four files; one for each protein pattern 
included in each of the files::

	function answer = demo3D01( param )
	% demo3D01
	%
	% Synthesize one 3D image from all object models, 
	% with sampling mode set to 'disc' and no convolution.
	% Results will be six TIFF files, one each for 
	% cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, 
	% and endosomes, in folder "synthesizedImages/cell1"

	curr_path = which('demo3D01.m');
	curr_path = curr_path(1:end-10);
	cd(curr_path);

	outputDirectory = pwd;

	if nargin == 0
	    param = [];
	end

	param = ml_initparam( param, ...
	    struct( 'numberOfSynthesizedImages', 1 ) );
	param = ml_initparam( param, ...
	    struct( 'seed', 3 ) );
	param.targetDirectory = outputDirectory;
	param.prefix = 'synthesizedImages';
	param.compression = 'lzw';
	param.microscope = 'none';
	param.sampling.method = 'disc';
	param.verbose = true;
	param.debug = false;

	try
	 state = rng( param.seed );
	catch
	 state = RandStream.create('mt19937ar','seed', param.seed );
	 RandStream.setDefaultStream(state);
	end

	answer = slml2img( {'../../../models/3D/lamp2.mat', ...
	  '../../../models/3D/mit.mat', ...
	  '../../../models/3D/nuc.mat', ...
	  '../../../models/3D/tfr.mat'}, param );


This demo allows you to pass in two parameters

* `param.numberOfSynthesizedImages`. Default value is 1. Can be any integer.
* `param.seed`. Default value is 3. Use any integer to generate a new stream of pseudo-random numbers.

For example, you can run::

	cd( ‘/path/to/cellorganizer’ );
	setup;
	param.numberOfSynthesizedImages = 25;
	demo3D01();

to synthesize 25 images with the same seed, or::

	cd( ‘/path/to/cellorganizer’ );
	setup;
	param.seed = 5;
	demo3D01();

to synthesize one image that looks different from the one included with the distribution, or::

	cd( ‘/path/to/cellorganizer’ );
	setup;
	param.numberOfSynthesizedImages = 25;
	param.seed = 5;
	demo3D01();

to generate multiple images with a different seed. 

Training Demos
===============