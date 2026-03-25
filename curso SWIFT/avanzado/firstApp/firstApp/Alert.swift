//
//  Alert.swift
//  firstApp
//
//  Created by alumno on 09/02/23.
//

import SwiftUI

struct Alert: View {
    @State var showAlert=false
    @State private var selection="Nada"
    @State private var showOptions=false
    var body: some View {
        VStack{
            Button("Show alert"){
                showAlert=true
            }.alert("Mensaje", isPresented: $showAlert){
                Button("Hola"){}
                Button("adios"){}
                Button("Ok"){}
            }
            //alerta para elejir opcion
            Button("Que hago?"){
                showOptions=true
            }.confirmationDialog("elige un color", isPresented: $showOptions){
                ForEach(["Rojo", "azul", "verde"], id: \.self){color in
                    Button(color){
                        selection=color
                    }
                }
            }
        }
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        Alert()
    }
}
