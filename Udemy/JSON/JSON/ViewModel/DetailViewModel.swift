//
//  DetailViewModel.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 20/02/26.
//

import Foundation
import Combine


class DetailViewModel: ObservableObject {
    
    //var index: Int
    @Published var usuario: Usuario?

    func fetch(id: Int) async {
        guard let url = URL(string: "https://dummyjson.com/users/\(id)") else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            print("\(data)")
            usuario = try JSONDecoder().decode(Usuario.self, from: data)
        } catch {
            print(error)
        }
    }
}
