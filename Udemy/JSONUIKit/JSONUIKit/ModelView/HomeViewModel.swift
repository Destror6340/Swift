//
//  HomeViewModel.swift
//  JSONUIKit
//
//  Created by Nestor Leon mendoza on 23/02/26.
//

import Foundation


/*class HomeViewModel {
    
    public static var shared = HomeViewModel()
    var datosUsuarios: Users?

    func fetch() async {
        guard let url = URL(string: "https://dummyjson.com/users") else { return }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            datosUsuarios = try JSONDecoder().decode(Users.self, from: data)
        } catch {
            print(error)
        }
    }
}*/

class HomeViewModel {

    var datosUsuarios: Users? {
        didSet {
            onDataUpdated?()
        }
    }

    var onDataUpdated: (() -> Void)?

    func fetch() {
        Task {
            guard let url = URL(string: "https://dummyjson.com/users") else { return }

            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let result = try JSONDecoder().decode(Users.self, from: data)

                DispatchQueue.main.async {
                    self.datosUsuarios = result
                }
            } catch {
                print(error)
            }
        }
    }

    var numberOfRows: Int {
        datosUsuarios?.users.count ?? 0
    }

    func user(at index: Int) -> User {
        datosUsuarios!.users[index]
    }
}
