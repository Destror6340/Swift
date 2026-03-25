//
//  Modelo.swift
//  ListasyGrids
//
//  Created by Nestor Leon mendoza on 03/02/26.
//

import Foundation

struct Modelo: Identifiable {
    let id = UUID()
    let emoji: String
    let nombre: String
    let descripcion: String
}


let lista: [Modelo] = [Modelo(emoji: "🐶", nombre: "Perro", descripcion: "Perro de pelaje corto"),
                       Modelo(emoji: "🐱", nombre: "Gato", descripcion: "Gato de pelaje corto"),
                       Modelo(emoji: "🐹", nombre: "Raton", descripcion: "Raton de pelaje corto"),
                       Modelo(emoji: "🐰", nombre: "Conejo", descripcion: "Conejo de pelaje corto")]
