//
//  navegacion.swift
//  firstApp
//
//  Created by alumno on 10/02/23.
//

import SwiftUI

struct VistaA: View {
    var body: some View {
        VStack{
            Text("Vista A")
            NavigationLink("VistaB", destination: VistaB())
        }
    }
}

struct VistaB: View {
    var body: some View {
        VStack{
            Text("Vista B")
        }
    }
}

struct navegacion: View {
    @State var ShowViewA=false
    var body: some View {
        NavigationView{
            VStack{
                Text("hola")
                    .navigationTitle("Vista 1")
                NavigationLink(destination: VistaA(), isActive: $ShowViewA){
                    Text("Vista A")
                }
            }
        }
    }
}

struct navegacion_Previews: PreviewProvider {
    static var previews: some View {
        navegacion()
    }
}
