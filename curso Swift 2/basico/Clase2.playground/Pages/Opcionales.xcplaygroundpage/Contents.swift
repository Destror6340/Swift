//: [Previous](@previous)

/*:
 # OPCIONALES
 */

/*: **Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante el apartado referente a *OPCIONALES*. Mucho éxito! Las primeras tres personas en terminar tendran un premio :D\
 _____________________________________________________________________________________________________**
*/

//: **Modifica el siguiente código para hacer uso correcto del valor nulo. Considera que  para hacer una instancia en la estructura persona no es obligatorio colocar el estado civil. Realiza dos instancias de la estructura, una para una persona que si contenga el estado civil y otra que no lo contenga. Imprimelos en consola para verificar que funcionan adecuadamente**
struct persona{
    var edad: Int
    let nombre: String
    var estadoCivil: Bool?
}
var person1:persona = persona(edad: 23, nombre: "Juan")
var person2:persona = persona(edad: 24, nombre: "Maria", estadoCivil: false)
print(person1, person2)





//: **Extrae de forma segura el estado civil de alguna de las estructuras que instanciaste en el punto anterior.**
if let estado = person1.estadoCivil {
    // La propiedad estadoCivil contiene un valor no nulo
    print(estado)
} else {
    // La propiedad estadoCivil es nil
    print("Estado civil no definido")
}


//: **Para la siguiente estructura agrega un inicializador falible. Si tiene mas de 3 años de experiencia y no cuenta con certificación deberá regresar nil, de lo contrario se inicialzian las propiedades**
struct empleado{
    let nombre: String
    let tieneCertificacion: Bool
    var añosExperiencia: Int
    init?(Nombre: String, TieneCertificacion: Bool, AñosExperiencia: Int){
        if AñosExperiencia > 3 && !TieneCertificacion{
            return nil
        }else{
            self.nombre = Nombre
            self.añosExperiencia = AñosExperiencia
            self.tieneCertificacion = TieneCertificacion
        }
    }
}





//: **Cambia la siguiente sentencia "IF" por una expresion equivalente que utilice Guard**
let diaNublado = false


func clima(){
    guard diaNublado else{
        print("llevar lentes de sol")
        return
    }
}

clima()



//: **Utiliza la extracción segura del valor opcional cambiando la siguiente sentencia "IF" por una expresion equivalente que utilice Guard**

var numero: Int?

func extraeNumero(){
    guard let num = numero else{
        print("no proporcionaste un número")
        return
    }
    print("El numero es \(num)")

}

extraeNumero()


//: [Next](@next)
