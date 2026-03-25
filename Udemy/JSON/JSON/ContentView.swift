//
//  ContentView.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 17/02/26.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var login: PostViewModel
    
    var body: some View {
        Group{
            if login.authenticated == 0{
                Login()
            }else if login.authenticated == 1{
                home()
            }else if login.authenticated == 2{
                Login()
                /*VStack{
                    Text("Usuario o constraseña incorrectos")
                    Button(action:{
                        login.authenticated = 0
                    }){
                        Text("Volver")
                    }
                }*/
            }
        }
        .task {
            // SOLO verificaciones automáticas
            print("Estado sesión:", login.authenticated)
        }
    }
}

#Preview {
    ContentView()
}
