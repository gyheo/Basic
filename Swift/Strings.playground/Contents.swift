import UIKit

var someString = "There are no strings on me"
let story = """
This is a story about Pinocchio.
He like to asy there are no strings on me
"""


// Unicode
let lowerA = "\u{61}"
let doubleHeart = "\u{1F495}"

var emptyString = ""
var anotherEmptyString = String()
print(anotherEmptyString)

if emptyString.isEmpty {
    print("There are no strings")
}

for char in "smile😀" {
    print(char)
}

let helloCharacters: [Character] = ["H", "E", "L", "L", "O", "!"]
print(helloCharacters)
let helloString:String = String(helloCharacters)
print(helloString)
