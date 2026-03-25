import UIKit

/*: **Escribe tu nombre y la fecha en un comentario** */

/*:
 # Clases y herencias
 
 Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante la clase referente a **Clases y Herencia**.
 
 **¡Mucho éxito!**, las primeras tres personas tendrán un premio :D
  
 */

/*:
 ## 1.
 El sistema de un zoológico fue destruido accidentalmente por un elefante, por lo que ahora es necesario crear uno nuevo para establecer una clasificación de los animales. Tu primera tarea consiste en definir una clase Animal con 4 propiedades: id, nombre común, especie, hábitat.
 */

 class Animal {
     var id: Int
     var nombre: String
     var especie: String
     var habitad: String
     
     init(Id: Int, Nombre: String, Especie: String, Habitad: String) {
         self.id = Id
         self.nombre = Nombre
         self.especie = Especie
         self.habitad = Habitad
     }
 }

/*:
 Los mamíferos, los reptiles y los anfibios son clases del reino animal. Crea 3 subclases que hereden las propiedades de la superclase Animal.

 A cada clase se agrega una propiedad y un método único propio.

*/
class Mamiferos: Animal {
    var patas: Int
    init(Patas: Int, Id: Int, Nombre: String, Especie: String, Habitad: String) {
        self.patas = Patas
        super.init(Id: Id, Nombre: Nombre, Especie: Especie, Habitad: Habitad)
    }
    func queEs (){
        if patas > 4 {
            print("No se que sea")
        }else {
            print("Animal normal")
        }
    }
}

class Reptil: Animal {
    var veneno: Bool
    init(Veneno: Bool, Id: Int, Nombre: String, Especie: String, Habitad: String) {
        self.veneno = Veneno
        super.init(Id: Id, Nombre: Nombre, Especie: Especie, Habitad: Habitad)
    }
    func pica (){
        if veneno {
            print("muerde")
        }else {
            print("no muerde")
        }
    }
}

class Anfibio: Animal {
    var respiracion: Int
    init(Respiracion: Int, Id: Int, Nombre: String, Especie: String, Habitad: String) {
        self.respiracion = Respiracion
        super.init(Id: Id, Nombre: Nombre, Especie: Especie, Habitad: Habitad)
    }
    func respira (){
        print("El anfibio resiste \(respiracion) segundos bajo el agua")
    }
}

/*:
 ## 2.
 Vamos a crear una pequeña parte del funcionamiento de un videojuego. Al inicio se dará la opción al usuario de crear un personaje con un gamertag personalizado, puntos de vida y nivel. Además, contará con un método para atacar y otro para recibir daño.
  
 El usuario tendrá 3 opciones: guerrero, hechicero y arquero. Cada uno tendrá propiedades y métodos únicos; el guerrero poseerá un nivel de fuerza determinado y un método de ataque cuerpo a cuerpo; el hechicero contará con número limitado de posiciones y una función que lance hechizos; y finalmente el arquero contará con una propiedad que indique el número de fechas restantes y una función de disparo.

*/

class Personaje {
    var name: String
    var life: Int
    var level: Int
    init(name: String, life: Int, level: Int) {
        self.name = name
        self.life = life
        self.level = level
    }
    func atack() {
        print("DIE")
    }
    func defend() {
        print("AUCH")
    }
}

class Guerrero : Personaje {
    var strengt: Int
    init(strengt: Int, name: String, life: Int, level: Int) {
        self.strengt = strengt
        super.init(name: name , life: life, level: level)
    }
    override func atack() {
        print("body body atack")
    }
}

class Hechicero : Personaje {
    var poscitions: Int
    init(Poscitions: Int, name: String, life: Int, level: Int) {
        self.poscitions = Poscitions
        super.init(name: name , life: life, level: level)
    }
    override func atack() {
        print("Hechizo atack")
    }
}

class Arquero : Personaje {
    var arrows: Int
    init(Arrows: Int, name: String, life: Int, level: Int) {
        self.arrows = Arrows
        super.init(name: name , life: life, level: level)
    }
    override func atack() {
        print("Shot")
    }
}
