* `demo2D00`. Synthesize one 2D image from all object models. Results will be one TIFF file, with six slices, one each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, and endosomes.

* `demo2D01`.Trains a 2D generative model of protein location using the 2D HeLa dataset provided by the Murphy Lab.

* `demo2D02`. Synthesize one 2D image from the LAMP2 model trained in demo2D01.

* `demo3D00`. Synthesizes 1 image using a lysosomal model with sampling mode set to 'disc' and no convolution. Results will be three TIFF files, one each for cell boundary, nuclear boundary, and lysosomes, in folder "synthesizedImages/cell1"

* `demo3D01`. Synthesize one 3D image from all object models, with sampling mode set to 'disc' and no convolution. Results will be six TIFF files, one each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, and endosomes, in folder "synthesizedImages/cell1"

* `demo3D02`. Take results from demo3D00 in folder "../demo3D00/synthesizedImages/cell1" and generate surface plot

* `demo3D03`. Synthesize one 3D image from all object models, with sampling mode set to 'sampled' at a density of 75 and no convolution. Results will be six TIFF files, one each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, and endosomes, in folder "synthesizedImages/cell1"

* `demo3D04`. Synthesize one 3D image from microtubule model and no convolution. Results will be three TIFF files, one each for cell boundary, nuclear boundary, and microtubules, in folder "synthesizedImages/cell1"

* `demo3D05`. Synthesize one 3D image from all object models and a microtubule model, with sampling mode set to 'sampling' and no convolution. Results will be seven TIFF files, one each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, endosomes, and microtubules, in folder "synthesizedImages/cell1"

* `demo3D06`. Synthesize one 3D image from all object models and a microtubule model, with sampling mode set to 'disc' and convolution with point-spread function. Results will be seven TIFF files, one each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, endosomes, and microtubules, in folder "synthesizedImages/cell1"

* `demo3D07`. Synthesize one 3D image from all object models and a microtubule model, with sampling mode set to 'sampled' at a density of 25 and convolution with point-spread function. Results will be seven TIFF files, one each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, endosomes, and microtubules, in folder "synthesizedImages/cell1"

* `demo3D08`. Synthesize one 3D image from all object models and a microtubule model, with sampling mode set to 'disc' without convolution. Results will be an indexed image in a single TIFF file, with one index each for cell boundary, nuclear boundary, nucleoli, mitochondria, lysosomes, endosomes, and microtubules, in folder "synthesizedImages/cell1"

* `demo3D09`. Synthesize one 3D image from a lysosome model, with sampling mode set to 'disc' without convolution. Results will be three TIFF files, one each for cell boundary, nuclear boundary, and lysosomes in folder "synthesizedImages/cell1". Also produce a mean projection of the cell boundary in XY, XZ and YZ directions and save it in file 'projection.tif'

* `demo3D10`. Synthesize 1 instance using a lamp2 model with sampling mode set to 'disc' and no convolution. Results will be three .obj files, one each for cell boundary, nuclear boundary, and lamp2, in folder "synthesizedImages/cell1"

* `demo3D11`. Trains a generative model of the cell framework using the four patterns in the 3D HeLa dataset from the Murphy Lab

* `demo3D12`. Trains a generative model of the framework using one of the four patterns in the HeLa dataset

* `demo3D13`. This demo show the usage of syn2blender, a helper method that takes a folder of synthesized images and exports the images as object files that can be imported in Blender. This demo uses the images in demo3D03

* `demo3D14`. This demo show the usage of syn2projection, a helper method that makes projection using a folder of synthesized images

* `demo3D15`. Synthesizes 1 image using a transferrin model for the protein and a diffeomorphic model for the nuclear and cell shape. Results will be three TIFF files, one each for cell boundary, nuclear boundary, and protein, in folder "synthesizedImages/cell1"

* `demo3D16`. This method shows how to preprocess raw images to use as input for CellOrganizer. The main idea behind this demo is to show the user they can use their own binary images from raw experimental data they can use to synthesize protein patterns. The current demo assumes the resolution of the images is the same as the images that were used to train the protein model

* `demo3D17`. This method shows how to input an image to CellOrganizer.  The main idea behind this demo is to show the user they can use their own binary images from raw experimental data they can use to synthesize protein patterns. The current demo assumes the resolution of the images is the same as the images that were used to train the protein model. This demo uses the framework synthesized from demo3D15. In this case, the resolution at which the diffeomorphic and vesicle model were trained on are different. This demo also shows how to handle that situation in CellOrganizer 

* `demo3D18`. Trains a generative model of the framework using the holefinding functionality

* `demo3D19`. This method shows the use of slml2report for creating comparisons between parameters of CellOrganzier models.

* `demo3D20`. Trains a generative model of the framework using one diffeomorphic model.

* `demo3D21`. Trains a generative model of the framework using the holefinding
  functionality. The same demo as demo3D18 but with no scaling of the
  images.

* `demo3D22`. Synthesizes a protein pattern instance for each of the synthetic images
  from demo3DDiffeoSynth.

* `demo3DMultiresSynth`. Synthesize multiple 3D images from a lysosome model, at different resolutions

* `demo3DObjectAvoidance`. Synthesizes 1 image using a lysosomal model with sampling mode set to 'disc', no convolution using the object avoidance methods Results will be three TIFF files, one each for cell boundary, nuclear boundary, and lysosomes, in folder "synthesizedImages/cell1"

* `demo3DPrimitives`. Synthesizes 1 image using a lysosomal model with sampling mode set to 'disc', no convolution and output.SBML set to true Results will be three TIFF files, one each for cell boundary, nuclear boundary, and lysosomes, in folder "synthesizedImages/cell1". Additionally, in the folder "synthesizedImages/" will be a SBML-Spatial(v0.82a) formatted .xml file containing constructed solid geometry(CSG) primitives for lysosomes and parametric objects for the cell and nuclear shapes.These files can then be read into VCell using the built in importer or CellBlender using the helper function provided in this distribution.

* `demo3DSBML`. This demo converts a sample SBML file to an SBML-spatial instance using
 the "matchSBML" function. This function takes an SBML file, matches the
 compartments in the file with available models and synthesizes the
 appropriate instances.

 * `demo3Dimg2sbml`. This demo is to demonstrate the function that reads an image and creates a
 3D mesh using the SBML-spatial paradigm. 