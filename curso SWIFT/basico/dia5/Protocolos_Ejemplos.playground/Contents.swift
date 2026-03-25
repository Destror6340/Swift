import UIKit

///Introduccion
let string = "Hello, world"
print(string)

let number = 42
print(number)

let boolean = false
print(boolean)

///Imprimir informacion con CustomStringConvertible

class Shoe {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool){
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
let yourShoe = Shoe(color: "Red", size: 8, hasLaces: false)
//print(myShoe)
//print(yourShoe)

class ShoeCustom: CustomStringConvertible {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool){
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
   var description: String {
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces)"
    }
    /*var description: String {
        let doesOrNot = hasLaces ? "does" : "does not"
        return "This Shoe is \(color), size \(size), and \(doesOrNot) have laces"
    }*/
}

let myShoeCustom = ShoeCustom(color: "Black", size: 12, hasLaces: true)
let yourShoeCustom = ShoeCustom(color: "Red", size: 8, hasLaces: false)

print(myShoeCustom)
print(yourShoeCustom)

///Comparar informacion con Equatable
///
struct Employee {
    var firstName: String
    var lastName: String
    var jobTittle: String
    var phoneNumber: String
}

struct Company {
    var name: String
    var employees: [Employee]
}


let currentEmployee = Employee(firstName: "Daren", lastName: "Estrada", jobTittle: "Product Manager", phoneNumber: "415-555-0692")

let selectedEmployee = Employee(firstName: "James", lastName: "Kittel", jobTittle: "Marketing Director", phoneNumber: "415-555-9293")

/*if currentEmployee == selectedEmployee{}
}*/

struct Employee1: Equatable {
    var firstName: String
    var lastName: String
    var jobTittle: String
    var phoneNumber: String
    
    static func ==(lhs: Employee1, rhs: Employee1) -> Bool {
        //Logic that determinates whether the value on the left-Hand
        //side and right-hand are equal
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName /*&& lhs.jobTittle == rhs.jobTittle && lhs.phoneNumber == rhs.phoneNumber*/
    }
}

let currentEmployee1 = Employee1(firstName: "James", lastName: "Kittel", jobTittle: "Industrial director", phoneNumber: "415-555-7766")

let selectedEmployee2 = Employee1(firstName: "James", lastName: "Kittel", jobTittle: "Marketing Director", phoneNumber: "415-555-9293")

if currentEmployee1 == selectedEmployee2 {
    print("Son la misma persona")
} else {
    print("Son empleados diferentes")
}

struct Empleado: Equatable {
    var firstName: String
    var lastName: String
    var jobTittle: String
    var phoneNumber: String
}

let Empleado1 = Empleado(firstName: "Marcos", lastName: "Mtz", jobTittle: "Industrial director", phoneNumber: "415-555-7766")

let Empleado2 = Empleado(firstName: "Marcos", lastName: "Mtz", jobTittle: "Marketing Director", phoneNumber: "415-555-9293")

if Empleado1 == Empleado2 {
    print("Son la misma persona")
} else {
    print("Son empleados diferentes")
}

///Creando un protocolo
protocol FullyNamed {
    var fullName: String { get }
    func sayFullName()
}

/*struct Person: FullyNamed {
    var firsName: String
    var lastName: String
}*/

struct Person1: FullyNamed {
    var firsName: String
    var lastName: String
    var fullName: String {
        return "\(firsName) \(lastName)"
    }
    func sayFullName() {
        print(fullName)
    }
}

let persona = Person1(firsName: "Marcos", lastName: "Mtz")
persona.sayFullName()
