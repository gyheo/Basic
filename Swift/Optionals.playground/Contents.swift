import UIKit

var a:String = "안녕"

var b:String? = nil

class XmasPresent {
    func suprise() -> Int {
        return Int.random(in: 1...10)
    }
}

let present:XmasPresent? = XmasPresent()

// Check the optional to see if it contains an object
if present != nil {
    // it contains an object
    // call the surprise function
    print(present!.suprise())
}

// Optional binding
if let actualPresent = present {
    print(actualPresent.suprise())
}

// Optional chaining`
present?.suprise()

// Swift is type safed
// d can store a string or nil, but it is already wrapped
var c:String? = nil

// d can store a string or nil, but it is already unwrapped
var d:String!

var present1:XmasPresent? = nil

var present2:XmasPresent! = XmasPresent()

//present1.suprise()
present2.suprise()
