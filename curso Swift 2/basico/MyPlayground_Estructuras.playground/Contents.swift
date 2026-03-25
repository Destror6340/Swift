import UIKit

/*: **Escribe tu nombre y la fecha en un comentario** */

/*:
 # Estructuras
 
 Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante la clase referente a **Estructuras**.
 
 **¡Mucho éxito!**, las primeras tres personas tendrán un premio :D
  
 */

/*:
 ## 1.
 En este primer ejercicio debes completar la estructura Libro. Agrega al menos 4 propiedades (autor, título, año de publicación, número de páginas, etc.) y completa la función. Inicializa todos los valores a defecto. Después crea una instancia de tu libro favorito y llama al método informacionLibro.

 */

struct Libro {
    var autor = "Pablo Neruda"
    var titulo = "20 poemas y una triste cancion"
    var añoDePublicacion = "1983"
    var numeroDePaginas = "38"

    func informacionLibro ( ) {
        print("\(autor). \(titulo). \(añoDePublicacion). \(numeroDePaginas) paginas")
    }
}

let libro = Libro()
libro.informacionLibro()

/*:
 ## 2.
 En una ferretería los productos exportados están diseñados en diferente medida, principalmente en pulgadas. Crea una estructura de Medidas que tenga un inicializador personalizado que inicialice todas las medidas a centímetros.

 */
struct Medidas {
    var cm: Double
    
    init(CM: Double){
        self.cm = CM
    }
    init(KM: Double){
        self.cm = KM*1000
    }
}

var cm = Medidas(CM: 10)
var km = Medidas(KM: 32)
/*:
 ## 3.
 En el siguiente código se ha creado la estructura Post que representa una publicación en redes sociales. Agrega un método de mutación en la publicación llamado likeAdd que incremente la propiedad likes. Luego crea una instancia de Post y llama a likeAdd() en ella. Imprime la propiedad likes antes y después de llamar al método para ver si el valor se incrementó o no.

 */

struct Post {
    var message: String
    var likes: Int{
        willSet {
            print("aumentando de \(likes) a \(newValue)")
        }
        didSet {
            print("aumentò de \(oldValue ) a \(likes)")
        }
    }
    var numberOfComments: Int
    
    mutating func likeAdd(){
        self.likes += self.likes
    }
}

var post1 = Post(message: "hola", likes: 4, numberOfComments: 7)

post1.likeAdd()


