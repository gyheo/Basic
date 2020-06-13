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