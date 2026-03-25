import Cocoa

/*:
 # Ejercicios de Lógica
 Los siguientes ejercicios fueron diseñados con el objetivo de reforzar los conocimientos adquiridos en el curso, además de obtener habilidades referentes a la lógica de programación.
 
 **Mucho éxito!**, las primeras tres personas en terminar tendran un premio :D

 ## 1
 En el espacio inferior realiza un programa que genere 10 números enteros aleatorios(del 1 al 20) sin que estos se repitan.
 */
import Foundation

func generarNumerosAleatorios() -> [Int] {
    var numerosAleatorios = Set<Int>()
    //var numeroAleatorio:[Int]
    while numerosAleatorios.count < 10 {
        var numeroAleatorio: Int
        repeat {
            numeroAleatorio = Int.random(in: 1...20)
        } while numerosAleatorios.contains(numeroAleatorio)
        numerosAleatorios.insert(numeroAleatorio)
    }
    return Array(numerosAleatorios)
}

let numerosGenerados = generarNumerosAleatorios()
print("Números generados: \(numerosGenerados)")
/*:
 ## 2
 Define una función que tome por argumentos un número objetivo o target y un arreglo de números enteros positivos. La cual se encargue de verificar si el arreglo contiene 2 números tales que su suma sea el valor del target, de ser así regresa un arreglo que contenga dichos números, de lo contrario regresa un valor nulo.

 */
func encontrarSumaObjetivo(_ target: Int, en numeros: [Int]) -> [Int]? {
    var numerosVistos = [Int: Int]()
    for (indice, num) in numeros.enumerated() {
        let complemento = target - num
        if let indiceComplemento = numerosVistos[complemento] {
            return [num, numeros[indiceComplemento]]
        }
        numerosVistos[num] = indice
    }
    return nil
}
let arreglo = [2, 7, 11, 15]
let objetivo = 9

if let resultado = encontrarSumaObjetivo(objetivo, en: arreglo) {
    print("Los números que suman \(objetivo) son: \(resultado)")
} else {
    print("No se encontraron números que sumen \(objetivo).")
}
