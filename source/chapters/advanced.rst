.. Model types and examples of results:

Additional Information
======================

Model classes and types
-----------------------

This table lists all supported model classes and types in this version of CellOrganizer

.. exec::
	print commands.getoutput('python make_tabulate_from_excel.py model_class_and_types.xlsx v2.5 " "')

Reproducing Figures from Research Articles
------------------------------------------

This table is a guide to specific demos included with CellOrganizer that generate figures similar to those presented in publications that used CellOrganizer to analyze particular datasets. Some demos will generate the same figures as in the research article and others will build a similar output, e.g. same figure different synthetic image.

.. exec::
	print commands.getoutput('python make_tabulate_from_excel.py paper_demo.xlsx v2.5 " "')

T cell models
-------------

.. include:: ./tcell.rst
