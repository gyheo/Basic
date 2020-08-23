import UIKit

// Type Annotation
let maximumNumberOfLoginAttempts:Int = 10
var currentLoginAttempt = 0

// Swift is a type-safe language
var welcomeMessage:String = "Welcome to the iOS, MacOS"
print(welcomeMessage)

var welcome:String = "Hello"
welcome = "안녕"
print(welcome)

let constWelcome:String = "Bonjour"
// constWelcome = "안녕하세요"
print(constWelcome)

let UINT8minValue = UInt8.min
let UINT8maxValue = UInt8.max

let UINT16minValue = Int16.min
let UINT16maxValue = Int16.max

let UINT32minValue = UInt32.min
let UINT32maxValue = UInt32.max

let sumPI = 3 + 0.141592
print(sumPI)

// Floating-point Conversion

let three = 3
let pointOneFourOneFiveNineTwo = 0.141592

let PI = Double(three) + pointOneFourOneFiveNineTwo
print(PI)
print(Int(PI))

let decimalInteger = 14
let binaryInteger = 0b01110
let octalInteger = (0o10 - 0o01) * 2
let hexaInteger = 0x10 - 0x1 * 2

// boolean

var TrueOrFalse = true
print(TrueOrFalse)
TrueOrFalse = false
print(TrueOrFalse)

let http404Error = (404, "Not Found")
print(http404Error)

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The statusMessage is \(statusMessage)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The statusMessage is \(http200Status.description)")

let b = 1
var a = 14

// = Assignment Operator
a = b
print(a)

1 + 1 + 1
4 - 2
1 * 6
10.0 / 2.5

// Remainder Operator
13 % 4

print(3 == 3)
print(3 != 4)
print(3 > 2)
print(1 < 3)
print(3 >= 1)
print(3 <= 1)

var languageName:String = "Swift"

// languageName = "Python"

if languageName == "Swift" {
    print("Hello iOS World with \(languageName)")
}

(1, "One") < (2, "Two")
(3, "Three") < (4, "Four")
(1, "One") == (1, "One")
(1, "One") == (0, "Zero")

// print(true < false)
print(800.0 - 784.1)

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)

let ITcompanies = ["Apple", "Google", "Microsoft", "MI"]

for index in 0...100 {
    print(index)
}

for i in 0..<ITcompanies.count {
    print(ITcompanies[i])
}

for IT in ITcompanies[2...] {
    print(IT)
}

for IT in ITcompanies[..<2] {
    print(IT)
}

let range = ...50
range.contains(-10)
range.contains(0)
range.contains(50)
range.contains(51)

// Logical Operators
let allowedEntry = false

if !allowedEntry {
    print("ACCESS DENIED")
}

let numberPassword = true
let fingerPrint = false

//if fingerPrint && numberPassword {
if fingerPrint || numberPassword {
    print("ACCESS OK")
} else {
    print("ACCESS DENIED")
}
