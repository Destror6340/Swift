//
//  home.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 18/02/26.
//

import SwiftUI
import Combine

struct home: View {
    
    @EnvironmentObject var login: PostViewModel
    @StateObject var json = Modelo1ViewModel ()
    
    var body: some View {
        NavigationView{
            if json.datosModelo == nil {
                ProgressView()
            }else{
                VStack{
                    Text("Bienvenido")
                    //Text("\(json.datosModelo!.users)")
                    List(json.datosModelo!.users, id: \.id){ item in
                        NavigationLink(destination: DetailView(ID: item.id)){
                            HStack{
                                AsyncImage(url: URL(string: item.image)) { phase in
                                    switch phase {
                                    case .empty:
                                        ProgressView()
                                            .frame(width: 80, height: 80)
                                        
                                    case .success(let image):
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 130, height: 130)
                                            .clipShape(Circle())
                                        
                                    case .failure:
                                        Image(systemName: "person.crop.circle.badge.exclamationmark")
                                            .resizable()
                                            .frame(width: 130, height: 130)
                                            .foregroundColor(.gray)
                                        
                                    @unknown default:
                                        ProgressView()
                                    }
                                }
                                VStack{
                                    Text("\(item.id)").foregroundColor(Color.white)
                                    Text(item.firstName).foregroundColor(Color.white)
                                }
                                .foregroundStyle(Color.white)
                            }
                        }
                        
                    }
                }
                .navigationBarTitle(Text("Home"))
                .navigationBarItems(leading: Button(action:{
                    UserDefaults.standard.removeObject(forKey: "Sesion")
                    login.authenticated = 0
                }){
                    Text("Salir")
                        .foregroundColor(Color.white)
                }
                                    ,trailing: Button(action:{
                    UserDefaults.standard.removeObject(forKey: "Sesion")
                    login.authenticated = 0
                }){
                    Text("Siguiente")
                        .foregroundColor(Color.white)
                })
            }
        }
        .task {
            await json.fetch()
        }
    }
}


