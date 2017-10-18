#!/bin/bash

virtualenv --system-site-packages .
source ./bin/activate

pip install numpy scipy matplotlib sphinx
pip install -U ipython
pip install --upgrade pip
pip install xlrd
pip install pandas
pip install sphinxcontrib-images
pip install tabulate
pip install sphinxcontrib-matlabdomain

git submodule init
git submodule update

deactivate
