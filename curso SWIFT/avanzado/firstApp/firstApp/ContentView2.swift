//
//  ContentView2.swift
//  firstApp
//
//  Created by alumno on 10/02/23.
//

import SwiftUI

struct ColorDetail: View{
    @State var color: Color
    var body: some View{
        Rectangle().frame(width: 100, height: 100)
            .foregroundColor(color)
    }
}

struct ContentView2: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Green", value: Color.green)
                NavigationLink("Red", value: Color.red)
                NavigationLink("Blue", value: Color.blue)
            }
            .navigationDestination(for: Color.self){
                color in ColorDetail(color: color)
            }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
