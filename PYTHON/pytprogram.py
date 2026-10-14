#interpolation placeholder values
# using %(C style)
name = "dolly"
age = 22
print("my name is:%s and my age :%d" %(name, age))

#using .format()
print("name: {}, age: {}" .format(name, age))
print("my name is: {} and my age is: {}" .format(name, age))

#using f-string mostused 
print(f"my name is: {name}, my age is: {age}")

# decimal precision in floating point numbers 
a = 102.2234567
print (type(a))
print("the value of a is %.2f" %(a))
______________________________________________________________________________________
