import UIKit

var str = "Hello, playground"

let a = 123
let b = 3
let c = 15

if a <= 200 || b > 5 {
    print("a is less than 10 or b is greater than 5")
}
else if b == 3 && c >= 15{
    print("b equals 3 and c is greater than 15")
}
else {
    print("I don\'t know")
}

let codeScore = 93

switch codeScore {
    case 99, 98, 97, 96, 95, 94, 93, 92, 91, 90:
        print("Senior")
    case 80:
        print("Junior")
    default:
        print("beginner")
}
