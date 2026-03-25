import UIKit
var greeting = "Hello, playground"
//closure basico
let driving={
    print("Estoy manejando un carro")
}
driving()
//closure con parametros
let swimming={(place: String) in
    print("estoy nadando a\(place)")
}
swimming("mexico") //se asigna valor a los parametros directamente
//closure con devolucion de valores
let drivingReturn={(place: String)-> String in
    return "estoy viajando a \(place) en avion"
}
print(drivingReturn("francia"))
//closure con vaerios parametros
let cierre={(place: String, time: Double) in
    print("estamos viajando a \(place) y el tiempo estimado es \(time) horas")
}
cierre("alemania", 2.5)
//funcion que recibe un parametro son definir el tipo
func travel(action:() -> Void){
    print("estoy alistandome para salir")
    action()
    print("he llegado")
}
//se asigna el closure "driving" al parametro de la funcion
travel(action: driving)
