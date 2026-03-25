//: [Previous](@previous)

/*:
 # DICCIONARIOS
 */

/*: **Estos ejercicios fueron diseñados para reforzar los conceptos aprendidos durante el apartado referente a *DICCIONARIOS*. Mucho éxito! Las primeras tres personas en terminar tendran un premio :D\
 _____________________________________________________________________________________________________**
*/

//: **Crea un diccionario vacio llamado productos que contenga llave y valor de tipo String**
var productos:[String: String] = [:]
print(productos)

//: **Agrega las llaves iphone, galaxi y pixel con los valores apple, samsung y google respectivamente**
productos["iphone"] = "apple"
productos["galaxi"] = "Samsung"
productos["pixel"] = "google"
print(productos)

//: **Recorre al diccionario y muestra todos sus productos con sus fabricantes**
for (clave, valor) in productos {
    print("La clave '\(clave)' tiene el valor \(valor)")
}

    



//: **Accede al producto iphone para acceder al fabricante e imprimelo en pantalla**
print(" el producto iphone es de: \(String(describing: productos["iphone"]))")



//: **Actualiza el nombre del productor de iphone a Apple Inc**
productos["iphone"] = "Apple Inc"


//: **elimina el producto pixel**
productos.removeValue(forKey: "pixel")


//: [Next](@next)
