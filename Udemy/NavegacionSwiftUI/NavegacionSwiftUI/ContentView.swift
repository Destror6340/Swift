//
//  ContentView.swift
//  NavegacionSwiftUI
//
//  Created by Jorge Maldonado Borbón on 16/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false
    @State private var texto = ""
    var body: some View {
        NavigationView{
            VStack{
                TextField("Texto", text: $texto)
                NavigationLink(destination: SegundaVista(texto: texto)){
                    Text("Segunda Vista")
                }
                Button("Abrir Modal"){
                    show.toggle()
                }
                .sheet(isPresented: $show) {
                    VentanaModal(texto: texto)
                }.navigationTitle("Navegación")
                    .toolbar{
                        HStack{
                            NavigationLink(destination: SegundaVista(texto: texto)){
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: TercerVista()){
                                Image(systemName: "camera")
                            }
                        }
                    }
            }.padding(.all)
        }
    }
}

