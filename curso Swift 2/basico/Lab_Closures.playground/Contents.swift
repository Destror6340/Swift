import UIKit

/*:
 # Closures
 Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante el apartado referente a **Closures**.
 
 **Mucho éxito!**, las primeras tres personas en terminar tendran un premio :D
 
 Para empezar, define con tus propias palabras lo que es un closure y cómo es que se utiliza cuando es pasado como argumento en una función, imprimelo en el apartado de abajo.
 */

print("Se trata de una especie de funcion que puede ser usada de manera mas discreta. ")
/*:
 ## 1
 En el banco que trabajas te piden crear un programa para generar un ID único por cada cliente registrado.
 Para realizar la tarea, utiliza un closure que dé un número diferente cada que sea llamado, en este caso puedes utilizar la función random para generar numeros aleatorios, junto a un map para almacenar los números usados, y los respectivos ciclos para comprobarlo. Escribe el código en el apartado inferior:
 */
var newIdSet: Set<Int> = []

let createNewId = {() -> Int in
    var newId: Int
    repeat {
        newId = Int.random(in: 1000000...5000000) // Ajusta el rango para generar números más grandes
    } while newIdSet.contains(newId)
    newIdSet.insert(newId)
    return newId
}

let newId = createNewId()
print("Nuevo ID generado: \(newId)")
for id in newIdSet  {
    print("IDs generados: \(id)")
}


/*:
 ## 2
 En la tienda UNAM se tiene un programa que mediante un closure válida si es que los productos comestibles aun no caducan(el formato de la fecha es ddmmaaaa), de ser así regresa un true indicando que se encuentra en buen estado, de lo contrario, devuelve un false; el closure es algo parecido a lo que se muestra a continuación:
 */
/*let cadAlimento = { (fechaActual: Int) -> Bool in
    return fechaActual < 08032023
}

func validarCaducidad(fechaCaducidad: Int, closure: (Int) -> Bool) -> String {
    let esBuenEstado = closure(fechaCaducidad)
    if esBuenEstado {
        return "El producto está en buen estado, aún no ha caducado."
    } else {
        return "El producto ha caducado."
    }
}

let fechaActual = 21062023
let fechaCaducidad = 08032023
let resultado = validarCaducidad(fechaCaducidad: fechaCaducidad, closure: cadAlimento)
print(resultado)*/

/*:
 Con tus conocimientos previos en Syntactic Sugar, reduce el closure de la parte superior a tan solo una línea de código.
 */

// Closure con syntactic sugar
let cadAlimento: (Int) -> Bool = { fechaActual in fechaActual < 08032023 }

func validarCaducidad(fechaCaducidad: Int, closure: (Int) -> Bool) -> String {
    let esBuenEstado = closure(fechaCaducidad)
    return esBuenEstado ? "El producto está en buen estado, aún no ha caducado." : "El producto ha caducado."
}

let fechaActual = 21062023
let fechaCaducidad = 08032023
let resultado = validarCaducidad(fechaCaducidad: fechaCaducidad, closure: cadAlimento)
print(resultado)


/*:
 ## 3
 Los siguientes ejercicios se basan en una base de datos de alumnos, a la cual se le realizarán determinadas modificaciones debido al paso de los años, además de los cambios que se van dando a lo largo del curso, y las calificaciones que es necesario brindar a los alumnos.

 ### No olvides utilizar Syntactic Sugar para tus closures.

 El primer ejercicio que se te asigna, es realizar un aumento de grado a cada estudiante del año 2022 y guardarlo en la variable correspondiente al siguiente año mediante el uso de la función **map** y su respectivo closure:

 */
var grados = [4, 5, 4, 5, 5, 1, 4, 5, 3, 2]
let gradosAumentados = grados.map { grado in
    return grado + 1
}

print(gradosAumentados)

/*:
 El siguiente ejercicio asignado, es filtrar los alumnos aprobados en el array correspondiente, al comparar cada puntaje con el mínimo para pasar (80), de cumplir con la condición, almacenar el puntaje en el array de aprobados:

 */
var puntajes = [85, 80, 70, 71, 90, 100, 50, 56, 78, 82, 81, 93]

let puntajesAprobados = puntajes.filter { puntaje in
    return puntaje >= 80
}

print(puntajesAprobados)

/*:
 Por último se te pide que implementes la función **reduce** con su respectivo closure para que con ayuda de esta, logres obtener el promedio del alumno con las calificaciones que se muestran a continuación:
 */
var calificacionesJuan = [10, 9, 8, 9, 10, 7, 9, 9, 9, 9]

let sumaCalificaciones = calificacionesJuan.reduce(0) { (acumulado, calificacion) in
    return acumulado + calificacion
}

let promedio = Double(sumaCalificaciones) / Double(calificacionesJuan.count)

print("El promedio de Juan es: \(promedio)")

/*:
 ### Felicidades haz terminado el Playground referente a Closures.
 */

