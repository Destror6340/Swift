import UIKit

class perro{
    var edad: Int=4
    func ladrido(){
        print("WOW")
    }
}
class pastor: perro{
    let nombre: String="relampago"
    override func ladrido(){
        super.ladrido()
        print("woooooooow")
    }
}
let cachorro = pastor()
cachorro.ladrido()

//inicializador de variables
class cochePadre {
    let ruedas: Int
    var marca: String
    var velocidad: Double
    init(marca: String, ruedas: Int, velocidad: Double){
        self.marca=marca
        self.ruedas=ruedas
        self.velocidad=velocidad
    }
}
//objeto
let informacion = cochePadre(marca: "Ford", ruedas: 4, velocidad: 300.5)
class cocheHijo: cochePadre{
    var modelo: String="Focus"
    var precio: Double=2323.32
    var version: Int=2022
    init(modelo: String, precio: Double, version: Int){
        self.modelo=modelo
        self.precio=precio
        self.version=version
        super.init(marca: "Ford", ruedas: 4, velocidad: 566)
    }
    init(){
        super.init(marca: "Ford", ruedas: 4, velocidad: 566)
    }
}
