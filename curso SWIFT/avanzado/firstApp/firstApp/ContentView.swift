//
//  ContentView.swift
//  firstApp
//
//  Created by alumno on 07/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var text="Hola mundo    :)"
    var body: some View{
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("dbhebdwbwybhuhdbcsjdhbdsjhbsvjhvbsjhvcsjdhgcvsjdhgcv")
                //.border(.red)
                .padding(10)
                //.border(.blue)
                .lineSpacing(30)
                .truncationMode(.tail)
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .font(.custom("Courier", fixedSize: 30))
                .multilineTextAlignment(.leading)
                .fontWeight(.heavy)
            Image(systemName: "user")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
