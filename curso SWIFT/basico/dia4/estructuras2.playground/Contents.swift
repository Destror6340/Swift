import UIKit
//metodos mutantes
struct tacometro {
    var count: Int=0
    mutating func incremento(){
        count+=1
    }
    mutating func incremento(by amount: Int){
        count+=amount
    }
    mutating func resetear(){
        count=0
    }
}
//Creando instancia de tipo tacomnetro
var taco=tacometro()
taco.incremento()
taco.incremento(by: 15)
taco.resetear()
//propiedades calculadas
struct temperatura{
    var celcius: Double
    var faren: Double{  //asi se define la propiedad calculada
        celcius*1.8+32
    }
    var kelvin: Double{
        celcius+273.15
    }
}
//creando instancia
var temp=temperatura(celcius: 0.0)//se necesita dar el valor de la propiedad para calcular las otras propiedades
print(temp.kelvin)
print(temp.faren)

//observadores de propiedad
struct person{
    var prendas: String{
        willSet{
            print("estoy cambiando de "+prendas+" a "+newValue)
        }
        didSet{
            print("estoy cambiando de "+oldValue+" a "+prendas)
        }
    }
}
var jose=person(prendas: "playera")
jose.prendas="bermudas"
print(jose.prendas)

struct size{
    var ancho: Int
    var alto: Int
}
var somesize = size(ancho: 20, alto: 65)
var otrasize = somesize
somesize.ancho=100
print(somesize.ancho)
print(otrasize.ancho)

