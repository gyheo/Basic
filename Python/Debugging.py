# Syntax errors
# x1 == 34

# Runtime errors
x = 35
y = 0

try:
    print(x / y)
except ZeroDivisionError as e:
    print("Not allowed to divide by zero")
else:
    print("Something else went wrong")
finally:
    pass

# Logic errors