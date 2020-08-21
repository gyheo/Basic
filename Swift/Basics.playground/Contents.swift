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

let decimalInteger = 14
let binaryInteger = 0b01110
let octalInteger = (0o10 - 0o01) * 2
let hexaInteger = 0x10 - 0x1 * 2
