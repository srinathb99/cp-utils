#!/usr/bin/python3

import sys
file_name = sys.argv[1]
snippet = ""
with open(file_name, "r") as file:
	for line in file:
		snippet += line
print(repr(snippet))
