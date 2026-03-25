//
//  Modelo1ViewModel.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 19/02/26.
//

import Foundation
import Combine

class Modelo1ViewModel: ObservableObject {
    
    @Published var datosModelo: Modelo1?
    
    /*init(){
        fetch()
    }*/
    
    /*func fetch (){
        guard let url = URL(string: "https://dummyjson.com/users") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            print(data)
            do{
                let json = try JSONDecoder().decode(Modelo1.self, from: data)
                DispatchQueue.main.async {
                    self.datosModelo = json
                }
                
            }catch let error as NSError{
                print("Error: \(error.localizedDescription)")
            }
        }.resume()
    }*/
    func fetch() async {
        guard let url = URL(string: "https://dummyjson.com/users") else { return }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            datosModelo = try JSONDecoder().decode(Modelo1.self, from: data)
        } catch {
            print(error)
        }
    }
}



