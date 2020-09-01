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
