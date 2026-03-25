import UIKit
import Foundation
/*: **Escribe tu nombre y la fecha en un comentario** */

/*:
 # Protocolos
 
 Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante el apartado referente a **Protocolos**.
 
 **Mucho éxito!**, las primeras tres personas tendran un premio :D
  
  Tu primera tarea en este ejercicio es realizar una impresión en consola mediante la cual expliques con tus propias palabras lo que es un Protocolo y como es implementado, además de dar al menos 2 ejemplos de **Protocolos** otorgados por swift:
 */
print("es una definición de una serie de métodos y propiedades que una clase, estructura o enumeración puede adoptar. se implementan como si se tratara de la herencia de una clase, por ejemplo existen: CustomStringConvertible  y Equatable")

// Implementación del protocolo CustomStringConvertible para una estructura Book
struct Book: CustomStringConvertible {
    let title: String
    let author: String
    let year: Int
    
    // Implementación de la propiedad description para describir el libro
    var description: String {
        return "\(title) by \(author) (\(year))"
    }
}

let book = Book(title: "Swift Programming", author: "John Smith", year: 2023)
print(book)


// Implementación del protocolo Equatable para una estructura Point
struct Point: Equatable {
    let x: Int
    let y: Int
    
    // Implementación del operador de igualdad para comparar dos puntos
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

let point1 = Point(x: 2, y: 3)
let point2 = Point(x: 2, y: 3)
if point1 == point2 {
    print("Los puntos son iguales.")
} else {
    print("Los puntos son diferentes.")
}

/*:
 ## 1.
 En un noticiero matutino tienen problemas para imprimir la información que se necesitará para las noticias del día, ya que el programador de la anterior dejó almacenado la información en una como la que se muestra a continuación:*/
/*struct Noticia{
    var fecha: Int
    var autor: String
    var noticia: String
}

let noticia1 = Noticia(fecha: 25062023, autor: "Anonimo", noticia: "Apple publica Vision Pro")*/

/*: Sin embargo, en el noticiero al intentar imprimir la noticia del día, se percataron de que la forma de hacerlo no era la adecuada, o en algunos casos les era imposible.
 Con lo aprendido en el capítulo previo, ayuda al noticiero a imprimir la noticia, modifica el código de la estructura y añade la impresión en el espacio inferior: */
struct Noticia: CustomStringConvertible {
    var fecha: Int
    var autor: String
    var noticia: String
    
    // Implementación de la propiedad description para describir la noticia
    var description: String {
        return "Fecha: \(fecha), Autor: \(autor), Noticia: \(noticia)"
    }
}

let noticia1 = Noticia(fecha: 25062023, autor: "Anonimo", noticia: "Apple publica Vision Pro")
print(noticia1)


/*:
 ## 2.
 En DHL tienen un problema al momento de realizar envíos, pues cuando se quiere conocer el destinatario existen controversias debido a que algunas personas tienen el mismo nombre además de haber nacido el mismo día; el programador anterior definió la estructura que podemos ver en la parte inferior, en la cual se registraban los datos personales, además de asignar un ID único a cada persona; lamentablemente el programador tuvo que retirarse antes de haber terminado.
  
  Continúa la estructura asignando un protocolo que ayude a comparar ese ID; crea 2 instancias e imprime la comparación de las mismas.  */
var id = 0

struct Usuario: Equatable {
    var nombre: String
    var edad: Int
    var fechadeNacimiento: String
    var iD: Int {
        id += 1
        return id
    }
}

let usuario1 = Usuario(nombre: "Juan", edad: 30, fechadeNacimiento: "1993-05-15")
let usuario2 = Usuario(nombre: "Maria", edad: 25, fechadeNacimiento: "1996-10-20")

if usuario1.iD == usuario2.iD {
    print("Los usuarios tienen el mismo ID.")
} else {
    print("Los usuarios tienen IDs diferentes.")
}


/*:
 ## 3.
 Tu profesor de Literatura te solicita que ordenes alfabéticamente los nombres de tus compañeros considerando el apellido inicial para realizar el ordenamiento. Crea una clase de nombre Alumnos mediante la cual registres el nombre, edad, y número de cuenta de tus compañeros; con datos de tipo String, Int, Int respectivamente. Aplica el adecuadamente protocolo correspondiente para realizar el ordenamiento.
  Crea al menos 3 instancias de Alumnos y ordenarlas mediante la función .sorted(by:) */
class Alumno:Equatable, Comparable, Codable {
    static var contador = 0
    var nombre: String
    var edad: Int
    var numeroCuenta: Int
    init(nombre: String, edad: Int, numeroCuenta: Int) {
        self.nombre = nombre
        self.edad = edad
        self.numeroCuenta = numeroCuenta
    }
    static func < (lhs: Alumno, rhs: Alumno) -> Bool {
        return lhs.nombre < rhs.nombre
    }
    static func == (lhs: Alumno, rhs: Alumno) -> Bool {
        return lhs.nombre == rhs.nombre
    }
}
// Crear instancias de Alumno
let alumno1 = Alumno(nombre: "Juan Pérez", edad: 20, numeroCuenta: 123456)
let alumno2 = Alumno(nombre: "María López", edad: 22, numeroCuenta: 654321)
let alumno3 = Alumno(nombre: "Carlos García", edad: 21, numeroCuenta: 987654)
// Crear un arreglo con los alumnos
let alumnos = [alumno1, alumno2, alumno3]
// Ordenar los alumnos alfabéticamente por apellido inicial
let alumnosOrdenados = alumnos.sorted(by: <)
print(alumnosOrdenados)

struct sensor:Equatable, Comparable {      //when using comparable //protocol, its necesary to adopt Equatable protocol too and to add de operator
    // < in te return of the fuction
    var Name: String
    var messure: String
    var comunication: String
    
    static func < (lhs: sensor, rhs: sensor)-> Bool {
        return lhs.Name > rhs.Name
        //lhs and rhs indicates comparation from the left and rigth side
        //operator < sort string alphabetically from top to botom, > sort
        //strings alphabetucally from botom to top
    }
}
let sensor1=sensor(Name: "BMI160", messure: "Acelerometer", comunication: "SPI")
let sensor2=sensor(Name: "bmp280", messure: "Temperature", comunication: "I2C")
let sensors=[sensor1,sensor2]
let sortedSensors = sensors.sorted(by: <)
print("Comparable result example")
print(sortedSensors)
/*:
 ## 4.
 Logra que la clase anterior adopte el protocolo necesario, para poder cumplir con el objetivo de compartir los datos ordenados con tu profesor. Por último con el procedimiento adecuado(en el espacio de abajo), guarda todas las instancias creadas en un solo String.  */
print("Json result example")
let jsonEncoder = JSONEncoder()
for alumno in alumnosOrdenados{
    if let jsonData = try? jsonEncoder.encode(alumno),
       let jsonString = String(data: jsonData, encoding: .utf8){
        print(jsonString)
    }
}



/*:
 ### Felicidades has completado el Playground correspondiente a Protocols */
