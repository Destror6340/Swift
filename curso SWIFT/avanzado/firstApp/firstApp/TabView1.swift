//
//  TabView1.swift
//  firstApp
//
//  Created by alumno on 10/02/23.
//

import SwiftUI

struct TabView1: View {
    var body: some View {
            TabView{
                Text("Hello, World!")
                    .tabItem{
                        Label("Vista 1", systemImage: "house.fill")
                    }
                
                Text("vista2")
                    .tabItem{
                        Label("Vista 2", systemImage: "building.2.fill")
                    }
                
                Vista1()
            }.tabViewStyle(PageTabViewStyle())
    }
}

struct Vista1: View {
    var body: some View {
        VStack{
            Color(.blue).opacity(0.5)
            VStack{
                Image(systemName: "globe")
                    .resizable()
                    .scaledToFit()
                Text("mundo")
            }
        }
    }
}

struct TabView1_Previews: PreviewProvider {
    static var previews: some View {
        TabView1()
    }
}
