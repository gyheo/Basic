# Lists are collections of items

# Arrays are also collections of items

# What's the difference 
# Arrays Numeric data types
# Lists Store anything

# Retrieving ranges
python = {}
python['language'] = "python"
python['backend'] = "Django"

ruby = {}
ruby['language'] = "ruby"
ruby['backend'] = "Ruby On Rails"

print(python)
print(ruby)

web_framework = []
web_framework.append(python)
web_framework.append(ruby)
web_framework.append({
    'language' : "java",
    'backend' : "Spring"
})

print(web_framework)
print(web_framework[0:3])
print(web_framework[1:3])
print(web_framework[2:3])