//: [Previous](@previous)

/*:
 # ESTRUCTURAS DE CONTROL
 */

/*: **Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante el apartado referente a *ESTRCUTURAS DE CONTROL*. Mucho éxito! Las primeras tres personas en terminar tendran un premio :D\
 _____________________________________________________________________________________________________**
*/

//: **Observa la siguiente variable, si es mayor a 18 imprime que se trata de una persona mayor de edad**

var edad:Int = 20
if edad > 18{
    print("mayor de edad")
}

//: **Agrega código para imprimir en pantalla si se trata de una persona menor de edad**
if edad > 18{
    print("mayor de edad")
}
else{
    print("Menor de edad")
}

//: **Crea una sentencia anidada "IF-ELSE" que imprima en pantalla las inidicaciones de un semáforo**
let green = true


if green {
    print("pasale")
}
else{
    print("parale")
}


//: **Realiza una comparación lógica de las siguientes constantes y almacenalo en una variable. No utilices sentencia "IF"**

let calificacionMaria = 10
let calificacionJuan = 8
var juanTieneNotasMasAltas = calificacionJuan > calificacionMaria


//: **Declara una sentencia "SWITCH-CASE" que pueda evaluar la nota del alumno mostrado**

let calificacionAlumno = 8
//menor a 5 imprimir reprobado
//entre 6 y 7 imprimir "presentar examen final"
// entre 8 y 10 imprimir "excento"
//El default debe imprimir "no presento"

switch calificacionAlumno {
case 0...5:
    print("Reprobado")
case 6,7:
    print("Final")
case 8,9,10:
    print("Excento")
default:
    print("No presentò")
}



//: [Next](@next)
