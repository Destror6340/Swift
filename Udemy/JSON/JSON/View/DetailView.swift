//
//  DetailView.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 19/02/26.
//

import SwiftUI
import Combine

struct DetailView: View {
    
    let ID: Int
    @StateObject var user = DetailViewModel()
    
    var body: some View {
        
        if user.usuario == nil {
            ProgressView()
        }else{
            VStack{
                HStack{
                    AsyncImage(url: URL(string: "https://dummyjson.com/users/\(ID)")!) {
                        phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(width: 80, height: 80)
                            
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                        case .failure:
                            Image(systemName: "person.crop.circle.badge.exclamationmark")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.gray)
                            
                        @unknown default:
                            ProgressView()
                        }
                    }
                    VStack{
                        //Text("\(user.usuario!.firstName)")
                        Text("Hello")
                    }
                }
                Text("Hello")
               //Text("Adresse: \(user.usuario!.email)")
            }.task {
                await user.fetch(id: ID)
            }
            .navigationBarTitle("Detail")
        }
    }
}



