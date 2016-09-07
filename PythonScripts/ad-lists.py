#!/usr/bin/python
# ad-lists.py
# Diving a little deeper into Lists.

#.append() Appends an element to the 'END' of the exisitng list.
from __future__ import print_function

l = [1,2,3]
l.append([4])
print(l)

#.extend() extends list by appending elements from the iterable

l = [4,5,6]
l.extend([7,8,9])
print(l)

# .index() - Returns the index of whatever element is placed as an argument. 
# Note: If the the element is not in the list an error is returned

print(l.index(5))

# .insert() - insert takes in two arguments: insert(index,object) This method places the object at the index supplied
l.insert(7,10)
print(l)

# .pop() - Pops off the last element of the list.
ele = l.pop()
print(ele)

# .remove - The remove() method removes the first occurrence of a value
x=[8,9,10]
x.remove(9)
print(x)
# .reverse - reverse the list, replaces your list. 
x.reverse()
print(x)

# .sort - will sort you List.
x.sort()
print(x)