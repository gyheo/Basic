import UIKit

var str = "Hello, playground"

print("Hello")

var sum = 0
for counter in 1...5 {
    // print("counter number is ",counter)
    
    // var sum = 0
    // sum += counter
    sum = sum + counter
}
print(sum)

var counter = 5

while counter < 10 {
    print("Swift")
    counter += 1
}

repeat {
    print("Swift", counter)
    counter += 1
} while counter < 11
