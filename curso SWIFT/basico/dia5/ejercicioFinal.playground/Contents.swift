//Haciendo uso de un playground diseña un programa que simule el juego de lanzar una moneda (aguila-sol). Utiliza para ello la creacion de variables, constantes, funciones para definir quien gana o para ir sumando puntos a cada jugador.

//Moneda
/*Declara una variable "tiradas" la cual sera el numero de partidas individuales que se han realizado.*/

//Declara en dos variables los nombres de cada jugador


/*Crea un diccionario jugadores de tipo [String: Int] que almacene el nombre y el puntaje de cada jugador*/
var jugadores=[String: Int]()

/*Crea una funcion "partidasJugadas" que reciba las tiradas como parametro y devuelva el numero de veces que gano el jugador que llama a la funcion. Usa el metodo "Bool.random()" en un ciclo if para generar valores aleatorios que definan si el jugador gano o perdio. (true o false)*/
   
var puntuacion: Int = 0
        if Bool.random() == true {
            puntuacion += 1
        


//Asigna al diccionario el nombre y puntaje de cada jugador
//Si todo sale bien, debe de tener los dos elementos puedes imprimir para verificar



/*Usando la asignacion Compuesta extrae el valor de diccionario de cada jugador, despues compara si el puntaje es igual o diferente (mayor o menor que),  haciendo uso de un ciclo if. Deberas imprimir una frase con el nombre del ganador y su puntaje o el empate*/
if let jugador1Puntaje =  jugadores[jugador1]{
    if let jugador2Puntaje = jugadores[jugador2]{
        if jugador1Puntaje == jugador2Puntaje{
            print("Empate")
        }else if jugador1Puntaje < jugador2Puntaje {
            

