import UIKit

//guard
var birthDayIsToday: Bool = true
var invitedGuests: [String] = ["Marcos"]
var cakeCandlesLit: Bool = false


func singHappyBirthday() {
    if birthDayIsToday {
        if !invitedGuests.isEmpty {
            if cakeCandlesLit {
                print("¡Feliz Cumpleaños!")
            } else {
                print("No se han encendido las velas del pastel")
            }
        }else {
            print("Solo es una fiesta familiar")
        }
    }else {
        print("Nadie cumple años hoy")
    }
}

singHappyBirthday()


func singHappyBirthday1() {
    if !birthDayIsToday {
        print("Nadie cumple años hoy")
        return
    }
    
    if invitedGuests.isEmpty {
        print("Solo es una fiesta familiar")
        return
    }
    
    if cakeCandlesLit == false   {
        print("No se han encendido las velas del pastel")
        return
    }
    
    print("¡Feliz cumpleaños!")
}

singHappyBirthday1()

func singHappyBirthdayGuard() {
    guard birthDayIsToday else {
        print("Nadie cumple años hoy")
        return
    }
    
    guard !invitedGuests.isEmpty else {
        print("Solo es una fiesta familiar")
        return
    }
    
    guard cakeCandlesLit else {
        print("No se han prendido las velas del pastel")
        return
    }
    
    print("¡Ferliz cumpleaños!")
}

singHappyBirthdayGuard()

func divide(_ number:Double, by divisor: Double){
    if divisor != 0.0 {
        let result = number/divisor
        print(result)
    }
}
divide(2.9, by: 8)
func divideGuard(_ number: Double,by divisor: Double) {
    guard divisor != 0.0 else  {
        return
    }
    let result = number/divisor
    print(result)
}

divideGuard(2.9, by: 2.9)
func divide1(_ number: Double,by divisor: Double){
    if divisor == 0.0 {
        return
    }
    let result = number/divisor
    print(result)
}

divide1(2.9, by: 2.9)

///Guard con opcionales
///
struct goose {
    var eggs: Int?
    var name: String
    init (eggs: Int?, name: String){
        self.eggs = eggs
        self.name = name
    }
}

var goose1 = goose(eggs: 1, name: "Vico")

if let eggs = goose1.eggs {
    print("El ganzo puso \(eggs) huevos")
}
//egss no es accesible aqui


func huevos(goose: goose){
    guard let eggs = goose.eggs else {
        print("No tiene huevos")
        return
    }
    
    print("La oca puso \(eggs) huevos.")
}
huevos(goose: goose(eggs: nil, name: "Pablo"))

func processBook(tittle: String?, price: Double?, pages: Int?){
    if let theTitle = tittle,
       let thePrice = price,
       let thePages = pages {
        print("\(theTitle) cuesta $\(thePrice) y tiene \(thePages)")
    }
    else {
        print("El libro no contiene alguno de los elementos necesarios para poder ser registrado")
    }
}

func processBookGuard(tittle: String?, price: Double?, pages: Int?){
    guard let theTitle = tittle,
          let thePrice = price,
          let thePages = pages else {
        print("El libro no contiene alguno de los elementos necesarios para poder ser registrado")
        return
    }
    print("\(theTitle) cuesta $\(thePrice) y tiene \(thePages)")
}

