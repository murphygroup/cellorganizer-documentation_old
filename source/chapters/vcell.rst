VCell
--------

The software supports saving generated geometries as valid VCML(Virtual Cell Markup Language) files that can be imported into `Virtual Cell <https://vcell.org/>`_, a platform to perform biological system modeling and simulations. To do this, use the output flag

.. code:: matlab

	options.output.writeVCML = true;

For simple examples, investigate and run:
  * ``demo3D58``: Generate a single framework and vesicles from a 3D HeLa ratio model and write to VCML.
  * ``demo3D60``: Generate a single framework and vesicles from a 3D HeLa SPHARM model and write to VCML.
  * ``demo3D63``: Generate a single framework from a 3D HeLa SPHARM model and write to VCML with a reaction network and spatial and compartmental simulations ready to be run in Virtual Cell.

For an example application that generates 100 synthetic geometries with reaction networks (as in ``demo3D63``), writes them to individual VCML files, and combines them into one VCML file for easy import into Virtual Cell, see ``generate_simulation_instances_SarmaGhosh2012``.

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
