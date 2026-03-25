//
//  contador.swift
//  firstApp
//
//  Created by alumno on 10/02/23.
//

import SwiftUI

struct CounterView: View {
    @Binding var counter: Int
    var body: some View {
        VStack{
            Button("incrementar"){
                counter+=1
            }
        }
    }
}

struct contador: View {
    @State var counter:Int = 0//Binding permite modificar nla varaieble en otras vistas
    var body: some View {
        VStack{
            Text("Contamos").font(.largeTitle)
            Text("\(counter)").font(.largeTitle)
            CounterView(counter: $counter)
        }
    }
}

struct contador_Previews: PreviewProvider {
    static var previews: some View {
        contador()
    }
}
