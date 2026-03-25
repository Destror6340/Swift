//
//  ejbuttons.swift
//  firstApp
//
//  Created by alumno on 07/02/23.
//

import SwiftUI

struct ejbuttons: View {
    @State var contador=0
    @State var ON: Bool=false
    var body: some View {
        VStack{
            Button{
                self.contador+=1
                self.ON = !ON
                print("Valor: \(ON)")
            }label: {
                Text(ON ? "On" : "Off")
            }.padding(100)
                .buttonStyle(.bordered)
                //.background(RoundedRectangle(cornerRadius: 5.0))
                .tint(ON ? .blue : .red)
        }
        .padding()
    }
}

struct ejbuttons_Previews: PreviewProvider {
    static var previews: some View {
        ejbuttons()
    }
}
