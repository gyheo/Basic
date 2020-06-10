# You may need to check multiple conditions to determine the correct action!
country = input("What country do you live in? ")
tax = 0

# if province == "Alberta" or province == "Montreal":
if country.lower() == "canada":
    province = input("What province do you live in? ")
    
    province = province.lower()

    if province in("alberta","montreal","yukon"):
        tax = 0.05
    elif province == "nunavut":
        tax = 0.05
    elif province == "ontario":
        tax = 0.13
else:
    tax = 0.0
print(tax)

# If only one of the conditions will even occur you can use a single if statement with elif