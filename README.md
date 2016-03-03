# README

This is the official documentation repository for [CellOrganizer](http://www.cellorganizer.org).

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
