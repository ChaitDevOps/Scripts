#!/usr/bin/python
## Intro to Python Statements
## Chait.

# If a > b, assign a=2 and b=4

# if a>b:
#     a = 2
#     b = 4
#
# # Nested if-s
# if x:
#     if y:
#         code-statement
# else:
#     another-codestatement
loc = 'autoshop'
if loc == 'bank':
    print "Welcome to the Bank"
elif loc == 'autoshop':
    print "Welcome to the AutoShop"
else:
    print "Where are you man?"

## For Loops
l = [1,2,3,4,5]
for num in l:
    print num

## Modulos
for num in l:
    if num % 2 == 0:
        print "Even Number", num
    elif num % 2 ==1:
        print "Odd Number", num
list_sum = 0
for num in l:
    list_sum += num

print "Sum of List", list_sum

## Loop through a string.
s = "This is a string"
for letter in s:
    print letter

## For loop with Tuples

tup = (1,2,3,4,5)
for num in tup:
    print num

## Unpacking Tuples
l = [(2,4),(6,8),(10,12)]
print "Unpacking Tuples", l[0][0]
for tup in l:
    print tup

# If you know the data Structures, you can iterate through tuples.
# This is called unpacking tuples.
for (t1,t2) in l:
    print "Printing First Element of a tuple:",t1

## Iterating through dicts.
d = {
    'k1':1,
    'k2':2,
    'k3':3
}
for key in d:
    print key

## For Python2, use method iteritems() to iterate through dict.
## For python3, use method items() to iterate through dicts.
for k,v in d.iteritems():
    print k
    print v
