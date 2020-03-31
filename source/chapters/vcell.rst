VCell
--------

The software supports saving generated geometries as valid VCML(Virtual Cell Markup Language) files that can be imported into `VCell <https://docs.openmicroscopy.org/ome-model/5.6.3/#ome-tiff>`_, a platform to perform biological system modeling and simulations. To do this, use the output flag

.. code:: matlab

	options.output.writeVCML = true;

For examples, investigate and run ``demo3D58``, ``demo3D60``, or  ``demo3D63``.

Options
^^^^^^^

The table below describes all VCML-related options. All options are fields within the ``options.output.VCML`` structure.

Options are listed as required or optional in the case that ``options.output.writeVCML = true``; otherwise, they have no effect.

=============================   ========    ===========
Option                          Required    Description
=============================   ========    ===========
writeVCML                       required    boolean flag specifying whether to write out VCML files for use with Virtual Cell. Default is false.
input_filename                  optional    string specifying Virtual Cell VCML file with biochemistry which will be combined with generated geometry in output file. Default is empty string.
downsampling                    optional    downsampling fraction for the creation of object files (1 means no downsampling, 1/5 means 1/5 the size). Default is 1.
translations                    optional    N x 2 cell array of strings (first column) to be replaced by other strings (second column).
=============================   ========    ===========
