//
//  LoginViewModel.swift
//  JSONUIKit
//
//  Created by Nestor Leon mendoza on 23/02/26.
//

import Foundation

class LoginViewModel {
    
    static let shared = LoginViewModel()
    
    // Estado de autenticación: 0 = no autenticado, 1 = autenticado, 2 = error
    var authenticated: Int = 0 {
        didSet {
            // Cada vez que cambie, notificamos a la vista
            DispatchQueue.main.async {
                self.onAuthStateChanged?(self.authenticated)
            }
        }
    }
    
    // Closure para notificar cambios de estado
    var onAuthStateChanged: ((Int) -> Void)?
    
    init() {
        // Recuperar estado guardado en UserDefaults
        if let sesion = UserDefaults.standard.object(forKey: "Sesion") as? Int {
            authenticated = sesion
        } else {
            authenticated = 0
        }
    }
    
    func login(username: String, password: String) async {
        guard let url = URL(string: "https://dummyjson.com/user/login") else {
            return
        }
        
        let parametros = ["username": username, "password": password]
        let body = try! JSONSerialization.data(withJSONObject: parametros)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = body
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        print("login() llamado con:", username, password)
        
        do {
            print("Enviando solicitud")
            let (data, response) = try await URLSession.shared.data(for: request)
            print("RAW JSON:", String(data: data, encoding: .utf8) ?? "nil")
            let datos = try JSONDecoder().decode(Login.self, from: data)
            if !datos.accessToken.isEmpty {
                // Usuario autenticado
                DispatchQueue.main.async {
                    self.authenticated = 1
                    UserDefaults.standard.setValue(1, forKey: "Sesion")
                }
            }
        } catch {
            //Error en login
            DispatchQueue.main.async {
                self.authenticated = 2
            }
            print("Error: \(error.localizedDescription)")
        }
    }
}
