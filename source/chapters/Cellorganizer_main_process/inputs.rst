Models Used in CellOrganizer
----------------------------
1. PCA
    Small def…    `Read more <https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty983/5232995>`_          
2. Diffeomorphic
    Small def…   `Read more <http://murphylab.web.cmu.edu/publications/144-rohde2008.pdf>`_ 
3. Classic Generative
    Small def…   `Read more <http://murphylab.web.cmu.edu/publications/180-peng2011.pdf>`_ 
4. SPHARM-RPDM
    The spharm-rpdm model is used for building generative models for cell and nuclear shapes based on spherical harmonic analysis, `Read more <https://doi.org/10.1093/bioinformatics/bty983>`_

Tools Used by the Models
----------------------------
a. **Img2sml** Trains a generative model of subcellular location from a collection of images and saves the model to disk.
b. **Sml2img** Synthesizes an image from a list of SLML models.Sml2report
c. **Sml2info** Generate a report from information extracted from a generative model file
d. **Sml2sml** Combines multiple generative model files into a single model file.Inputs 

.. figure:: source/chapters/Cellorganizer_main_process/images/Cellorganizer_models.png

[Image] Input Type
-------------------
In order to train a model, CellOrganizer requires you to have an image dataset. CellOrganizer provides sample image datasets for you to explore the software with.
These sample image datasets are further described `here <http://murphylab.web.cmu.edu/data/>`_. Once comfortable with the provided datasets, you are encouraged to upload your own image dataset for further 
computation given that all images in your dataset will meet certain parameters.


TIFF vs OME.TIFF
-----------------
A TIFF image is just a format that retains more pixels and provides a better resolution than a regular JPEG image. However, an OME.TIFF image retains the pixels of the image plus the metadata contained with it in an XML piece within the image.


What is an OME.TIFF format?
----------------------------
OME.TIFF is a bio-format that retains the pixels in multipage TIFF format, and simultaneously contains XML metadata because of the TIFF format it allows compatibility with many more applications. 
This image type combines both the TIFF format with the OME-XML format. 


Image Specifications
---------------------

CellOrganizer training demos on MATLAB accept the following image file formats:
 * TIFF
 * OME-TIFF. 
 * The minimum number of images to run a model is 20.
 * Images need to be processed as OME.TIFF format before they can be uploaded
 * Dataset if it is a collection should be a mix of HeLa Cells
 * Images must be static 2D or 3D dimensionality
 * Type (file): .mat, .OME.TIFF, .pdf, tabular, .tiff, .txt, vcml, xlsx, xml, zip
 * Import image from a URL - if images are in a repository just add the url for it.

**Note.-** if you need to change the format of your images to OME.TIFF check `here <https://www-legacy.openmicroscopy.org/site/products/ome-tiff>`_ for more on what you will need to do.

In most demos, CellOrganizer anticipates that you have a unique image dataset for each of the following three channels: cellular shapes, nucleoli, and proteins. 
You must set each of these variables individually and can choose to remove or add variables to comply with your own dataset. To set a variable, you are expected to either provide a list of the image filenames or a pattern of the image filenames. 
**All images in the dataset are to be binarized and contrast – stretched prior to the main processing step.**




