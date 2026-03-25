//
//  ModeloColumnas.swift
//  ListasGrids
//
//  Created by Nestor Leon mendoza on 09/02/26.
//

import Foundation
import Combine
import SwiftUI

class ModeloColumnas: ObservableObject {
    @Published var gridItem = [GridItem()]
    func columnas(num: Int){
        gridItem = Array(repeating: GridItem(.flexible(minimum: 80)), count: num)
        UserDefaults.standard.set(num, forKey: "numColumnas")
    }
    init(){
        if let num = UserDefaults.standard.object(forKey: "numColumnas") as? Int{
            gridItem = Array(repeating: GridItem(.flexible(minimum: 80)), count: num)
        }else{
            gridItem = Array(repeating: GridItem(.flexible(minimum: 80)), count: 1)
        }
    }
}
