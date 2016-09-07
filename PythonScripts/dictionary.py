#!/usr/bin/python
## dictionary.py
## List and String are 'Sequences' in Python
## Dictionaries are 'Mappings' in Python.
## Mappings are nothing but collection of objects sorted by a key.
## They will be represented by a key and value.
## Note, you cannot sort or index a Dictionary because they are stored as a Mapping. You wil have to explicitly call them out in order.
## Checkout, ordereddict to maintain order in a dictionary.

my_dict = {'key1': 'value1', 'key2': 'value2'}

print(my_dict['key2'])

## Mixing Data Types in a dictionary
my_map2 = {'k1': 123, 'k2': 3.45, 'k3': 'Chait'}
print(my_map2['k3'])

## Nested Operations on the Dict.
print("First Alphabet : %s" %my_map2['k3'][0])
print("Upper Case: %s" %my_map2['k3'].upper())
print("Reverse: %r" %my_map2['k3'][::-1])

## Changing Value associated with that Key.
print("Before Change : %s" %my_map2['k1'] )
my_map2['k1'] = my_map2['k1'] - 120
print("After Change: %s" %my_map2['k1'])

## Quick Syntax for the above
## Self Addidtion and re-assigning
my_map2['k1'] += 100
print("After Quick Syntax: %s" %my_map2['k1'])

## Creating an Empty Dict
d = {}
d['animal'] = 'Dog'
d['answer'] = 421
print(d)

## Nested Dictionaries.
d = {'k1': { 'nestkey': { 'subnestkey': "Value1"}}}
print(d['k1']) # Printing Value of outer Key
print(d['k1']['nestkey']) # Printing Value on Inner Key
print(d['k1']['nestkey']['subnestkey']) # Printing Value of Innermost Key.

## You can run more Methods on nested Dicts as well.
print(d['k1']['nestkey']['subnestkey']).upper()

## Built in Dictionary Methods.
newd = {}
newd['k1'] = 1
newd['k2'] = 2
newd['k3'] = 3
print(newd)
print(newd.keys()) # will return only keys
print(newd.values()) # will return only values
print(newd.items()) # will return Key, Value pairs, also called Tuples.
