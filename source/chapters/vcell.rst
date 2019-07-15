Generate Geometry for Simulation with VCell
-----------------------------------------
`VCell, (Virtual Cell), <vcell.org>`_ is a comprehensive platform for modeling cell biological systems that is built on a central database and disseminated as a web application.

How to
~~~~~~~~
To export a CellOrganizer geometry with VCell capability, please follow these instructions.

#. Prepare a BNGL File
#. Set up for model synthesis, slml2img, function call
#. Set the option.output.writeVCML equal to True
#. In the resulting output folder, there will be a file with a .vcml extension

.. _demo3D60:

demo3D60
~~~~~~~~~
Demo header::

   % Synthesize one 3D image with nuclear, cell shape and a vesicular channel.
   % This demo exports portions of the synthetic image as VCML instances.
   %
   % What you need
   % -------------
   % * a valid CellOrganizer model files
   %
   % Output
   % ------
   % * single channel TIF files
   % * a VCML file exportable to VCell

Options
~~~~~~~~
**Mandatory**
^^^^^^^^^^^^^
**output.VCML.writeVCML** (mandatory)
    * Boolean flag specifying whether to write out VCML files for use with Virtual Cell.
    * Default: false
**Optional**
^^^^^^^^^^^^
output.VCML.\ **downsampling** [1]
    * Downsampling fraction for the creation of object files (1 means no downsampling, 1/5 means 1/5 the size).
output.VCML.\ **addTranslocationIntermediates** [true]
    * Boolean flag specifying whether to create intermediate species and reactions for reactions involving non-adjacent translocations, which are valid in cBNGL but not Virtual Cell.
output.VCML.\ **numSimulations** [1]
    * Number of simulations in VCML file.
output.VCML.\ **translations** {0,2}
    * N x 2 cell array of strings (first column) to be replaced by other strings (second column).
output.VCML.\ **defaultDiffusionCoefficient** [1.0958e-11]
    * Double specifying diffusion coefficient in meters squared per second.
output.VCML.\ **NET.filename** ['' (empty string)]
    * String specifying BioNetGen network file to include in VCML files for use with Virtual Cell.
output.VCML.\ **NET.units.concentration** ['uM']
    * String specifying concentration units in NET file.
output.VCML.\ **NET.units.length** ['um']
    * String specifying length units in NET file.
output.VCML.\ **NET.units.time** ['s']
    * String specifying time units in NET file.
output.VCML.\ **NET.effectiveWidth** [3.8775e-9]
    * Double specifying surface thickness in meters.
output.VCML.\ **NET.useImageAdjacency** [true]
    * Boolean specifying whether to derive compartment adjacency from the synthetic image. Can break Virtual Cell compatibility due to inclusion of BioNetGen representation of translocation between non-adjacent compartments.
