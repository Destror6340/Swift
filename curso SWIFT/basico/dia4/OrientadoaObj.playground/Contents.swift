import UIKit
//clases y herencia
class cochePadre {
    let ruedas: Int=4
    var marca: String="chevrolet"
    var velocidad: Double=0.0
    var descripcion: String{
      "El vehiculo es \(marca) tiene tuedas \(ruedas) y si velocidad de inicio es \(velocidad)"
    }
}
//objeto
let informacion = cochePadre()
print(informacion.descripcion)
//Clase hijo
class cocheHijo: cochePadre{
    var modelo: String="Suburban"
    var precio: Double=1_000_000
    let version: Int=2023
    var descripcion2: String {
        "modelo \(modelo), precio \(precio), version \(version)"
    }
}
//objeto
let infococheHijo=cocheHijo()
print(infococheHijo.descripcion,infococheHijo.descripcion2)
//****************************************************************\\
//clase padre
class celular {
    var marca: String="Samsung"
    var año: Int=2022
    var impuesto: Double=750.34
    var descripcion: String{
        "Marca: \(marca), año: \(año)"
    }
}
//clase hijo
class celular1: celular{
    var modelo: String="S22"
    var precio: Double=20_000
    var descripciondetallada: String{
        descripcion+", modelo: \(modelo), precio: \(impuesto+precio)"
    }
    func printInfo(){
        print(descripciondetallada)
    }
}
//objeto
let phone=celular1()
phone.printInfo()


