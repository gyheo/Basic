import UIKit

class Person {
    var name = ""
    
    init() {
        // custom init code
    }
    
    init(_ name:String) {
        self.name = name
    }
}

class Employee: Person {
    var enrollYear = 0
    var role = ""
    var salary = 0
    
    override init(_ name:String) {
        super.init(name)
        
        self.role = "Analyst"
    }
    
    init(_ name:String, _ role:String) {
        super.init(name)
        
        self.name = name
        self.role = role
    }
    
    func doWork() {
        print("My name is \(name). I'm working")
        salary += 1
    }
    
    func levelUp() {
        enrollYear += 1
    }
}

// subclass and inheritance
class Manager: Employee {
    var teamSize = 0
    var incentive:Int {
        // computed property
        return teamSize * 1000
    }
    
    init(_ name:String, _ team:Int) {
        super.init(name)
        
        self.teamSize = team
    }
    
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

let employee1:Employee = Employee(e1Name)
let employee2:Employee = Employee(e2Name)
var manager1 = Manager(m1Name, 10)

employee1.enrollYear = e1EnrollYear
employee1.name = e1Name
employee1.role = e1Role

employee2.enrollYear = e2EnrollYear
employee2.name = e2Name
employee2.role = e2Role

manager1.name = m1Name
manager1.enrollYear = m1EnrollYear
manager1.role = m1Role

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

let person1 = Person()
print(person1.name)

let person2 = Person("Tom")
print(person2.name)

let employee3 = Employee("HGY", "Engineer")
print(employee3.name)
print(employee3.role)

let m = Manager("Chris", 11)
print(m.incentive)
