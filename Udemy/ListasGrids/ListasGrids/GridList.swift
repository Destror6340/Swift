//
//  GridList.swift
//  ListasGrids
//
//  Created by Jorge Maldonado Borbón on 28/11/20.
//

import SwiftUI

struct GridList: View {
    
//    let gridItem = [
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    
    //let gridItem : [GridItem] = Array(repeating: .init(.flexible(maximum: 80)), count: 3)
    @ObservedObject var grid = ModeloColumnas()
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                LazyVGrid(columns: grid.gridItem, spacing: 30) {
                    ForEach(lista){ item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                }
            }.navigationBarTitle("Grids")
                .toolbar{
                    ToolbarItem{
                        Menu(){
                            Section{
                                Button("Una columna"){
                                    grid.columnas(num: 1)
                                }
                                Button("Dos columnas"){
                                    grid.columnas(num: 2)
                                }
                                Button("Tres columnas"){
                                    grid.columnas(num: 3)
                                }
                                Button("Borrar columnas"){
                                    UserDefaults.standard.removeObject(forKey: "numColumnas")
                                }
                            }
                        }label: {
                            Label("Menú principal", systemImage: "long.text.page.and.pencil.fill")
                        }
                    }
                }
        }
    }
}

struct GridList_Previews: PreviewProvider {
    static var previews: some View {
        GridList()
    }
}
