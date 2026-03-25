//
//  TextFied.swift
//  firstApp
//
//  Created by alumno on 08/02/23.
//

import SwiftUI

struct TextFied: View {
    @State private var username = ""
    @State private var email = ""
    @State private var telefono = ""
    @State private var numero: Int=0
    var body: some View {
        VStack{
            TextField("Nombre", text: $username) //"$" significa que la variable se puede usar para leer y escribir
                .textFieldStyle(.roundedBorder)
                .scaledToFit()
            Text("nombre: \(username)")
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
            TextField("Telfono", value: $numero, formatter: NumberFormatter())
                .keyboardType(.numberPad)
            Text("Telefono: \(numero)")
        }
    }
}

struct TextFied_Previews: PreviewProvider {
    static var previews: some View {
        TextFied()
    }
}
