//
//  TextMenu.swift
//  firstApp
//
//  Created by alumno on 09/02/23.
//

import SwiftUI

struct TextMenu: View {
    var body: some View {
        VStack{
            Text("Transporte")
                .contextMenu{
                    Button{
                        print("Change country settings")
                    }label:{
                        Label("Elige pais", systemImage: "globe")
                    }
                    Button{
                        print("enable geolocation")
                    }label: {
                        Label("Detectar ubicacon", systemImage: "location.circle")
                    }
                    Divider()
                    Menu("Medio de transporte"){
                        Button{}label: {
                            Label("Avion", systemImage: "airplane")
                        }
                    }
                }
        }
    }
}

struct TextMenu_Previews: PreviewProvider {
    static var previews: some View {
        TextMenu()
    }
}
