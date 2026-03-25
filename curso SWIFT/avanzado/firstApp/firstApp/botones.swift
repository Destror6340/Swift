//
//  botones.swift
//  firstApp
//
//  Created by alumno on 07/02/23.
//

import SwiftUI

struct botones: View {
    var body: some View {
        VStack{
            Button("Pausa", action: pausa)
            
            Button(action: pausa){
                Text("Pausa")
                    .foregroundColor(.purple)
            }
            
            Button("Reanudar"){
                print("accion 1")
                pausa()
            }
            
            Button{
                //actions
                print("a vewr que pedo")
            }label:{
                Image(systemName: "globe")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            }
            
            Button("Boton 1", role: .destructive){pausa()}
                .buttonStyle(.bordered)
                .tint(.green)
        }
    }
    func pausa(){
        print("Pausa")
    }
}

struct botones_Previews: PreviewProvider {
    static var previews: some View {
        botones()
    }
}
