/*:
## Ejercicio con una app: Decisiones sobre el entrenamiento

 - callout(Nota): Estos ejercicios refuerzan los conceptos de Swift en el contexto de una app de seguimiento de actividad física.

 Quieres que tu app de seguimiento de actividad física motive lo máximo posible a los usuarios. Crea una variable `steps` (pasos) equivalente a la cantidad de pasos que creas haber dado el día de hoy. Crea una constante `stepGoal` (objetivo de pasos) equivalente a 10,000. Escribe una instrucción “if-else” que imprima "Ya casi alcanzas la mitad del total de pasos." si el valor de `steps` es inferior a la mitad del valor de `stepGoal` e imprima "Ya superaste la mitad del total de pasos." si el valor de `steps` es superior a la mitad del valor de `stepGoal`.
 */
var steps = 30
let stepGoal=10_000
if steps <= stepGoal/2 {
    print("Ya casi alcanzas la mitad de los pasos")
} else {
    print("revasaste la mitad de los pasos")
}

//:  Ahora, crea una instrucción “if-else-if” nueva, pero similar, que imprima "Buen comienzo el día de hoy." si el valor de `steps` es inferior a un décimo del valor de `stepGoal`, imprima "Ya casi alcanzas la mitad del total de pasos." si el valor de `steps` es inferior a la mitad del valor de `stepGoal` e imprima "Ya superaste la mitad del total de pasos." si el valor de `steps` es superior a la mitad del valor de `stepGoal`.
if steps < stepGoal/10 {
    print("buena cominezo de dia")
} else if steps < stepGoal/2{
    print("ya casi llegas")
}else {
    print("ya superaste la mitad")
}

/*:
[Anterior](@previous) | Página 3 de 9 | [Siguiente: Ejercicio: Práctica booleana](@next)
 */
