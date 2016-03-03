# README

This is the official documentation repository for [CellOrganizer](http://www.cellorganizer.org).

## Build Status

| Branch | Status |
| --- | --- |
| master | [![Build Status](http://developers.compbio.cs.cmu.edu:8080/buildStatus/icon?job=cellorganizer-docs-master-glnx64)](http://developers.compbio.cs.cmu.edu:8080/job/cellorganizer-docs-master-glnx64/) |
| dev | [![Build Status](http://developers.compbio.cs.cmu.edu:8080/buildStatus/icon?job=cellorganizer-docs-dev-glnx64)](http://developers.compbio.cs.cmu.edu:8080/job/cellorganizer-docs-dev-glnx64/) |

## Pre-requisites
The python packages used to generate this documentation are

* [Sphinx](http://www.sphinx-doc.org/en/stable/)
* [tabulate](https://pypi.python.org/pypi/tabulate)

You can run the script `prepare_virtual_environment.sh` to install all the pre-requisites in a [virtual environments](https://virtualenv.readthedocs.org/en/latest/).

```shell
icaoberg$ bash ./prepare_virtual_environment.sh
```

## Generating documentation
You can use the `make.sh` script to generate the documentation. The script will

1. activate the virtual environments
2. generate HTML and epub versions
3. deactivate virtualenv

The helper script `make.sh` generates two types of output. If you are interested in generating other formats
type

```
make
```

to see a full list of outputs or refer to the following list.

```
Please use `make <target>' where <target> is one of
html       to make standalone HTML files
dirhtml    to make HTML files named index.html in directories
singlehtml to make a single large HTML file
pickle     to make pickle files
json       to make JSON files
htmlhelp   to make HTML files and a HTML help project
qthelp     to make HTML files and a qthelp project
devhelp    to make HTML files and a Devhelp project
epub       to make an epub
latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter
latexpdf   to make LaTeX files and run them through pdflatex
latexpdfja to make LaTeX files and run them through platex/dvipdfmx
text       to make text files
man        to make manual pages
texinfo    to make Texinfo files
info       to make Texinfo files and run them through makeinfo
gettext    to make PO message catalogs
changes    to make an overview of all changed/added/deprecated items
xml        to make Docutils-native XML files
pseudoxml  to make pseudoxml-XML files for display purposes
linkcheck  to check all external links for integrity
doctest    to run all doctests embedded in the documentation (if enabled)
  ```
