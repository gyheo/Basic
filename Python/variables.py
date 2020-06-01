# Strings can be stored in variables

# first_name = "GeonYeong"
# print(first_name)

# You can combine strings with +
#last_name = "Heo"

# print(last_name + first_name)

# first_name = input("Please enter your first name : ")
# last_name = input("Please enter your last name : ")

# print("Hello My name is" + " " + last_name.capitalize() + " " + first_name.capitalize())

apple = "apple"
print("apple upper is " + apple.upper())

apple = apple.upper()
print("APPLE lower is " + apple.lower())

print("P character counts " + str(apple.count('P')))

# Custom format string
first_name = "GeonYeong"
last_name = "Heo"

# output = "Hello " + last_name + " " + first_name
# output = "Hello, {} {}".format(last_name, first_name)
# output = "Hello, {1} {0}".format(last_name, first_name)
# below only using python3
output = f"Hello, {last_name} {first_name}"
print(output)