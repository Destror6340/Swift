import UIKit
/*:
 **Escribe tu nombre y la fecha en un comentario**
 */
// Aquí :)
/*:

 # Funciones
 
 ¡Bienvenido al curso Básico de Swift!
    En este Playground pondrás a prueba tus conocimientos de funciones en 5 ejercicios que progresivamente aumentaran su nivel de complejidad. Cuentas con 20 minutos para concluir la actividad y subirla a tu carpeta de Drive. Si tienes una pregunta, no dudes en pedir ayuda.
 
 **¡Mucho éxito!**  PD:Las primeras tres personas en terminar ganarán un premio :D
 */

/*:
 
 # 1
 
 Crea una función que imprima en la consola tu propia definción de función. En este caso no hay parámetros y no debes retornar ningún valor. Utiliza un "print" para escribir tu respuesta. Y no olvides llamar tu función :)
 
*/
func imprimir (){
    print("Una funcion es puede ser vista como la extraccion de una parte de codigo que se usa constantemente en un programa, permitiendo ahorrar lineas")
}
imprimir()

/*:
 
# 2
Observa la siguiente función. Completa de tal forma que al recibir el parámetro **nombre** de tipo **String**, salude a la persona y le desee un buen día.
 
 */
func saludar(nombre: String) {
    print("Hola\(nombre)")
}
saludar(nombre: "Pedro")

/*:
 
# 3
Crea una función llamada **calcular** que reciba por parámetros 3 variables: 2 de tipo Double (x,y) y uno de tipo Int (numeroOperacion). Debes regresar un Double con el resultado. Dentro del cuerpo de tu función utiliza un swicht con 4 casos para cada una de las operaciones aritméticas básicas (1=suma, 2=resta, 3=multiplicacion y 4= division). LLama tu función 4 veces selecionando operaciones distintas.
 
 */
func calcular(x: Double, y: Double, operacion: Int)-> Double {
    switch(operacion){
    case 1:
        print("suma")
        return x+y
    case 2:
        print("resta")
        return x-y
    case 3:
        print("multiplicacion")
        return x*y
    case 4:
        print("division")
        return x/y
    default:
        print("nel")
        return 0
    }
}
print("la suma de 53 + 234 es \(calcular(x: 53, y: 234, operacion: 1))")
print("la suma de 53 + 234 es \(calcular(x: 53, y: 234, operacion: 1))")
print("la suma de 53 + 234 es \(calcular(x: 53, y: 234, operacion: 1))")
print("la suma de 53 + 234 es \(calcular(x: 53, y: 234, operacion: 1))")

/*:
# 4
 Para calcular raíces cuadradas, Swift ha incorporado la función  sqrt(), el desafío de este cuarto ejercicio consiste en escribir una función que acepte un número entero del 1 al 10,000 y devuelva la raíz cuadrada entera de ese número sin usar sqrt(). Solo debe considerar raíces cuadradas enteras.
*/
func calcularRaiz (_ numero : Int) -> Int? {
    if numero > 1 && numero < 10000 {
        var raiz = pow(Double(numero),0.5)
        var residuo = raiz.truncatingRemainder(dividingBy: 1)
        if residuo == 0 {
            return Int(raiz)
        }
        print("Raiz cuadrada no exacta")
        return nil
    }
    print("Valor fuera de rango")
    return nil
}

if let raiz = calcularRaiz(49){
    print("la raiz es: \(raiz)")
}
else {
    print("no se pudo caular la raiz")
}
/*:
# 5
En una clase de preparatoria crearon la siguiente función con el objetivo de calcular los promedios de los alumnos y alumnas de sexto grado. La función funciona perfectamente, sin embargo, no ha sido utilizada. Tu tarea es añadir las líneas de código que llamen a la función y después imprimir los promedios.
 
 
*/
func calcularPromedioFinal (estudiantes : [String: [Double]]) -> [String : Double]{
    
   // Esta función tiene parámetros y retorna valores; recibe un diccionario "estudiantes", el cual contiene un String (nombre del estudiante) y un array de Doubles (calificaciones asociadas al nombre). Devukve un diccionario confromado por un String (nombre del estudiante) y un Double (el promedio calculado).
    
    var promedios : [String: Double] = [:]
    // Creamos un diccionario que almacenará el promedio de cada estudiante
    
    for (nombre, califaciones) in estudiantes {
        let sumaCalificaciones = califaciones.reduce(0, +)
        // .reduce es una función que se utiliza para combinar los elementos de un array en un solo valor.
        
        let promedio = sumaCalificaciones / Double(califaciones.count)
        promedios[nombre] = promedio
        
    }
    
    return promedios
    //Retornamos el diccionario
}


let calificacioneEstudiantes : [String: [Double]] = [ //Dicionario
    "Mario" : [9.5, 8.3, 10],
    "Sofía" : [7, 8.9, 9.2],
    "Carla" : [9, 10, 10]
]

print("los promedios son: \(calcularPromedioFinal(estudiantes: calificacioneEstudiantes))")

//No debes modificar la función de arriba, tu tarea es llamarla y almacenar su valor en la constante "let calificacionesFinales"; recuerda que el único parámetro que esta función recibe es el diccionario "califiacionesEstudiantes". Después usando un for imprime los nombres y las califaciones finales de los 3 estudiantes.













