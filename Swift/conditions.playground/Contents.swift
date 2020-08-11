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

var temperatureInFahrenheit = 90

if temperatureInFahrenheit <= 32 {
    print("It's very cold")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold.")
}
