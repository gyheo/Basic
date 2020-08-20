import UIKit

var dog = "Dog"
var cat = "Cat"
var bird = "Bird"

dog = "My" + dog

var animals:[String] = ["Dog", "Cat", "Bird"]

print(animals)
print(animals[0])

// for n in 0...2 {
// print(animals.count) // It can print out of range
for n in 0...animals.count - 1 {
    animals[n] = "My " + animals[n]
    print(animals[n])
}

print("") // New Line

for animal in animals {
    print(animal)
}

// Declare empty array
var emptyArray:[String] = []
var stringArray = [String]()

stringArray.append("a")
stringArray.insert("b", at: 1)
stringArray.append("c")
stringArray += ["d"]
print(stringArray)

// Remove items
stringArray.remove(at: 2)
stringArray.removeLast()
print(stringArray)

// Search items
stringArray.firstIndex(of: "b")
