//
//  SegundaVista.swift
//  NavegacionSwiftUI
//
//  Created by Jorge Maldonado Borbón on 16/06/22.
//

import SwiftUI

struct SegundaVista: View {
    var texto : String
    var body: some View {
        Text("Segunda vista")
            .navigationTitle(texto)
        NavigationLink(destination: TercerVista()){
            Text("Ir a tercer vista")
        }
    }
}

