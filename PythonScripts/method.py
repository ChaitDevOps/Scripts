#!/usr/bin/python
# Methods.
# method.py
l = [num for num in range(10)]
n = [num for num in range(12,15)]
l.append(10) # Append an object to the end of a list.
l.count(3) # Count the No of times object present in List.
l.insert(-1,11) # Insert an Object at the Index specified.
l.extend(n) # You can add a list to current list by extend.
print l
print l.pop(-1) # Prints the object that was removed from List.
l.reverse() # reverses the list.
print l
l.sort() # sort the specified list.
print l
