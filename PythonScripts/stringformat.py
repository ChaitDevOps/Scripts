#!/usr/bin/python
# # String Formatting Operators
# %c	character
# %s	string conversion via str() prior to formatting
# %i	signed decimal integer
# %d	signed decimal integer
# %u	unsigned decimal integer
# %o	octal integer
# %x	hexadecimal integer (lowercase letters)
# %X	hexadecimal integer (UPPERcase letters)
# %e	exponential notation (with lowercase 'e')
# %E	exponential notation (with UPPERcase 'E')
# %f	floating point real number
# %g	the shorter of %f and %e
# %G	the shorter of %f and %E

my_name='Chait'
my_age=30
my_weight=157
my_height=5.8

print "My Name is %s" %my_name
print "My Age is %d" %my_age
print "My Weight is %i" %my_weight
print "My Height is %g" %my_height # User Either %g or %G for short form of Floatng Point Number.
print "My Name and Age are: %s , %d" %(my_name,my_age)