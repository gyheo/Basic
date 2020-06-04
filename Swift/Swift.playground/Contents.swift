import UIKit

var str = "Hello, playground"

print(str)

for i in 0..<100 {
    // i
    sin(Double(i) / 2)
    // cos(Double(i) / 2)
}

let singers = ["Anne", "Ed", "Chris", "Tom"]
for singer in singers {
    print("Hello, \(singer)!")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13, 17],
    "Fibonacci": [1, 1, 2, 3, 5, 8, 13],
    "Square": [1, 4, 9, 16, 25, 36],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

var name: String = "GeonYeong Heo"
let birthYear: Int = 1993
var height: Float = 171.1

print(largest)
print(name)
print(birthYear)
print(height)

//var x = 0
//var y = 0
//var width = 100
//var height = 100
//
//var path = UIBezierPath()
//
//var circle = UIBezierPath(ovalIn: CGRect(x: width/2 - height/2,
//                                     y: 0,
//                                     width: height,
//                                     height: height))
