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

// String Interpolation

print(#"1 더하기 14는 \#(1 + 14)."#)
print(#"6 times 7 is \#(6 * 7)."#)

// Unicode, international standard encoding
let eAcute: Character = "\u{E9}"

//let greeting = "안녕하세요🚶‍♂️"
var greeting = "안녕하세요🚶‍♂️"
greeting[greeting.startIndex]
greeting[greeting.index(before:greeting.endIndex)]
greeting[greeting.index(after:greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 0)
greeting[index]

greeting.insert(",", at: greeting.endIndex)
print(greeting)

greeting.insert(contentsOf: " 잘있어요.", at: greeting.endIndex)
print(greeting)

greeting.remove(at: greeting.index(before: greeting.endIndex))
print(greeting)

let hiIndex = greeting.firstIndex(of: "하") ?? greeting.endIndex

let hi = greeting[..<hiIndex]
let hiString = String(hi)

print(hiString)

let iPhone12 = "Apple annouced iPhone 12"
let iPhone12Same = "Apple annouced iPhone 12"

if iPhone12 == iPhone12Same {
    print("iPhone 12")
} else {
    print("It's not a iPhone")
}

let eAcuteQuestion = "Voulez-vouz un caf\u{E9}?"

let combinedEAcuteQuestion = "Voulez-vouz un caf\u{65}\u{301}?"

if eAcuteQuestion == combinedEAcuteQuestion {
    print("It's same")
}

let schedule = [
    "[외부]_일정1",
    "[내부]_일정1",
    "[외부]_일정2",
    "[내부]_일정2",
    "[외부]_일정3",
    "[내부]_일정3",
]

var interSchedule = 0

for key in schedule {
    if key.hasPrefix("[내부]") {
        interSchedule += 1
    }
}

print("내부 일정 수 : \(interSchedule)")

// Unicode
let running = "running🏃‍♂️"

for codeUnit in running.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in running.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
