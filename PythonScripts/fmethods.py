#!/usr/bin/python
# Functions and Methods assignment
# fmethods.py

# Find the Volume of Sphere given the radius.

def vol(rad):
    volume = (4.0/3) * 3.1459 * rad**3
    print "Volume of Sphere with Radius", rad ," is ", volume
vol(1.2)

#Write a function that checks whether a number is in a given range (Inclusive of high and low)
def ran_check(num,low,high):
    if num in xrange(low,high):
        print "%s falls in range" %num
    else:
        print "%s falls out of range" %num
ran_check(16,1,10)

#Write a Python function that accepts a string and calculate the number of upper case letters and lower case letters.

s = 'Hello Mr. Rogers, how are you this fine Tuesday?'
def up_low(s):
    d = {'Upper': 0 , 'lower': 0}
    for c in s:
        if c.isupper():
            d['Upper'] += 1
        elif c.islower():
            d['lower'] += 1
        else:
            pass
    print "Original String:", s
    print "No Of Upper Case charcs: ", d['Upper']
    print "No of Lower Case charcs: ", d['lower']
up_low(s)

# from list, print unique list.
sample_list = [1,1,1,1,2,2,3,3,3,3,4,5]
def uniq_list(sample_list):
    u = set(sample_list)
    print u
uniq_list(sample_list)

# Another method.
sample_listt = [1,1,1,1,2,2,3,3,3,3,4,5]
def uniq_list():
    x = []
    for u in sample_listt:
        if u not in x:
            x.append(u)
    print x
uniq_list()

# multiply all elements in list.

mlist = [10, 2, 3, -4]
def mulist(mlist):
    total = 1
    for x in mlist:
        total *= x
    print total
mulist(mlist)

# Check if a word is palendrome
s = 'nursesrun'
def palendrome(s):
    #print s
    #print s[::-1]
    if s == s[::-1]:
        print "The word %s is a palendrome" %s
    else:
        print "The word %s is not a palendrome" %s
palendrome(s)

#pangram
# check if sentence is pangram

str = 'abcdefghijklmnopqrstuvwxyz'
x ='cwm fjord veg balks nth pyx quiz'
def ispangram(x):
    d = {'true':0, 'false':0}
    for a in str:
        if a not in x:
            d['false'] += 1
        else:
            d['true'] += 1
    print d['true']
    if d['true'] == 26:
        print "Yes, the String %s is a Pangram" %x
    else:
        print "%s is not a Pangram" %x
ispangram(x)
