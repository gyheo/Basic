# Numbers can be stored in variables

first_num = 5
second_num = 3

print(first_num + second_num)
print(first_num ** second_num)

# Combine numbers and string
days_in_feb = 28
# print(days_in_feb + " days in Febraury")
# When displaying a string that contains numbers you must convert the numbers into strings
print(str(days_in_feb) + " days in Febraury")

num_value1 = '10'
num_value2 = '20'
print(num_value1 + num_value2)

# The input function always returns strings
# Numbers stored as strings must be converted to numeric values before doing math
num1 = input("input the num1 : ")
num2 = input("input the num2 : ")
print(int(num1) + int(num2))