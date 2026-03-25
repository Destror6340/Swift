import UIKit
var playlist:String = "rolas pal gym"
playlist="cumbeones para cocinar"
print(playlist)
playlist="""
    corridos tumbados
    camnino a la facultad
    trepados en la "pumabici"
    """
print(playlist)
let saludo="hola \"padrino\""
print(saludo)
let pelicula="avatar"
let fechaestreno=2009
//concatenar
print("la pelicula de james cameron ", pelicula)
//interpolacion
print("la pelicula de james cameron \(pelicula) fue estretana en \(fechaestreno)")
let peras=2
let sandias=10
print("juan compro \(peras) peras y \(sandias) sandias, despues las multiplicò y ahora tiene \(peras*50) peras y \(sandias*100) sandias")
//equovalencia y comparacion de cadenas
let country="mexico"
let country2="MEXICO"

if country.lowercased() == country.lowercased(){
    print("las cadenas son iguales")
}else{
        print("las cadenas no son iguales")
}

let lyrics=" and i love her"
print(lyrics.hasPrefix("a"))

let lyrics2=" and i love her!"
print(lyrics2.hasSuffix("!"))

let cuello="esternocleidomastoideo"
if cuello.isEmpty{
    print("la cadena esta vacia")
} else{
    print("la cadena no esta vacia")
}

//UNICODE
let gatofeliz="🐱"
print(gatofeliz.count)
let primeraletra="D"
print(primeraletra.count)
