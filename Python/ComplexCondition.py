# Sometimes you can combine conditions with AND instead of nesting it statements

gpa = float(input("What was your Grade Point Average? : "))
lowest_grade = float(input("What was your lowest grade? : "))

# nested if
# if gpa >= .85:
#     if lowest_grade >= .70:
        
# use Boolean variables as flags

if gpa >= .85 and lowest_grade >= .70:
    honour_roll = True # Boolean Variable
else:
    honour_roll = False

if honour_roll:
    print("You made honour roll")