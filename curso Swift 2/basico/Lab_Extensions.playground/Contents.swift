import UIKit
import Foundation

/*: **Escribe tu nombre y la fecha en un comentario** */

/*:
 # Extensions
 
 Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante el apartado referente a **Extensions**.
 
 **Mucho éxito!**, las primeras tres personas tendran un premio :D
  
  Tu primera tarea en este ejercicio es realizar una impresión en consola mediante la cual expliques con tus propias palabras lo que es una Extension y para que sirve al momento de programar:
 */
print("Como su nombre lo inbdica son una extension, en eset casi de dagtos o estrucutras de datos que permiten modificar o agregar propiedades a los tipos de datos ya mencionados")

/*:
 ## 1.
 Supon que estas intentando hacer un programa, sin embargo, al tratar de agregar tu color favorito, ten encuentras con que este no aparece en los comandos.
 En el espacio inferior, añade un color extra a la paleta de colores de UIColor, el cual debe tener el nombre de tu preferencia y las configuraciones rgb de tu preferencia:  */
extension UIColor{
    static var colorFav: UIColor {
        let red = 255.0
        let green = 100.0
        let blue = 10.0
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
/*:
 ## 2.
 Para llevar a cabo un sorteo se necesitan filtrar los boletos en pares e impares. En el apartado inferior Inicializa 5 variables de tipo entero que simulen los boletos y crea una extensión para los enteros, en la cual se añada una función que pueda idefentificar si se trata de un boleto par o impar, en cualquier caso, dentro de la función encargate de imprimir el tipo de boleto. Por último, aplica el método para cada uno de los boletos que creaste con anterioridad.

 Recuerda que en una Extension para referirte al objeto como tal, utilizas la plabra clave "self".  */
var b1: Int 
var b2: Int
var b3: Int
var b4: Int
var b5: Int
extension Int{
    mutating func par() {
        if self % 2 == 0 {
            print("Es par")
        }
        else {
            print("No es par")
        }
    }
}
var num1: Int = 2
var num2: Int = 3
num1.par()
num2.par()

/*:
 ## 3.
 Como programador, en ciertas empresas se te requerira la realización de un codigo limpio y ordenado. Imaginemos que tu colega salió de fiesta la noche anterior y el codigo que escribió al siguiente día milagrosamente funciona, sin emabrgo, es necesario que sea ordenado.
 
 Encargate de ordenar el codigo que se muestra a continuación:  */

struct Vehicle{
    var wheels: Int
    var model: Int
    var brand: String
}
func addWheel(vec: Vehicle){
    var vec1 = vec
    vec1.wheels+=1
}
extension Vehicle{
    mutating func aumenta1llantas() {
        self.wheels += 1
    }
}
var carro: Vehicle = Vehicle(wheels: 3, model: 12, brand: "gdfjkh")
print(carro.wheels)
carro.aumenta1llantas()
print(carro.wheels)

struct Alumnos{
    var Nombre: String
    var edad: Int
    var grado: Int
}
func aumenta_Edad_Grado( Alumno: Alumnos){
    var Alumno1 = Alumno
    Alumno1.edad += 1
    Alumno1.grado += 1
}
extension Alumnos{
    mutating func aumenta1año() {
        self.edad += 1
    }
    mutating func aumenta1grado() {
            self.grado += 1
        }
}
var alu: Alumnos = Alumnos(Nombre: "hjj", edad: 4, grado: 243)
print(alu.edad)
alu.aumenta1año()
print(alu.edad)
/*:
 ### Felicidades has terminado el Playground correspondiente a extensions
 */




