#!/usr/bin/python
# Chait
# Advanced Strings in Python.
# advanced_strings.py

from __future__ import print_function
# .capitalize()
# Converts First Letter of String to Upper Case 
s = "hello world"
print(s.capitalize())

# .upper() and .lower()
print(s.upper())
print(s.lower())

# .count() and .find()
# .count() -- Will cound the number of times the argument was present in the variable/string
# .find() - Will find the position of the argument. will quit after first find. 
print(s.count('o'))
print(s.find('o'))

# .center()
# The center() method allows you to place your string 'centered' between a provided string with a certain length
print(s.center(20,'z'))

# .expandtabs()
# expandtabs() will expand tab notations \t into spaces:
print("FirstName\tLastName".expandtabs())

# isalnum() will return True if all characters in S are alphanumeric
# isalpha() wil return True if all characters in S are alphabetic
# islower() will return True if all cased characters in S are lowercase and there is at least one cased character in S, False otherwise
# isspace() will return True if all characters in S are whitespace.
# istitle() will return True if S is a title cased string and there is at least one character in S, 
#			i.e. uppercase characters may only follow uncased characters and lowercase characters only cased ones. Return False otherwise.
# isupper() will return True if all cased characters in S are uppercase and there is at least one cased character in S, False otherwise.
# endswith() Another method is endswith() which is essentially the same as a boolean check on s[-1]
s="hello"
print(s.isalnum())
print(s.isalpha())
print(s.islower())
print(s.isupper())
print(s.istitle())
print(s.endswith('o'))

## Built in Reg-ex
# .split() Excludes the seperator.
s="chaitanya"
print(s.split(s[4])) # Splits at index position 4 of the variable s.
print(s.split('t'))  # Splits at the letter 't' of the variable s.

# .partition() #Prints the tuple, meaning first half, seperator, second half.
print(s.partition(s[4]))
print(s.partition('t'))