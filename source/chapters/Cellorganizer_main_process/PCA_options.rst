PCA Model
----------

    General Parameters
    -------------------
            **debug** 		If set to true, then the function will (1) keep temporary results folder, (2) will    
                            print information useful for debugging. Default is false.

            **display**     Default is false] If set to true, then plots useful for debugging with be open. This 
                            functionality is meant for debugging only, setting this to true will considerably                 
                            slow down computation.

            **save_segmentations**     Will save the segmentations to the model file. Setting this option to true 
                                       will create a considerably large file.
    
    Img2sml
    -------

-	**Mandatory**
        **Latent_dim** [default is 15] This option specifies how many latent dimensions (principal vectors or principal components) should be used for modeling the shape space.  Valid values are positive integers.   
        **imagesize** [1024, 1024] refers to the size resolution of the image being output.    
-	**Optional**
        **Compression** [default is ‘lzw’] compresses the header of an OME.TIFF image output.     
        **Random_sampling** random sampling of images is performed by interpolation between two exiting images.
        **Pca_synthesis_method** ['reconstruction' or 'random_sampling'] reconstruct images from the model; **‘random_sampling’** random sampling images by interpolation between two exiting images. 
        **NumberOfSynthesizedImages** [default is 1] the final image produced by the model. 
        **targetDirectory** [default pwd]  the directory path where the image is going to be saved.
