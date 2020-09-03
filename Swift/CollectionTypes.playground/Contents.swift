import UIKit

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)

someInts = []

// Creating an Array with Default Value

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Eggs", "Cheese"]
let shoppingList2 = ["Apple", "Coke"]

shoppingList.append("Corn")
//shoppingList.append(5)

shoppingList += ["Tomato"]

print("shoppingList total size : \(shoppingList.count)")

if !shoppingList.isEmpty {
    for item in shoppingList {
        print(item)
    }
} else {
    print("There is nothing in a shoppingList")
}

print(shoppingList[2...3])

shoppingList.insert("Maple Syrup", at: 2)
shoppingList

var anotherList = shoppingList.removeLast()
print(anotherList)

for (index, item) in shoppingList.enumerated() {
    print("\(index + 1) item is \(item)")
}

var musicGenres :Set<String> = ["Jazz", "Chill", "Alternative"]

musicGenres.insert("Classic")
print("I love \(musicGenres.count) music genres")

for value in musicGenres.sorted() {
    print(value)
}

let oddDigits:Set = [1, 3, 5, 7, 9]
let evenDigits:Set = [2, 4, 6, 8, 10]
let singlePrimeNumbers:Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()

evenDigits.intersection(oddDigits)

oddDigits.subtracting(singlePrimeNumbers).sorted()

oddDigits.symmetricDifference(singlePrimeNumbers).sorted()

let houseAnimals:Set = ["🐶", "🐱"]
let farmAnimals:Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals:Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
cityAnimals.isSuperset(of: farmAnimals)
cityAnimals.isDisjoint(with: farmAnimals)

var nameOfInt = [Int: String]()
nameOfInt[1] = "One"

//print(nameOfInt[1])

nameOfInt = [:] // Empty Dictionary

var shortExtension:[String: String] = ["C":"c", "C++":"cpp", "C#":"cs",
                                      "JavaScript":"js", "TypeScript":"ts",
                                      "Python":"py", "Ruby":"rb","Java":"java",
                                      "Swift":"playground", "Kotlin":"kt"]

print("Programming language extension number : \(shortExtension.count)")

for (lang, ext) in shortExtension {
    print("\(lang) extension is \(ext)")
}
