#!/bin/bash

virtualenv -p python3 .

source ./bin/activate
pip3 install numpy scipy matplotlib
pip3 install pyexec
pip3 install -I sphinx
pip3 install xlrd
pip3 install pandas
pip3 install tabulate
pip3 install sphinx_rtd_theme
pip3 install sphinxcontrib.gist
pip3 install sphinxcontrib-programoutput
pip3 install -e git+git://github.com/icaoberg/sphinxcontrib-pyexec.git@master#egg=sphinxcontrib-pyexec

deactivate
