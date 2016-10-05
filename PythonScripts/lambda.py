#!/usr/bin/python
# Lambda Expressions
# lambda.py
# Chaitanya Bingu
# Lamba expressions is basically a one line condensed version of a function.

# Writing a Square Function, we will break it down into a Lambda Expression.

def square(num):
    result = num**2
    print result
square(2)

def square(num):
    print num**2
square(4)

def cube(num):
    print num**3
cube(2)
# Converting this to Lambda

square2 = lambda num: num**2
print square2(10)

adder = lambda x,y: x+y
print adder(10,10)

len_check = lambda item: len(item)
print len_check("Arsenal Rules!")
