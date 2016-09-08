#!/usr/bin/python
# Sets and Booleans
# sets.py
# sets and Booleans are more object types in Python.
# Sets: Unordered collection of Unique Elements.
#from __future__ import print_function
x = set()
print "Here is x: %s" %x
x.add(12)
print x
x.add(2)
print x
## Note, sets will only add unique Elements.
l = [1,2,2,1,3,4,5,6,4]
print "here is the list: %s" %l
print " Sets of List: %s" %set(l)

a = True
print a

print 11>2
