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
*********************

demo3D01 walkthrough
--------------------

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


Training Demos
===============

Tables
======
.. exec::
	print commands.getoutput('python make_tabulate.py test_make_tabulate.txt')

demo3D00
--------------------
Synthesizes one image using a lysosomal model with sampling mode
set to 'disc' and no convolution.
Results will be three TIFF files, one each for cell boundary,
nuclear boundary, and lysosomes, in folder "synthesizedImages/cell1"

.. figure:: images/demo3D00/cell1_ch2.jpg
   :align: center

demo3D02
--------------------
Take results from demo3D00 in
folder "../demo3D00/synthesizedImages/cell1"
and generate surface plot

.. figure:: images/demo3D02/output.png
   :align: center

demo3D03
--------------------
Synthesize one 3D image from all object models,
with sampling mode set to 'sampled' at a density of 75 and no convolution.
Results will be six TIFF files, one each for
cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes,
and endosomes, in folder "synthesizedImages/cell1"

.. figure:: images/demo3D03/cell1_ch3.jpg
   :align: center

demo3D04
--------------------
Synthesize one 3D image from microtubule model and no convolution.
Results will be three TIFF files, one each for
cell boundary, nuclear boundary, and microtubules,
in folder "synthesizedImages/cell1"

.. figure:: images/demo3D04/cell1_ch2.jpg
   :align: center

demo3D05
--------------------
Synthesize one 3D image from all object models and a microtubule model,
with sampling mode set to 'sampling' and no convolution.
Results will be seven TIFF files, one each for
cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes,
endosomes, and microtubules, in folder "synthesizedImages/cell1"

.. figure:: images/demo3D05/cell1_ch3.jpg
   :align: center

demo3D06
--------------------
Synthesize one 3D image from all object models and a microtubule model,
with sampling mode set to 'disc' and convolution with point-spread function.
Results will be seven TIFF files, one each for
cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes,
endosomes, and microtubules, in folder "synthesizedImages/cell1"

.. figure:: images/demo3D06/cell1_ch3.jpg
   :align: center

demo3D07
--------------------
Synthesize one 3D image from all object models and a microtubule model,
with sampling mode set to 'sampled' at a density of 25 and
convolution with point-spread function.
Results will be seven TIFF files, one each for
cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes,
endosomes, and microtubules, in folder "synthesizedImages/cell1"

.. figure:: images/demo3D07/cell1_ch3.jpg
   :align: center

demo3D08
--------------------
Synthesize one 3D image from all object models and a microtubule model,
with sampling mode set to 'disc' without convolution.
Results will be an indexed image in a single TIFF file, with one index
each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes,
endosomes, and microtubules, in folder "synthesizedImages/cell1"

demo3D09
--------------------
Synthesize one 3D image from a lysosome model,
with sampling mode set to 'disc' without convolution.
Results will be three TIFF files, one each for
cell boundary, nuclear boundary, and lysosomes
in folder "synthesizedImages/cell1"
Also produce a mean projection of the cell boundary in
XY, XZ and YZ directions and save it in file 'projection.tif'

.. figure:: images/demo3D09/cell1_ch2.jpg
   :align: center

demo3D10
--------------------
Synthesize 1 instance using a lamp2 model with sampling mode
set to 'disc' and no convolution.
Results will be three .obj files, one each for
cell boundary, nuclear boundary, and lamp2,
in folder "synthesizedImages/cell1"
It outputs OBJ files that can be imported into Blender.

.. figure:: images/demo3D10/blender.png
   :align: center

demo3D11
--------------------
Trains a generative model of the cell framework using the four patterns in the 3D HeLa dataset from the Murphy Lab

demo3D12
--------------------
Trains a generative model of the framework using one of the four patterns in the HeLa dataset

demo3D13
--------------------
This demo show the usage of syn2blender, a helper method that takes a
folder of synthesized images and exports the images as object files
that can be imported in Blender. This demo uses the images in demo3D03

demo3D14
--------------------
This demo show the usage of syn2projection, a helper method that makes
projection using a folder of synthesized images

.. figure:: images/demo3D14/lysosome1.jpg
   :align: center

demo3D15
--------------------
Synthesizes one image using a transferrin model for the protein and a diffeomorphic model for the nuclear and cell shape
Results will be three TIFF files, one each for cell boundary,
nuclear boundary, and protein, in folder "synthesizedImages/cell1"

.. figure:: images/demo3D15/cell1_ch2.jpg
   :align: center

demo3D16
--------------------
This method shows how to input an image to CellOrganizer.
The main idea behind this demo is to show the user they
can use their own binary images from raw experimental data. They can use
them to synthesize protein patterns. The current demo assumes the resolution
of the images is the same as the images that were used to train the
protein model. This demo uses the framework synthesized from demo3D15. In
this case, the resolution at which the diffeomorphic and vesicle model were
trained on are different. This demo also shows how to handle that situation
in CellOrganizer

.. figure:: images/demo3D16/cell1_ch2.jpg
   :align: center

demo3D18
--------------------
Trains a generative model of the framework using the holefinding
functionality

demo3D19
--------------------
This method shows the use of slml2report for creating comparisons between
parameters of CellOrganzier models.

demo3D20
--------------------
Trains a generative model of the framework using one diffeomorphic model

demo3D21
--------------------
Trains a generative model of the framework using the holefinding
functionality. The same demo as demo3D18 but with no scaling of the
images.

demo3D22
--------------------
Synthesizes a protein pattern instance for each of the synthetic images
from demo3DDiffeoSynth

demo3DMultiresSynth
--------------------
Synthesize multiple 3D images from a lysosome model, at different resolutions

.. figure:: images/demo3DMultiresSynth/cell1_ch2.jpg
   :align: center

demo3DObjectAvoidance
--------------------
Synthesizes one image using a lysosomal model with sampling mode
set to 'disc', no convolution using the object avoidance methods
Results will be three TIFF files, one each for cell boundary,
nuclear boundary, and lysosomes, in folder "synthesizedImages/cell1"
It generates OBJ files that can be imported into Blender.

.. figure:: images/demo3DObjectAvoidance/blender.png
   :align: center

demo3DPrimitives
--------------------
Synthesizes 1 image using a lysosomal model with sampling mode
set to 'disc', no convolution and output.SBML set to true
Results will be three TIFF files, one each for cell boundary,
nuclear boundary, and lysosomes, in folder "synthesizedImages/cell1"
Additionally, in the folder "synthesizedImages/" will be a
SBML-Spatial(v0.82a) formatted .xml file containing constructed solid
geometry(CSG) primitives for lysosomes and parametric objects for the
cell and nuclear shapes.
These files can then be read into VCell using the built in importer or
CellBlender using the helper function provided in this distribution.
