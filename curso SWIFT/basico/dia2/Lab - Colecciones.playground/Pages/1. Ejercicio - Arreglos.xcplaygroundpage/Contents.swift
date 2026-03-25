/*:
## Ejercicio: Arreglos
 
 Imagina que eres coordinador de un evento de caridad para la comunidad y estás elaborando una lista con los que se registran. Crea una variable `registrationList` (lista de registro) que contenga las cadenas. Debe estar vacía después de la instalación.
 */
var registratioslist:[String]=[]
registratioslist.append("Sara")//registratioslist.appende

//:  Agrega cuatro nombres adicionales al arreglo con el operador `+=`. Todos los nombres se deben agregar en un paso. Imprime el contenido de la colección.
 registratioslist+=["JUan","Lonera","Kenia","Pedro"]
//:  Usa el método `insert(_:at:)` (inserta) para agregar `Charlie` (Carlos) al arreglo como segundo elemento. Imprime el contenido de la colección.
registratioslist.insert("charlie", at: 1)
print(registratioslist)
//:  Alguien tuvo un problema y decidió transferir el registro a otra persona. Usa los subíndices de arreglos para cambiar el sexto elemento por `Rebecca`. Imprime el contenido de la colección.
registratioslist[5]="Rebeca"
print(registratioslist)

//:  Llama a `removeLast()` (elimina el último) en `registrationList`. Si lo haces correctamente, con esto se debería eliminar `Rebecca` de la colección. Almacena el resultado de `removeLast()` en una nueva constante `deletedItem` (elemento eliminado) e imprime `deletedItem`.
let deleteitem=registratioslist.removeLast()
print(deleteitem)
/*:
Página 1 de 4 | [Siguiente: Ejercicio con una app: Desafío de actividad](@next)
 */
