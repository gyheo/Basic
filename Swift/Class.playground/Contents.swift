import UIKit

class Person {
    var name = ""
}

class Employee: Person {
    var enrollYear = 0
    var role = ""
    
    func doWork() {
        print("My name is \(name). I'm working")
    }
    
    func levelUp() {
        enrollYear += 1
    }
}

// subclass and inheritance
class Manager: Employee {
    var teamSize = 0
    
    override func doWork() {
        print("I'm managing people. My team size is \(teamSize)")
        teamSize += 1
    }
    
    func firePeople() {
        print("I'm firiing you!")
    }
}

var p1 = Person()

p1.name = "person"
print(p1.name)
// p1.doWork()

let e1Name:String = "허건영"
let e1EnrollYear:Int = 2018
let e1Role:String = "developer"

let e2Name:String = "gyheo"
let e2EnrollYear:Int = 2019
let e2Role:String = "QA"

let m1Name:String = "Heo GeonYeong"
let m1EnrollYear:Int = 2020
let m1Role:String = "Product Manager"

let employee1:Employee = Employee()
let employee2:Employee = Employee()
var manager1 = Manager()

employee1.enrollYear = e1EnrollYear
employee1.name = e1Name
employee1.role = e1Role

employee2.enrollYear = e2EnrollYear
employee2.name = e2Name
employee2.role = e2Role

manager1.name = m1Name
manager1.enrollYear = m1EnrollYear
manager1.role = m1Role
manager1.teamSize = 5

print(manager1.name)
print(manager1.role)
manager1.doWork()
manager1.firePeople()

print(employee1.name)
employee1.levelUp()
print(employee1.enrollYear)
print(employee1.role)
employee1.doWork()

print(employee2.name)
employee2.levelUp()
print(employee2.enrollYear)
print(employee2.role)
employee2.doWork()
