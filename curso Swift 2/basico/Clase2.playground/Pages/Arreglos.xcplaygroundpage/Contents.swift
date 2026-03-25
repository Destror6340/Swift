/*:
 # ARREGLOS
 */

/*: **Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante el apartado referente a *ARREGLOS*. Mucho éxito! Las primeras tres personas en terminar tendran un premio :D\
 _____________________________________________________________________________________________________**
*/

//:**Declara un arreglo de tipo character que contenga los elementos "W" y "L" en ese orden**
var caracteres:[Character] = ["W", "L"]
print(caracteres)

//:**Agrega una letra "E" en la posición 1 del arreglo**
caracteres.insert("E", at: 1)
print(caracteres)

//:**Agrega una letra "L" al final del arreglo**
caracteres.append("L")
//: **Cambia el elemento 3 del arreglo2 por una "N"**
var arreglo2: [Character] = ["D","O","T","M","E","P"]

arreglo2[2] = "N"


//: **Elimina el elemento 2 del arreglo2**
arreglo2.remove(at: 1)


//: **Elimina el último elemento del arreglo2**
arreglo2.removeLast()

print(arreglo2)

//: **Crea un arreglo que contenga los arreglos anteriores e imprimelo en pantalla**
let arreglo = [caracteres, arreglo2]
print(arreglo)



//:[Next](@next)
