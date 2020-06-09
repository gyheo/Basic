# Your code needs the ability to take different actions based on different conditons
price = input("how much did you pay?")
price = float(price)

if price >= 1.00:
    tax = .07
    print("The tax rate is " + str(tax))
# How you indent your code changes your code execution
else:
    tax = 0
    print("The tax rate is " + str(tax))

# Be careful when comparing strings
country = input("Where are you from?")
if country == "korea" or country == "KOREA":
    print("You are Korean!")
else:
    print("Welcome to the Korea!")