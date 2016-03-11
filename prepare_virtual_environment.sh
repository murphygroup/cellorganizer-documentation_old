#!/bin/bash

virtualenv --system-site-packages .
source ./bin/activate

pip install numpy scipy matplotlib sphinx
pip install -U ipython
pip install sphinxcontrib-images

git submodule init
git submodule update

deactivate
