# We often need current date and time when logging errors and saving data
from datetime import datetime, timedelta

today = datetime.now();
# print("Today date is " + today)
print("Today date is " + str(today))

# There are functions you can use with datetime objects to manipulate dates
oneday = timedelta(days=1)
yesterday = today - oneday
print("Yesterday is " + str(yesterday))

one_week = timedelta(weeks=1)
last_week = today - one_week
print("Last week was " + str(last_week))

# Use Date functions to control date formatting
print('Day ' + str(today.day))
print('Month ' + str(today.month))
print('Year ' + str(today.year))

print('Hour ' + str(today.hour))
print('Minute ' + str(today.minute))
print('Second ' + str(today.second))

# Sometimes you receive the date as a string and need to convert it to a datetime object
# Make sure you add exception handling in case the date entered is invalid
birthday = input("When is your birthday (dd/mm/yyyy)? ")

birthday_date = datetime.strptime(birthday, "%d/%m/%Y")

print("Birthday: " + str(birthday_date))