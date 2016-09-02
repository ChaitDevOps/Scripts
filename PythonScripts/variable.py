#!/usr/bin/python
# Value that seperates a Variable with plain text in a print command is ,
# using same variable twice in the code, overrides previous value of the variable.
# Variable Rules:
# Names cannot start with a number, best practice is to be all lowercase.
# There can be no spaces on the name, use "underscore" instead ex: my_variable
# Names cannot have alpha numeric number
cars=100
drivers=30
passengers=90
space_car=4
fatality_rate = 0.01
cars_not_driven=cars - drivers
cars_driven=drivers
carpool_capacity=cars_driven * space_car
average_passengers_per_car=passengers / cars_driven
passenger_death = passengers * fatality_rate

# print "there are", cars ,"cars available"
# print "Cars with No Drivers:", cars_not_driven
# print "CarPoolCapacity:", carpool_capacity
print cars
print drivers
print passengers
print "Passengers died per annum =", passenger_death

