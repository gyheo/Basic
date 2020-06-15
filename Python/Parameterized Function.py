# Functions can accept multiple parameters
# You can specify a default value for a parameter
def get_initial(name, force_uppercase=True):
    if force_uppercase:
        initial = name[0:1].upper()
    else:
        initial = name[0:1]

    return initial

first_name = input("What is your first name? ")
# first_name_initial = get_initial(first_name, False)
# first_name_initial = get_initial(first_name)

# Using the named notation when calling functions makes your code more readable
first_name_initial = get_initial(force_uppercase=False, name=first_name)

print("Your name is {}".format(first_name_initial))
