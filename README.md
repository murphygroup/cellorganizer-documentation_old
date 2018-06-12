# README

This is the official source code repository of [CellOrganizer](http://www.cellorganizer.org) docs.

06/01/18
Resolved code deprecation issue with the code directive ..exec:.
The issue was caused by the package sphinxcontrib-pyexec not being updated after
an update in Sphinx that deprecated the usage of Directive. 
The sphinx.util.compat.Directive class is now deprecated, so the solution was to
do "from docutils.parsers.rst import Directive" instead. 
Additionally, the python "commands" library is deprecated for Python3, which was
solved by using the "subprocess" library instead. A compatibility issue came up
for pandas after switching to subprocess, so in prepare_virtual_environment.sh,
the version of pandas was downgraded to 0.22.0 instead of 0.23.0, the latest version.