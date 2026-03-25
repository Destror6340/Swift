//
//  PostViewModel.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 17/02/26.
//

import Foundation
import Combine

class PostViewModel: ObservableObject{
    
    // Variable publicada: cualquier cambio en 'authenticated' notificará a las vistas que observen este objeto
    @Published var authenticated = 0
    // Inicializador: apenas se crea la instancia, se llama a 'login' con credenciales de prueba
    init(){
        //login(username: "emilys", password: "emilyspass")
        //reqres(name: "Jane Doe", email: "jane@example.com", role: "admin")
        if let sesion = UserDefaults.standard.object(forKey: "Sesion") as? Int {
            authenticated = sesion
        }else{
            authenticated = 0
        }
    }
    
    func login(username: String, password: String) async {
        // 1. Construir la URL del endpoint
        guard let url = URL(string: "https://dummyjson.com/user/login") else { return }
        // 2. Crear parámetros del cuerpo de la petición
        let parametros = ["username": username, "password": password]
        // 3. Serializar a JSON
        let body = try! JSONSerialization.data(withJSONObject: parametros)
        // 4. Configurar la request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = body
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
            // 5. Ejecutar la petición con URLSession
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
            // 7. Decodificar la respuesta en tu modelo
            let datos = try JSONDecoder().decode(PostModel.self, from: data)
            // 8. Validar el token recibido
            if !datos.accessToken.isEmpty {
                //DispatchQueue.main.async {
                    self.authenticated = 1
                    UserDefaults.standard.setValue(1, forKey: "Sesion")
                //}
            }
        } catch let error as NSError {
            // 9. Manejo de error en la decodificación
            print("Error: \(error.localizedDescription)")
            self.authenticated = 2
        }
    }//.resume() // Importante: iniciar la tarea
}
   

