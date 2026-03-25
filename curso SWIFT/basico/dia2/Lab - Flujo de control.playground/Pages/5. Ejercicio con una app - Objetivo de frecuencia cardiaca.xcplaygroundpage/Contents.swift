/*:
## Ejercicio con una app: Objetivo de frecuencia cardiaca

 - callout(Nota): Estos ejercicios refuerzan los conceptos de Swift en el contexto de una app de seguimiento de actividad física.

 Quieres que tu app de seguimiento de actividad física tenga una funcionalidad que ayude a los usuarios a mantener ciertos niveles de frecuencia cardiaca mientras entrenan. Le mostrarás al usuario un mensaje que indique que debe apresurarse un poco para aumentar su frecuencia cardiaca en caso de estar bajo el nivel objetivo, o que van bien si el nivel es justo el objetivo deseado, o que baje un poco las revoluciones cuando sobrepase el nivel objetivo.
 
 Crea las constantes `isInTarget` (el nivel es el objetivo), `isBelowTarget` (el nivel es inferior al objetivo) y `isAboveTarget` (el nivel es superior al objetivo) equivalente a las expresiones cuya evaluación indique si `currentHR` (frecuencia cardiaca actual) está entre los niveles más bajos y más altos, es inferior al nivel más bajo y es superior al nivel más alto, respectivamente. Luego escribe una instrucción “if-else” que imprima "¡Vas por buen camino!" si el usuario logra los niveles deseados, "Lo estás haciendo muy bien, pero debes acelerar un poco." si el valor alcanzado es inferior al deseado y "Estás en llamas. Debes tranquilizarte un poco." si el valor alcanzado supera el objetivo deseado.
 */
let targetLowerBound = 120
let targetUpperBound = 150

let currentHR = 147
if currentHR > targetLowerBound && currentHR < targetUpperBound {
    print("vas por buen camino")
}else if currentHR < targetLowerBound{
    print("debes acelerar un poco")
}else {
    print("debes tranquilizarte un poco")
}

/*:
[Anterior](@previous) | Página 5 de 9 | [Siguiente: Ejercicio: Instrucciones “switch”](@next)
 */
