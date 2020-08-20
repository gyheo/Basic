import UIKit

// Declare empty dictionary
var dict = [String:String]()

// Assinging data into a dictionary
dict["Apple"] = "사과"
dict["BlueBerry"] = "블루베리"
dict["Cinamon"] = "계피"

// Retrieving a value
print(dict["Cookie"])
print(dict)

// dict["Apple"] = "애플"
print(dict)

// Removing a value for a key
dict["BlueBerry"] = nil

for (key, value) in dict {
    // Do stuff for each item of the dictionary
    print("\(key)의 한국말 \(value)")
}
