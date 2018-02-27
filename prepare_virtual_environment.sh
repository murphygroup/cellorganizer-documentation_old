#!/bin/bash

virtualenv --system-site-packages .

source ./bin/activate

pip install numpy scipy matplotlib
pip install -U ipython
pip install -I sphinx==1.5.5
pip install --upgrade pip
pip install xlrd
pip install pandas
pip install tabulate
pip install sphinx_rtd_theme

deactivate
