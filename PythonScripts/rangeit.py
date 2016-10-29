#!/usr/bin/python
# range() - exploring the range function.
# rangeit.py

print range(0,10)
print range(10)

x = range(10) # Python will assign varaible x as a list elements 0 to 9
print x

## Range with step size.
start = 5
stop = 20
x = range(start,stop,2)
print x

# Generators : Python provides these objects at that instance but doesnt store in memory.
for num in range(1,7): ##Stores in Memory.
    print num
for num in xrange(1,10): ##Doesn't store in Memory.
    print num

x = range(1,6)
x2 = xrange(1,6)
print "x:", type(x) ##list
print "x2:", type(x2) ##Generators
