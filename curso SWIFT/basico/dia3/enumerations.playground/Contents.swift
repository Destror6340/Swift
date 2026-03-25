import UIKit

enum week {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sabado
    case domingo
}
enum compasspoint {
    case norte; case sur; case este; case oeste
}
var compassDir=compasspoint.este
let compassDir2=compasspoint.oeste

switch compassDir {
case .norte:
    print("voy al norte")
case .sur:
    print("voy al sur")
case .oeste:
    print("voy al oeste")
default:
    print("voy al este")
}

//ejemplo de aplicacion usando estructuras
enum peliculas {    //la enumeracion limita los valores d elos generos
    case accion
    case terror
    case documental
    case comedia
}
struct pelicula {
    var titulo: String
    var genero: peliculas   //se debe declarar a la enumeracion que se quiere
    var año: Int
    var duracion: Double
}

let pelicula1=pelicula(titulo: "pinoco", genero: .accion, año: 2022, duracion: 2.35) //se crea un obejto de la estructura
print(pelicula1.genero)
