//
//  login.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 18/02/26.
//

import SwiftUI

struct Login: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var error: Bool = false
    
    @EnvironmentObject var login: PostViewModel
    
    var body: some View {
        ZStack {
            //Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Email").foregroundColor(Color.white)
                TextField("Email", text: $username)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .foregroundColor(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                Text("Password")
                    .foregroundColor(Color.white)
                SecureField("Password", text: $password)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .foregroundColor(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.asciiCapable)
                Spacer()
                Button(action:{
                    Task{
                        await login.login(username: username, password: password)
                    }
                    if login.authenticated == 2 {
                        error = true
                    }
                }){
                    Text("Login")
                        .padding(10)
                        .background(Color.gray)
                        .tint(Color.white)
                        .cornerRadius(10)
                }
                .alert(isPresented: $error, content:{
                    Alert(title: Text("Error"), message: Text("Usuario o contraseña incorrectos"), dismissButton: .default(Text("Aceptar")))
                })
            }.padding(20)
        }
    }
}

#Preview {
    Login()
}
