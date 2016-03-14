#!/usr/bin/python

from tabulate import tabulate
from pandas import read_excel
import sys


if sys.argv[1] == '--help':
	print 'Usage: python make_tabulate_from_excel.py [input]'
	print 'Input should be an EXCEL file'
	sys.exit()

inpt = sys.argv[1]
df = read_excel(inpt)
body = df.values.T.tolist()
header = df.columns.values.tolist()

print tabulate(body, header, tablefmt="grid")