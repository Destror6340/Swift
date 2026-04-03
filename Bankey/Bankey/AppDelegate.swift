//
//  AppDelegate.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 26/03/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // Referencia a la ventana principal de la app
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions lainchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool{
        // Obtiene la escena activa de la app. UIWindow necesita estar asociada a una UIWindowScene.
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            // Crea la ventana principal asociada a esa escena.
            window = UIWindow(windowScene: windowScene)
            // "key": la principal que recibe eventos (touch, teclado) "visible": que se muestre en pantalla
            window?.makeKeyAndVisible()
            window?.backgroundColor = .systemBackground
            // Define el primer ViewController que verá el usuario. Es la "pantalla inicial"
            window?.rootViewController = LoginViewController()
        }
        
        return true
        
    }



}

