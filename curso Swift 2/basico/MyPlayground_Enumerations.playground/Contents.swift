import UIKit

/*: **Escribe tu nombre y la fecha en un comentario** */
// León Mendoza Néstor Gabriel 27/07/23 Aquí :)
/*:
 # Enumeraciones
 
 Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante la clase referente a **Enumeraciones**.
 
 **Mucho éxito!**, las primeras tres personas tendrán un premio :D
  
 */

/*:
 ## 1.
 Cada mañana un noticiero reporta el estado del tiempo atmosférico de 3 ciudades. Tu tarea consiste en definir una enumeración que defina 4 pronósticos distintos (soleado, lluvioso, nublado y nevado), completar la función y crear una instancia por cada una de las ciudades.

*/
struct EstadoTiempoAtmosferico {
    var ciudad: String
    var latitud: Double
    var longitud: Double
    var clima: Clima
    
    func reportarTiempo() -> String {
        return String(describing: self.clima)
    }
}

enum Clima {
    case soleado, lluvioso, nublado, nevado
}

let estadoHoy = EstadoTiempoAtmosferico(ciudad: "Mexico", latitud: 19.1918327, longitud: 99.878687, clima: .nublado)
print("Hoy está \(estadoHoy.clima) en \(estadoHoy.ciudad)")

/*:
 ## 2.
 La Administración Nacional de Aeronáutica y el Espacio (NASA), es la agencia del gobierno estadounidense responsable de las investigación aeroespacial. Para un proyecto desarrolló una página Web que ofrece información de cada planeta. Completa la siguiente función escribiendo una breve descripción de cada uno de los planetas del Sistema Solar. Finalmente declara una variable con tu planeta favorito y llamada la función.
*/

enum Planeta {
    case mercurio, venus, tierra, marte, jupiter, saturno, urano, neptuno, pluton
}

func describirPlaneta(planeta: Planeta) -> String {
    switch planeta {
    case .mercurio:
        return "Mercurio es el planeta más cercano al Sol y es el más pequeño del Sistema Solar."
    case .venus:
        return "Venus es conocido como el 'planeta gemelo' de la Tierra debido a su tamaño similar."
    case .tierra:
        return "La Tierra es nuestro hogar y el único planeta conocido con vida."
    case .marte:
        return "Marte es el 'planeta rojo' debido a su superficie rojiza y es objeto de exploración espacial."
    case .jupiter:
        return "Júpiter es el planeta más grande del Sistema Solar y es conocido por su Gran Mancha Roja."
    case .saturno:
        return "Saturno es famoso por sus impresionantes anillos que lo rodean."
    case .urano:
        return "Urano es un planeta helado y gira sobre su costado, dando lugar a estaciones extremas."
    case .neptuno:
        return "Neptuno es el planeta más distante del Sistema Solar y tiene un característico color azul intenso."
    case .pluton:
        return "Plutón, aunque ya no se considera un planeta, es un objeto helado en el cinturón de Kuiper."
    }
}

let miPlanetaFavorito: Planeta = .tierra

print(describirPlaneta(planeta: miPlanetaFavorito))

 


/*:
 ## 3.
 Imagina que estás construyendo un sistema para la tienda en línea de Apple. Cada dispositivo electrónico posee un precio, una categoría y un estado de disponibilidad. Las posibles categorías son: mac, iphone, apple watch y ipad. Los estados de disponibilidad son: en stock, agotado y en espera. Tu objetivo es escribir una función, usando una estructura y enumeraciones, que verifique si el producto elegido está disponible para su compra en función de su categoría y estado en almacén.

*/
enum Categoria: String {
    case mac
    case iphone
    case appleWatch = "apple watch"
    case ipad
}

enum EstadoDisponibilidad: String {
    case enStock = "en stock"
    case agotado
    case enEspera = "en espera"
}

struct Producto {
    let nombre: String
    let precio: Double
    let categoria: Categoria
    let estado: EstadoDisponibilidad
}

// Función para verificar la disponibilidad del producto
func verificarDisponibilidad(producto: Producto) -> Bool {
    // Definimos una lista de productos disponibles en el almacén
    let productosEnAlmacen: [Producto] = [
        Producto(nombre: "MacBook Air", precio: 999.0, categoria: .mac, estado: .enStock),
        Producto(nombre: "iPhone 12", precio: 799.0, categoria: .iphone, estado: .enEspera),
        Producto(nombre: "Apple Watch Series 7", precio: 399.0, categoria: .appleWatch, estado: .enStock),
        Producto(nombre: "iPad Pro", precio: 1099.0, categoria: .ipad, estado: .agotado)
    ]
    
    // Verificamos si el producto buscado está en la lista de productos disponibles
    return productosEnAlmacen.contains { $0.nombre == producto.nombre && $0.categoria == producto.categoria && $0.estado == producto.estado }
}

// Ejemplo de uso
let productoElegido = Producto(nombre: "Apple Watch Series 7", precio: 399.0, categoria: .appleWatch, estado: .enStock)

if verificarDisponibilidad(producto: productoElegido) {
    print("El producto está disponible para su compra.")
} else {
    print("El producto no está disponible para su compra.")
}
