from tabulate import tabulate
import pandas
import sys
from os import getcwd

inpt = sys.argv[1]
df = pandas.io.excel.read_excel(io, sheetname=inpt, **kwds)
df = df.fillna('N/A')
body = df.values.tolist()
header = df.columns.values.tolist()

print tabulate(body, header, tablefmt="grid")
