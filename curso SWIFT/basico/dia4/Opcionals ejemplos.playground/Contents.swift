import UIKit
/// Nil (nulo)
struct Book {
  var name: String
  var publicationYear: Int?//valor opcional, se requiere especificar el tipo
}

let firstHarryPotter = Book(name: "Harry Potter y la piedra filosofal", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter y la cámara secreta", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter y el prisionero de Azkaban", publicationYear: 1999)

let books = [firstHarryPotter, secondHarryPotter, thirdHarryPotter]

let unannouncedBook1 = Book(name: "Rebeldes y leones", publicationYear: 0)

let unannouncedBook2 = Book(name: "Rebeldes y leones", publicationYear: 2023)

let unannouncedBook3 = Book(name: "Rebeldes y leones", publicationYear: nil)

//Especificar el tipo

var serverResponseCode = 404 //Int, no Int?

//var serverResponseCode1 = nil //Error, no se especifico un tipo cuando no es nil

var serverResponseCode3:Int? = 404 //Establecido en 404 pero podria ser "nil" mas adelante

var serverResponseCode4:Int? = nil// establecido nil pero podria ser Int mas adelante


///Trabajar con valores opcionales
var publicationYear1: Int? = nil

if publicationYear1 != nil {
    let actualYear = publicationYear1!//simbolo de extraccion
    print(actualYear)
}

/*let unwrappedYear = publicationYear1!//Error en tiemo de ejecucion
print(unwrappedYear)*/
//con if es posible manejar el nulo
if let unwrappedYear1 = publicationYear1 {
    print("El libro se publico en \(unwrappedYear1)")
} else {
    print("El libro no tiene año de publicacion")
}

///// funciones y opcionales
///
let string = "123"
let posibleNumber = Int(string)
let string1 = "s"
let possibleNumber1 = Int(string1)

func printFullName(firstName: String, middleName: String?, lastName: String){
    if let middle = middleName {
        print("Tu nombre es \(firstName) \(middle) \(lastName)")
    }else {
        print("Tu nombre es \(firstName) \(lastName)")
    }
}
printFullName(firstName: "Marcos", middleName: "fdfnn", lastName: "Mtz")
//puede devolver una cadena o no
func tienesHambre(Respuesta: String) -> String? {
    if Respuesta == "Si" {
        return "Quiero unas alitas"
    }else if Respuesta == "No"{
        return nil
    }else {
        return nil
    }
}
if let hambre = tienesHambre(Respuesta: "Si"){
    print(hambre)
}
tienesHambre(Respuesta: "no")
///inicializadores Falibles
struct Toddler {
    var name: String
    var mountsOld: Int
    
    init?(name: String, mountsOld: Int){
        if mountsOld < 12 || mountsOld > 36 {
            return nil
        }else {
            self.name = name
            self.mountsOld = mountsOld
        }
    }
}

if let niño = Toddler(name: "Pablito", mountsOld: 40){
    print("hola \(niño.name), tienes \(niño.mountsOld) meses")
} else {
    print("El niño no cumple con los requerimentos de edad")
}


struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
}
////encadenamiento opcional
let person = Person(age: 21,residence: Residence(address: Address(buildingNumber: "21", streetName: "Zaragoza",apartmentNumber: "465")))

if let theResidence = person.residence {
    if let theAdreess = theResidence.address {
        if let theApartmentNumber = theAdreess.apartmentNumber {
            print("Vives en el departamento \(theApartmentNumber)")
        }else{
            print("Esta persona vive en casa propia")
        }
    }
}
//encadenamiento opcional
if let theApartmentNumber = person.residence?.address?.apartmentNumber {
    print("Vives en el departamento \(theApartmentNumber), feliz dia")
}else {
    print("Esta persona vive en casa propia, feliz dia")
}
