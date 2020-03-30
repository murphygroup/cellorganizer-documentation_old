VCell
--------

The software supports saving generated geometries as valid VCML(Virtual Cell Markup Language) files that can be imported into `VCell <https://docs.openmicroscopy.org/ome-model/5.6.3/#ome-tiff>`_, a platform to perform biological system modeling and simulations. To do this, use the output flag

.. code:: matlab

	options.output.writeVCML = true;

For an example, investigate and run ``demo3D58``, ``demo3D60``, or  ``demo3D63``.
