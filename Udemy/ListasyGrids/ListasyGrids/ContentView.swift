//
//  ContentView.swift
//  ListasyGrids
//
//  Created by Nestor Leon mendoza on 03/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            //VStack {
                List(lista){ lst in
                    NavigationLink(destination: VistaDetalle(items: lst)){
                        HStack{
                            Emoji(emojis: lst)
                            Text(lst.nombre)
                                .font(.subheadlilne)
                        }
                    }
                }.navigationTitle(Text("Listas"))
                /*List{
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }.navigationTitle(Text("Listas"))*/
            //}
        }
    }
}

struct Emoji: View{
    let emojis: Modelo
    var body: some View {
        ZStack{
            Text(emojis.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(
                    Circle().stroke(Color.purple, lineWidth: 3))
        }
    }
}

struct VistaDetalle: View {
    let items: Modelo
    var body: some View {
        VStack(alignment: .leading, spacing: 3, content: {
            HStack {
                Emoji(emojis: items)
                Text(items.nombre)
                Spacer()
            }
            Text(items.descripcion)
            Spacer()
        })
        .padding(.all)
        .navigationTitle("Emojis")
    }
}

#Preview {
    ContentView()
}
