#!/usr/bin/python
# Functions
# functions.py

def first_function():
    print "My First Function!"
def second_function(a,b):
    print a+b
def third_function(name):
    print "My Third " + name
def add_num(num1,num2):
    result = num1+num2
    print result
def print_x():
    x = add_num(2,3)
    print x
def is_prime(num):
    """
    Input: A Number
    Output: A print statement wherether or the number is prime.
    """
    for n in xrange(2,num):
        if num %n == 1:
            print num, "is a Prime Number"
            break
        else:
            print num, "is not a Prime Number"

first_function()
second_function(2,3)
add_num(5,5)
third_function('Function!')
print_x()
is_prime(9)
