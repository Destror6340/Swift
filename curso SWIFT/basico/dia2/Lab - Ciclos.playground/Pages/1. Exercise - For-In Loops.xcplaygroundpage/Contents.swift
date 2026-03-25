/*:
## Ejercicio: Ciclos “for-in”
 
 Crea un ciclo “for-in” que ejecute un ciclo a través de los valores del 1 al 100 e imprima cada uno de los valores.
 */
 

for index in 1...100 {
    print(index)
}
//:  Crea un ciclo “for-in” que ejecute un ciclo a través de cada carácter de la cadena `alphabet` (alfabeto) a continuación e imprima cada uno de los valores junto al índice.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 


for (index, letter) in alphabet.enumerated() {
    print("\(index): \(letter)")
}
//:  Crea un diccionario `[String: String]` (cadena: cadena), en el que las claves sean los nombres de estados y los valores, sus capitales. Incluye al menos tres pares de clave/valor en la colección y luego usa un ciclo “for-in” para iterar los pares e imprimir las claves y los valores en una oración.
 

let statesAndCapitals: [String: String] = ["Virginia": "Richmond", "Utah": "Salt Lake City", "Nueva York": "Albany"]

for (state, capital) in statesAndCapitals {
    print("La capital de \(state) es \(capital)")
}
/*:
Página 1 de 6 | [Siguiente: Ejercicio con una app: Movimientos](@next)
 */