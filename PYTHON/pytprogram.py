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
# 1.Write a Python program to do arithmetical operations addition and division. 
a = 10
b = 5 
addition = a + b 
print("Addition:", addition)

division = a / b 
print("Division:", division)


# 2.Write a Python program to find the area of a triangle.
base = 10 
height = 5 
area = 0.5 * base * height 
print("Area of triangle:", area)
______________________________________________________________________________________
# 3.W.A.P to swap two variables 
a = 5
b = 10
temp = a 
a = b 
b = temp 
print("after swapping:")
print("a=", a)
print("b=", b)

# 4.to acceppt id, name, and salary 
id = int(input('enter id:'))
name = input('enter name:')
sal = float(input('enter salary:'))
print('your id={}\nName={}\nSalary={}'.format(id,name,sal))
______________________________________________________________________________________
# 5.W.A.P to check if a number is positive, negative or zero
num = float(input("enter a number: "))
if num > 0:
    print("positive number")
elif num == 0:
    print("zero") 
else:
    print("negative number") 

#6. W.A.P to check if a number is odd or even
num = int(input("enter a number: "))
if num % 2 == 0:
    print("even number")
else:
    print("odd number")
  ______________________________________________________________________________________
