#!/usr/bin/python
# Chait
# Just like a list but tuples have to inited with ()
# Tuples support indexing, splitting just like string and lists.
from __future__ import print_function
t=(1,2,3)
print(t)
print(len(t))
t=(1,2,'hey') # Tuples like lists can also mix object types.
print(t[-1]) # Print Last Element in the List

## Tuples are Immutable, meaning they cannot be changed.
## Values inside a Tuple cannot be re-assigned.

t=(1,2,'string')
#t[2] = "hello" ## Not Supported.

lst = tuple(2**x for x in range(0,10)) ## List comprehensions equiovalent in Tuples
                                       ## Auto generating Tuples. 
print(lst)
