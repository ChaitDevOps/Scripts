#!/usr/bin/python
# st-test.py

st = 'Print only the words that start with s in this sentence'
new_st = st.split(' ')
for word in new_st:
    if word[0] == 's':
        print word

#Use range() to print all the even numbers from 0 to 10.
x = [num for num in range(0,11,2)]
print "Even Numbers:", x

#Use List comprehension to create a list of all numbers between 1 and 50 that are divisible by 3.
y = [num for num in range(1,50) if num %3 == 0]
print y

#Go through the string below and if the length of a word is even print "even!"
st = 'Print every word in this sentence that has an even number of letters'
new_st = st.split(' ')
for word in new_st:
    if len(word) %2 == 0:
        print "Even:", word

#Write a program that prints the integers from 1 to 100.
#But for multiples of three print "Fizz" instead of the number,
#and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".


for num in range(1,101):
    if num %3 == 0 and num %5 == 0:
        print "Fizz"
    elif num %5 == 0:
        print "Buzz"
    elif num %3 == 0:
        print "FizzBuzz"
    else:
        print num

# Use List Comprehension to create a list of the first letters of every word in the string below:
st = 'Create a list of the first letters of every word in this string'
new_st = [word[0] for word in st.split() ]
print new_st
