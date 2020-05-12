slml2slml
********
This function combines multiple models into a single model file.


=============================  ===============================================================
        Inputs                                             Outputs
=============================  ===============================================================
  files                         list of paths of models that need to be combined
  options                       List of options
=============================  ===============================================================

**Prototype:** 

*slml2info(files, options)*

General Options
================

**Format:** 

options.xxx ([*Optional* or *Mandatory*)] [*Default Parameter*]

Generic Options
^^^^^^^^^^^^^^^

*options.selection* (mandatory)
  * a matrix used to specify what submodels should be used from each file.

*options.output_filename* (optional) **["model.mat"]**
  * the file name of output model.
