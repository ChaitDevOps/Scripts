#!/usr/bin/python
# Using Strings in Python
# You can Use both Single Quotes and Double Quotes in Strings.
# Reason being to use them is when you need to keep the values of ' and " literal

from __future__ import print_function  # In Python 3, Print is a function not a statement.
print ("Hello Dude!")  # using print('')

s='Hello World!'
print (s) # Print the String assigned to the variable
print (len(s)) # Print the Actual Length of the string , takes into account Spaces as well. 
print(s[0]) # Indexing String. This will print First Elemnent of Variable s
print(s[0:10]) # This is splicing the index, so it will print everything in s from 0 to 10 Elements
print(s[:10]) # Same as above
print(s[:]) # Grab all Elements in the variable.
print(s[-1]) # Print the last Letter
print(s[:-3]) # Printss everything except the last number of elements specified 
print(s[::]) # Prints from begining to end of string
print(s[::2]) # Print from begining to end but with step size of 2
print(s[::-1]) # Print from beging to end but with step size of -1, meaning print from revers

# Strings are Immutable meaning, once a variable is created , string in that variable cannot be replaced

# Ex: s[0] = 'x' # This will throw an error
# s[0] = 'x'
# Error:
# Traceback (most recent call last):
#   File "./strings.py", line 25, in <module>
#     s[0] = 'x'
# TypeError: 'str' object does not support item assignment

## Concatenating Strings
print(s + " I'm Chait") # Concatenating string with another string 
s = s + " I'm Chait " # Re-Assing Variable by concatenating with another string.
print(s)

## Using arithmatic with Strings.
letter="Arsenal Rules \n" # The new line character here is to make sure, the string in var 'letter ' print in a new line.
print(letter *10 ) 


#### When Printing in python 2.7
# print 'Hello Chait'
# print "Hello Chait"
# print ' "this is a quote"' 
# print " I'm an Amazing Guy!"
# print "Here is a new line \n and here is the second line"
# print "Here is a \t Tab"