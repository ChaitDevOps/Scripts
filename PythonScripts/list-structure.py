#!/usr/bin/python
# List Data Structures
# list-structure.py
# Constructed with Square brackets and comma seperated.
from __future__ import print_function

my_list = [1,2,'string']
print("My List is: %s" %(my_list))
print(my_list[:2]) # Print list with but only up to 2 elements.
print(len(my_list))
print("hello " + "world")
print((my_list + [5])) #concatenate list with an element
print(my_list) # Printing existing list
my_list = my_list + [5] # re-assigning list.
print("reassignment of my_list: %s" %(my_list))

## using .append() method to add elements to exisitng list.
my_list.append('Append Me!')
print(my_list)

## pop method (same functionality as pop in Perl)
my_list.pop()
print("Using Pop Here:",my_list)

## You can pass the index you want to pop off in the method.
# This will remove the 1st element from list my_list
## You can also assign the popped off element to another variable.
x = my_list.pop(0)
print("Here is X : %s" %x)

# .reverse() method for List.
new_list = ['a','e','i','o','u']
new_list.reverse()
print(new_list)

# .sort() method for List.
new_list = [1,4,5,6,3,2]
new_list.sort()
print(new_list)

## Nested Lists.
l_1 = [1,2,3]
l_2 = [4,5,6]
l_3 = [7,8,9]
matrix = [l_1,l_2,l_3]
print(matrix)
print(matrix[0])
print(matrix[0][0])

## List Comprehensions
first_col = [row[0] for row in matrix]
print(first_col)
