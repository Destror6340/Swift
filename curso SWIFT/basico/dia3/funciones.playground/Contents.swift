import UIKit
var greeting = "Hello, playground"
//primer funcion
func saludo(){
    print("hola mundo")
}
saludo()
//valores de parametros predeterminados
func suma(n1: Int=4, n3:Int=5, n2: Int=10) {
    print("el resultado es: \(n1+n2+n3)")
}
suma()
//funcion con valor de retorno
func resta(n1: Double=7.65, n2: Double=9.34, n3: Double=9.76) -> Double {
    let resultado=n1-n2-n3
    return resultado
}
//recibe valor en parametros
func imprimirResultado(n: Double){
    print("El resultado de la operacion es: \(n)")
}
//llamar funcion y asignar valor a los parametros
imprimirResultado(n: resta())
//se crea funcion que retorno
func multiplicacion(n1: Double, n2: Double) -> Double {
    return (n1*n2)
}
// se crea variable de valor y se le asigna el valor de la multiplicacion
var Valor:Double=multiplicacion(n1: 5, n2: 2)
//Se imprime el valor con la funcion imprimirResultado
imprimirResultado(n: Valor)
//funcion con etiquetas
func saludarAmigos(a nombre1: String, y nombre2: String){
    print("Hola "+nombre1+" y "+nombre2)
}
saludarAmigos(a: "Maria", y:"jesus") // se asignan parametros a traves de las etiquetas
