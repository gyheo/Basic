import UIKit

var str = "Hello, playground"

//func addTwoNumbers (arg x:Int, arg2 y:Int) -> Int {
func addTwoNumbers (x:Int, y:Int) -> Int {
    let x = x
    let y = y
    let z = x + y
    
    print(z)
    
    return z
}

// local variable declared in the scope
// print(x)

let x = addTwoNumbers(x: 5, y: 6)
print(x)

func subtractTwoNumbers(number1:Float, number2:Float) -> Float {
    let p = number1
    let q = number2
    let r = p - q
    print(r)
    
    return r
}

subtractTwoNumbers(number1: 5.5, number2: 4.4)
