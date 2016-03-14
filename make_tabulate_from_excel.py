from tabulate import tabulate
from pandas import read_excel
import sys
from os import getcwd

inpt = sys.argv[1]
df = read_excel(inpt)
df = df.fillna('N/A')
body = df.values.tolist()
header = df.columns.values.tolist()

print tabulate(body, header, tablefmt="grid")
