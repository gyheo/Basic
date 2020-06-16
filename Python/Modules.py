# Importing a module
import helpers
helpers.display("Not a warning")

# import all into current namespace
from helpers import *
display("Not a warning")

# import specific items into current namespace
from helpers import display
display("It is a warning", True)