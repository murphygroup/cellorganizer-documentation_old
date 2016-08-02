#!/bin/bash

source ./bin/activate
make clean
make html
make epub
deactivate
