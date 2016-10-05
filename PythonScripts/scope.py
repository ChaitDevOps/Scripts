#!/usr/bin/python
# -*- coding: latin-1 -*-
# Chaitanya Bingu
# Learning about Scope of Variables and Nesting in Python.
# scope.py
#import os, sys
# Order in which python searches for Variable Scoping.
# LEGB
# L- Local — Names assigned in any way within a function (def or lambda)), and not declared global in that function.
# E- Enclosing function locals — Name in the local scope of any and all enclosing functions (def or lambda), from inner to outer.
# G- Global (module) — Names assigned at the top-level of a module file, or declared global in a def within the file.
# B- Built-in (Python) — Names preassigned in the built-in names module : open,range,SyntaxError.


x = 35

def printer():
    x = 50  ## Local Scope.
    return x
print x
print printer()

name = 'Basel F.C'

def greet():
    name = 'Arsenal F.C'
    def hello():
        print "Hello ", name
    hello()
greet()

# Using global to define scope throughout

x = 50
def newgb():
    global x
    x = 2
    print "this func is now using global x!"
    print x
print "Before using global, value of x is " , x
newgb()
