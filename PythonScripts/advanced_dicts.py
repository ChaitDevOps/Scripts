#!/usr/bin/python
# Advanced Dictionaries
# Chait
# advanced_dicts.py
from __future__ import print_function
d={'k1':1, 'k2':2}
print(d['k1'])

## Quick Creation of Dictionary using Dictionary Comprehensions.
x={x:x**2 for x in range(10)}  ## Assigning by creating a dict.
print(x)
print({x:x**2 for x in range(10)}) ## Directly printing the quick dictionary.

## Iteration over Keys, Values and Di.
# .iterkeys()
# Prints just the Keys.
for k in d.iterkeys():
	print(k)

# .itervalues()
# Prints just the values
for v in d.itervalues():
	print(v)

# .iteritems())
# Prints both the Keys and Values
for i in d.iteritems():
	print(i)

## view items,keys and values
## Using view methods to view items, keys and Values.

print(d.viewitems())
print(d.viewkeys())
print(d.viewvalues())