/*:
## Ejercicio: Diccionarios

 Crea un diccionario de variables `[String: Int]` (cadena: número entero) donde se pueda buscar la cantidad de días en un mes en particular. Usa un literal del diccionario para que se inicialice con “Enero”, “Febrero” y “Marzo”. Enero contiene 31 días, febrero tiene 28 y marzo tiene 31. Imprime el diccionario.
 */
var meses:[String: Int]=["enero":31,"febrero":28,"marzo":31]
print(meses)
//:  Usa la sintaxis de subíndice para agregar “Abril” a la colección con un valor de 30. Imprime el diccionario.
meses["abril"]=30
print(meses)
meses["abril"]=22
print(meses)

//:  Es un año bisiesto. Actualiza la cantidad de días de febrero a 29 con el método `updateValue(_:, forKey:)` (actualizar valor). Imprime el diccionario.
if let oldvalue = meses.updateValue(29, forKey: "febrero"){
    print("el valopr de febrero: \(oldvalue), fue eliminado")
    print(meses)
}else{
    print("mes inexistente")
}
//:  Usa la sintaxis “if-let” para recuperar la cantidad de días de "Enero". Si el valor está, imprime "Enero tiene 31 días", donde 31 es el valor recuperado del diccionario.
if let diasenero=meses["enero"]{
    print(diasenero)
}

//:  En función de los siguientes arreglos, crear un nuevo diccionario de tipo [String : [String]] (cadena: cadena). `shapesArray` (arreglo de formas) debe usar la clave "Formas" y `colorsArray` debe usar la clave "Colores". Imprime el diccionario resultante.
var shapesArray:[String:[String]]=[:]
var colorsArray:[String]=["azul","rojo"]
shapesArray["formas"]=colorsArray
print(shapesArray)

//:  Accede al último elemento de `colorsArray` mediante el diccionario que creaste e imprímelo. Deberás usar la sintaxis “if-let” o el operador que fuerza la extracción para extraer lo que devuelva el diccionario antes de acceder a un elemento del arreglo.
if let color=shapesArray["formas"]{
    print(color.last)
}

/*:
[Anterior](@previous) | Página 3 de 4 | [Siguiente: Ejercicio con una app: Ritmo](@next)
 */
