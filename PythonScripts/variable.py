#!/usr/bin/python
# Value that seperates a Variable with plain text in a print command is ,
cars=100
drivers=30
passengers=90
space_car=4
cars_not_driven=cars - drivers
cars_driven=drivers
carpool_capacity=cars_driven * space_car
average_passengers_per_car=passengers / cars_driven

print "there are", cars ,"cars available"
print "Cars with No Drivers:", cars_not_driven
print "CarPoolCapacity:", carpool_capacity
