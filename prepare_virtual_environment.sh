#!/bin/bash

virtualenv --system-site-packages .
source ./bin/activate

pip install numpy scipy matplotlib sphinx
pip install -U ipython

deactivate
