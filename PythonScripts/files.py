#!/usr/bin/python
# files.py
# Chait
# Learning how to interact with files in Python.

from __future__ import print_function
## Opening a file in Python
# open()

f = open('/Users/Maddy/Documents/Scripts/PythonScripts/test')
print(f.read()) # .read() reads the file.
f.seek(0) # After the first read, python close the read handle .
# 		  # To ask Python to read again, use seek() to start from begining of file.
# print(f.read())
#print(f.readlines()) # reads all the lines in a file.

for line in open('test'):
	print(line)
