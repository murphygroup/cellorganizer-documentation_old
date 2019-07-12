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

Option Parameters Based on Model and Tool Used
----------------------------------------------
1. `PCA <http://murphylab.web.cmu.edu/publications/180-peng2011.pdf>`_
2. Diffeomorphic
3. Classic Generative
4. SPHARM-RPDM
    