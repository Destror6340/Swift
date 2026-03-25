//
//  Lista.swift
//  firstApp
//
//  Created by alumno on 08/02/23.
//

import SwiftUI

struct Lista: View {
    
    struct Animal{
        var id: Int
        var name: String
    }
    @State var id: Int=0
    @State var animals=[Animal(id:0, name:"gato"),
                 Animal(id:1, name:"perro"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo"),
                 Animal(id:2, name:"conejo")]
    
    var body: some View {
        VStack{
            List{
                ForEach(animals, id: \.id){
                    animal in
                    Text(animal.name)
                }
            }
            Button("Add"){
                id+=1
                animals.append(Animal(id: id, name: "nuevo"))
            }
        }
    }
}

struct Lista_Previews: PreviewProvider {
    static var previews: some View {
        Lista()
    }
}
