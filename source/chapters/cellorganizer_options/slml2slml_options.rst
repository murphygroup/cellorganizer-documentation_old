slml2slml
********
This function combines multiple SLML files into a single model file.


=============================  ===============================================================
        Inputs                                             Outputs
=============================  ===============================================================
  files                         list of paths of models need be combined
  options                       List of options
  output_filename               (optional)the file name of output model, default is "model.mat"
=============================  ===============================================================

*options.selection* (mandatory)
  * a matrix used to specify what submodels should be used from each file.

*options.output_filename* (optional) **["model.mat"]**
  * the file name of output model.
