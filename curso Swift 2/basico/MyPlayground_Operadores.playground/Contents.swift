import UIKit

/*: **Escribe tu nombre y la fecha en un comentario** */

/*:
 # Operadores
 
 Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante la clase referente a **Operadores**.
 
 **¡Mucho éxito!**, las primeras tres personas tendrán un premio :D
  
 */

/*:
 ## 1.
 Observa la siguiente suma. Tu primera tarea consiste en declarar 3 constantes que realicen la resta, multiplicación y división con **x** y **z**. Imprime el resultado de cada una.
*/
let x = 1008
let z = 168

let suma = x + z
let resta = x - z
let multiplicacion = x * z
let division = x/z
print("El resultado de la suma es: \(suma)")
print("El resultado de la resta es: \(resta)")
print("El resultado de la multiplicacion es: \(multiplicacion)")
print("El resultado de la division es: \(division)")
/*:
 ## 2.
 En una granja se tiene un terreno rectangular de 19 metros de ancho por 56 de largo. Si se quiere cercar el terreno, declara una constante que calcule el perímetro. No olvides imprimir el valor resultante.

*/
let ancho = 19
let largo = 56
let peri = ancho*largo
print("Perimetro: \(peri) m^2")

/*:
 ## 3.
 Mr. Smith tiene un saldo inicial de 11,500 pumadoláres en su cuenta de banco. Sin embargo, ayer perdió la mitad de esa cantidad en una apuesta. Imprime en la consola su estado de cuenta actual.
*/
print("Dinero actual: \(11500/2)")

/*:
 ## 4.
 Agrega los paréntesis necesarios para que la siguiente operación sea igual a 1:
*/

let elResultado1 = (30-((5*10)/2+2))/3
print(elResultado1)

/*:
 ## 5.
 En una carrera, un caballo ha dado 4 vueltas en una pista circular de 0.5 km de radio. Si en  total debe recorrer 2000 metros para poder ganar, calcula el porcentaje de su avance.

*/

let pi = 3.14
let circuPista = pi * 2 * 500
print("El caballo ha corrido: \(circuPista*4) m")
