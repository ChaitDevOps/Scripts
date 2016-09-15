#!/usr/bin/python
# comprehensions.py

#Build List wthout list comprehensions

l=[]
for letter in 'word':
    l.append(letter)
print l

lst = [letter for letter in 'word']
print "list comprehensions:", lst
# Another example
lst = [2**x for x in range(0,10)]
print "list comprehensions:", lst

lst = [number for number in range(11) if number %2 == 0]
print lst
# Using For Loop.
lst = []
for number in range(11):
    if number %2 == 0:
        lst.append(number)
print lst

celsius=[0,45,62,34.5]
fah=[(temp * (9/5.0) + 32) for temp in celsius]
print fah
