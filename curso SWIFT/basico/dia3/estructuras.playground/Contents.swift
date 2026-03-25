import UIKit

struct persona {
    var nombre:String
    var edad:Int
}
let persona1=persona(nombre: "Juan", edad: 26)
print(persona1.nombre, persona1.edad)
//funcion dentro de la estructura
struct personax {
    var nombre: String
    func saluda(){
        print("Hola mi nombre es \(nombre)")
    }
}
let persona2=personax(nombre: "pancho")
persona2.saluda()
//instancias
enum size {
    case L; case M; case C; case XL
}
enum color {
    case negro; case rojo; case azul; case amarillo
}
struct playera {
    var size: size
    var color:color
}
let P1=playera(size: .M, color: .amarillo)

struct carro {
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    func startEngine(){
        print("El motor de \(make) \(model) \(year) ha arrancado")
    }
    func drive(){
        print("El \(make) \(model) \(year) se esta moviendo")
    }
}

let carro1=carro(make: "ford", model: "Focus RS", year: 2022, topSpeed: 300)
carro1.drive()
carro1.startEngine()

//inicializadores
var name = String.init()

struct size2{
    var ancho: Double
    var alto: Double
    func area() -> Double{
        return ancho*alto
    }
}

let cosa=size2(ancho: 2.45, alto: 5.32)
print("El area es \(cosa.area())")

