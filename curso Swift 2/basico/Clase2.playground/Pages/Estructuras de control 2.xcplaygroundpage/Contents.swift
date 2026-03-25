//: [Previous](@previous)

/*:
 # ESTRUCTURAS DE CONTROL
 */

/*: **Estos ejercicios fueron diseñados para continuar con el reforzamiento de los conceptos aprendidos durante el apartado referente a *ESTRUCTURAS DE CONTROL*. Mucho éxito! Las primeras tres personas en terminar tendran un premio :D\
 _____________________________________________________________________________________________________**
*/

//: **Utiliza el operador condicional ternario para asignar la temperatura mas alta a la variable mostrada**

var temperaturaMasAlta: Int

let temp1 = 20
let temp2 = 50

temperaturaMasAlta = temp1<temp2 ? temp2:temp1
print("highest temp \(temperaturaMasAlta)")


//: **Crea un arreglo que contenga 4 frutas e imprime todos los valores utilizando un ciclo For**
var frutas:[String] = ["mango", "sandia", "pepino", "melon"]
for fruta in frutas{
    print(fruta)
}

//: **Completa el siguiente codigo referente a un ciclo "For" para recorrer un diccionario**

let numeroMascotas = ["Alfredo": 2, "Jaime": 0, "Daniela": 5, "Maria": 4]

for(llave,valor) in numeroMascotas{
    print("\(llave) tiene \(valor) mascotas")
}
//ejemplo de impresión "Alfredo tiene dos mascotas



//: **Implementa un ciclo While para eliminar los elentos de un arreglo. Debes eliminar una a una las tareas pendientes siempre quitando la ultima de la lista**
var listaDePendientes = ["lavar ropa", "hacer tarea", "bañar al perro", "tirar basura", "barrer"]
while (!listaDePendientes.isEmpty){
    listaDePendientes.removeLast()
    print(listaDePendientes)
}


//: **Implementa la transferencia de control *continue*. Se lanza un dado 10 veces, si se obtiene un número par debes imprmir en pantalla la frase "aumenta el contador", de lo contrario pasa al siguiente lanzamiento. Al final deberás imprirmir el contador para conocer cuantas veces salio un número par**
//let numeroRandom = Int.random(in: 1...6)
let numeroRandom = 5
var contador = 0
for _ in 1...10 {
    if numeroRandom % 2 == 0 {
        contador += 1
        print("Aumenta el contador")
    } else {
        continue
    }
}

print("El contador final es: \(contador)")
//: [Next](@next)
