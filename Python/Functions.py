# Sometimes we copy and paste our code
# Use functions instead of repeating code (more flexibility using function)

from datetime import datetime 

def print_time(task_name):
    print(task_name)
    print(datetime.now())
    print()

first_name = "GeonYeong"
print_time("printed first name")

for x in range(0,10):
    print(x)
print_time('completed for loop')
# print('task completed!')
# print(datetime.datetime.now())
# print()


# Functions make your code more readable and easier to maintain

# Always add comments to explain the purpose of your code

# Functions must be declared before the line of code where the function is called

def get_initial(name):
    initial = name[0:1].upper()
    return initial

first_name = input("What is your first name? ")
first_name_initial = get_initial(first_name)

last_name = input("What is your last name? ")
last_name_initial = get_initial(last_name)

print("Your name is {} {} and Initial is {} {}".format(last_name, first_name, last_name_initial, first_name_initial))