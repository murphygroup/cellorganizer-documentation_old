from tabulate import tabulate
import pandas 
import sys
from os import getcwd

inpt = sys.argv[1]
df = pandas.read_excel(inpt, 0)
df = df.fillna('N/A')
body = df.values.tolist()
header = df.columns.values.tolist()

print tabulate(body, header, tablefmt="grid")
